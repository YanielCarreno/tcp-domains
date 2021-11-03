(define (domain underwater_structure)
(:requirements :strips :typing :fluents :disjunctive-preconditions :durative-actions :timed-initial-literals)
(:types
  robot
  waypoint
  robot_sensor
  robot_actuator
  poi
)

(:predicates (robot_at  ?r - robot ?wp - waypoint)
             (available ?r - robot)

             (camera_equipped      ?r - robot ?s - robot_sensor)
             (manipulator_equipped ?r - robot ?a - robot_actuator)
             (cleaner_equipped ?r - robot ?a - robot_actuator)

             (valve_closed       ?p - poi)
             (bla_cleaned        ?p - poi)

             (explored           ?wp - waypoint)
             (recharged          ?r - robot)
             (recovered          ?r - robot  ?wp - waypoint)

             (valve_at           ?p - poi  ?wp - waypoint)
             (structure_at       ?p - poi  ?wp - waypoint)

             (docking_point      ?r - robot  ?wp - waypoint)

             (refuel_deliverable ?r - robot  ?wp - waypoint)

             (state_on ?p - poi)

             (is_valve ?p - poi)
             (is_structure ?p - poi)

             (low_visibility ?p - poi)
             (strong_current ?p - poi)
             (structure_located ?p - poi)
)

(:functions (consumption ?r - robot)
            (speed       ?r - robot)
            (energy      ?r - robot)
            (distance    ?wpi ?wpf - waypoint)

            (data_adquired  ?r - robot)
            (data_capacity  ?r - robot)
            (recharge_rate  ?r - robot)
            (total_distance)
)

(:durative-action sense-structure
 :parameters (?r - robot ?s - robot_sensor ?st - poi ?wp - waypoint)
 :duration ( = ?duration 5)
 :condition (and
             (over all (robot_at ?r ?wp))
             (over all (structure_at ?st  ?wp))
             (over all (is_structure ?st))
             (over all (camera_equipped ?r ?s))
             (at start (available ?r))
             )
  :effect (and
          (at start (not (available ?r)))
          (at end   (available ?r))
          (at end   (decrease (energy ?r) (* (energy ?r) 0.01)))
          )
  :observe (and (at end (low_visibility ?st))
                (at end (strong_current ?st))
                (at end (structure_located ?st))
                )
)


(:durative-action increase-light
 :parameters (?r - robot  ?st - poi ?wp - waypoint)
 :duration (= ?duration 2)
 :condition (and
            (over all (structure_at ?st  ?wp))
            (over all (is_structure ?st))
            (over all (robot_at ?r ?wp))
            (at start (low_visibility ?st))
            (at start (available ?r))
            )
 :effect (and
         (at start (not (available ?r)))
         (at end   (available ?r))
         (at end   (structure_located ?st))
         (at end   (decrease (energy ?r) (* (energy ?r) 0.05)))
         )
)

(:durative-action relocalisation
 :parameters (?r - robot  ?st - poi ?wp - waypoint)
 :duration (= ?duration 10)
 :condition (and
            (over all (structure_at ?st  ?wp))
            (over all (is_structure ?st))
            (over all (robot_at ?r ?wp))
            (at start (strong_current ?st))
            (at start (available ?r))
            )
 :effect (and
         (at start (not (available ?r)))
         (at end   (available ?r))
         (at end   (structure_located ?st))
         (at end   (decrease (energy ?r) (* (energy ?r) 0.1)))
         )
)

(:durative-action sense-valve
 :parameters (?r - robot ?s - robot_sensor ?v ?st - poi ?wp - waypoint)
 :duration ( = ?duration 5)
 :condition (and
             (over all (robot_at ?r ?wp))
             (over all (valve_at ?v  ?wp))
             (over all (is_valve ?v))
             (over all (camera_equipped ?r ?s))
             (at start (structure_located ?st))
             (at start (< (data_adquired ?r) (data_capacity ?r)))
             (at start (available ?r))
             )
  :effect (and
          (at start (not (available ?r)))
          (at end   (available ?r))
          (at end   (decrease (energy ?r) (* (energy ?r) 0.01)))
          )
  :observe (and (at end (state_on ?v)))
)

(:durative-action close-valve
 :parameters (?r - robot  ?a - robot_actuator ?v ?st - poi ?wp - waypoint)
 :duration (= ?duration 15)
 :condition (and
            (over all (valve_at ?v  ?wp))
            (over all (manipulator_equipped ?r  ?a))
            (over all (is_valve ?v))
            (over all (robot_at ?r ?wp))
            (at start (state_on ?v))
            (at start (structure_located ?st))
            (at start (available ?r))
            )
 :effect (and
         (at start (not (available ?r)))
         (at end   (available ?r))
         (at end   (not (state_on ?v)))
         (at end   (valve_closed ?v))
         (at end   (decrease (energy ?r) (* (energy ?r) 0.05)))
         )
)

(:durative-action navigation
:parameters (?r - robot ?wpi  ?wpf - waypoint)
:duration ( = ?duration (* (/ (distance ?wpi ?wpf) (speed ?r)) 1.8))
:condition (and
           (at start (available ?r))
           (at start (robot_at ?r ?wpi))
           (at start (>= (energy ?r) (* (distance ?wpi ?wpf)(consumption ?r))))
           )
:effect (and
        (at start (not (available ?r)))
        (at start (not (robot_at ?r ?wpi)))
        (at end   (decrease (energy ?r) (* (distance ?wpi ?wpf)(consumption ?r))))
        (at end   (robot_at ?r ?wpf))
        (at end   (explored ?wpf))
        (at end   (available ?r))
        (at end   (increase (total_distance) (distance ?wpi ?wpf)))
        )
)

(:durative-action broadcast-data
:parameters (?r - robot   ?wp - waypoint)
:duration (= ?duration 20)
:condition (and
           (over all (robot_at ?r ?wp))
           (at start (docking_point ?r ?wp))
           (at start (available ?r))
           (at start (>= (data_adquired ?r) (data_capacity ?r)))
           )
:effect (and
        (at start (not (available ?r)))
        (at end   (available ?r))
        (at end   (assign (data_adquired ?r) 0))
        (at end   (decrease (energy ?r) (* (energy ?r) 0.05)))
	      )
)

(:durative-action recharge-battery
:parameters (?r - robot  ?wp - waypoint)
:duration (= ?duration (/ (- 100 (energy ?r)) (recharge_rate ?r)))
:condition (and
           (over all (robot_at ?r ?wp))
           (over all (docking_point ?r ?wp))
           (at start (refuel_deliverable ?r ?wp))
           (at start (available ?r))
           (at start (<= (energy ?r) 60))
           )
:effect (and
        (at start (not (available ?r)))
        (at end   (available ?r))
        (at end   (recharged ?r))
        (at end   (assign (energy ?r) 100))
        )
)

(:durative-action recover-robot
:parameters (?r - robot  ?wp - waypoint)
:duration (= ?duration 1)
:condition (and
           (over all (robot_at ?r ?wp))
           (at start (available ?r))
           )
:effect (and
        (at start (not (available ?r)))
        (at end   (not (available ?r)))
        (at end   (recovered ?r ?wp))
        )
)
)
