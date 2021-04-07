(define (domain valve-manipulation)
(:requirements :strips :typing :fluents :negative-preconditions :disjunctive-preconditions :durative-actions :conditional-effects :duration-inequalities :universal-preconditions :timed-initial-literals)
(:types
  robot
  wpoint
  robot-sensor
  robot-actuator
  poi
)


(:predicates (at ?r - robot ?wp - wpoint)

             (available ?r - robot)

             (state-on ?v - poi)

             (camera-equipped ?r - robot ?s - robot-sensor)

             (dvl-equipped    ?r - robot ?s - robot-sensor)

             (sonar-equipped  ?r - robot ?s - robot-sensor)

             (arm-equipped  ?r - robot ?a - robot-actuator)

             (robot_approached ?r - robot ?wp - wpoint)
             (surface_point_at ?r - robot ?wp - wpoint)
             (valve_at ?v - poi ?wp - wpoint)
             (valve_closed ?wp - wpoint)
             (explored     ?wp - wpoint)
             (recovered ?r - robot ?wp - wpoint)
             (recharged ?r -robot)

             (refuel-derivable ?r - robot ?sp - wpoint)

             ; this predicate is used to diferenciate the poi flow from another we want to establish in the domain
             (is_valve ?v - poi)
)

(:functions (consumption ?r - robot)
            (speed ?r - robot)
            (energy ?r - robot)
            (distance ?wpi ?wpf - wpoint)

            (data_adquired ?r - robot)
            (data_capacity ?r - robot)
            (total-distance)
            (recharge_rate ?r - robot)
)

(:durative-action navigation
:parameters (?r - robot ?wpi  ?wpf - wpoint)
:duration ( = ?duration (* (/ (distance ?wpi ?wpf) (speed ?r)) 1))
:condition (and
           (at start (available ?r))
           (at start (at ?r ?wpi))
           (at start (>= (energy ?r) (* (distance ?wpi ?wpf)(consumption ?r))))
           )
:effect (and
        (at start (not (available ?r)))
        (at start (not (at ?r ?wpi)))
        (at end (at ?r ?wpf))
        (at end (explored ?wpf))
        (at end (available ?r))
        (at end (decrease (energy ?r) (* (distance ?wpi ?wpf)(consumption ?r))))
        (at end (increase (total-distance) (distance ?wpi ?wpf)))
        )
)

(:durative-action target_approach
  :parameters (?r - robot  ?wp - wpoint)
  :duration ( = ?duration 15)
  :condition (and
             (over all (at ?r ?wp))
             (at start (available ?r))
             (at start (>= (energy ?r) 15))
             )
  :effect (and
          (at start (not (available ?r)))
          (at end (robot_approached ?r ?wp))
          (at end (decrease (energy ?r) (* ?duration (consumption ?r))))
          (at end (available ?r))
          )
)

(:durative-action sense_valve
 :parameters (?r - robot ?s - robot-sensor ?v - poi ?wp - wpoint)
 :duration ( = ?duration 50)
 :condition (and
             (over all (at ?r ?wp))
             (over all (valve_at ?v  ?wp))
             (over all (is_valve ?v))
             (over all (camera-equipped ?r ?s))
             (at start (< (data_adquired ?r) (data_capacity ?r)))
             (at start (available ?r))
             (at start (robot_approached ?r ?wp))
             )
  :effect (and (at start (not (available ?r)))
          (at end (decrease (energy ?r) (* ?duration (consumption ?r))))
          (at end (K+ (state-on ?v)))
          (at end (available ?r))
          )
)

(:durative-action close_bop
:parameters (?r - robot  ?a - robot-actuator ?v - poi ?wp - wpoint)
:duration (= ?duration 15)
:condition (and
           (over all (valve_at ?v  ?wp))
           (over all (arm-equipped ?r  ?a))
           (over all (at ?r ?wp))
           (over all (is_valve ?v))
           (at start (state-on ?v))
           (at start (available ?r))
           (at start (robot_approached ?r ?wp))
           )
:effect (and
        (at start (not (available ?r)))
        (at end (assign (data_adquired ?r) 1))
        (at end (decrease (energy ?r) (* ?duration (consumption ?r))))
        (at end (available ?r))
        (at end (valve_closed ?wp))
  )
)

(:durative-action broadcast_data
:parameters (?r - robot   ?wp - wpoint)
:duration (= ?duration 20)
:condition (and
           (over all (at ?r ?wp))
           (over all (surface_point_at ?r ?wp))
           (at start (available ?r))
           (at start (>= (data_adquired ?r) (data_capacity ?r)))
           )
:effect (and
        (at start (not (available ?r)))
        (at end (decrease (energy ?r) (* ?duration (consumption ?r))))
        (at end (available ?r))
        (at end (assign (data_adquired ?r) 0))
	      )
)

(:durative-action refuel-auv
:parameters (?r - robot  ?sp - wpoint)
:duration (= ?duration (/ (- 80 (energy ?r)) (recharge_rate ?r)))
:condition (and
           (over all (surface_point_at ?r ?sp))
           (over all (at ?r ?sp))
           (over all (refuel-derivable ?r ?sp))
           (at start (available ?r))
           (at start (<= (energy ?r) 80))
           )
:effect (and
        (at start (not (available ?r)))
        (at end (available ?r))
        (at end (recharged ?r))
        (at end (increase (energy ?r) (* ?duration (recharge_rate ?r))))
        )
)

(:durative-action recover
:parameters (?r - robot  ?wp - wpoint)
:duration (= ?duration 1)
:condition (and
           (over all (at ?r ?wp))
           (at start (available ?r))
           )
:effect (and
        (at start (not (available ?r)))
        (at end   (not (available ?r)))
        (at end   (recovered ?r ?wp))
        )
)

)
