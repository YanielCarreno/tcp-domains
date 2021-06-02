(define (domain manufacturing-plant)
(:requirements :strips :typing :fluents :negative-preconditions :timed-initial-literals :disjunctive-preconditions :durative-actions :conditional-effects :duration-inequalities :universal-preconditions )
(:types
  robot
  waypoint
  robot_sensor
  robot_actuator
  valve
  poi
)

(:constants f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 - poi)

(:predicates (at ?r - robot ?wp - waypoint)
             (available ?r - robot)
             (camera_equipped ?r - robot ?s - robot_sensor)
             (arm_equipped ?r - robot ?a - robot_actuator)

             (robot_approached ?r - robot ?wp - waypoint)
             (valve_at ?v - valve ?wp - waypoint)
             (flow_val ?v - valve ?t - poi)
             (recharge_point ?r -robot ?wp - waypoint)
             (recharged ?r - robot)
             (recovered ?r - robot ?wp - waypoint)
             (arm_positioned ?a - robot_actuator ?wp - waypoint)
             (valve_regulated ?wp - waypoint)
             (explored ?wp - waypoint)

             ; this predicate is used to diferenciate the poi flow from another we want to establish in the domain
             (is_flow ?t - poi)
)

(:functions (consumption ?r - robot)
            (speed ?r - robot)
            (energy ?r - robot)
            (distance ?wpi ?wpf - waypoint)
            (total_distance)
            (recharge_rate ?r - robot)

)

(:durative-action navigation
:parameters (?r - robot ?wpi  ?wpf - waypoint)
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
        (at end (increase (total_distance) (distance ?wpi ?wpf)))
        )
)
(:durative-action target-approach
  :parameters (?r - robot  ?wp - waypoint)
  :duration ( = ?duration 10)
  :condition (and
             (over all (at ?r ?wp))
             (at start (available ?r))
             (at start (>= (energy ?r) 10))
             )
  :effect (and
          (at start (not (available ?r)))
          (at end (robot_approached ?r ?wp))
          (at end (decrease (energy ?r) (* ?duration (consumption ?r))))
          (at end (available ?r))
          )
)

(:durative-action sense-flow
 :parameters (?r - robot ?s - robot_sensor ?v - valve ?wp - waypoint)
 :duration ( = ?duration 5)
 :condition (and
             (over all (at ?r ?wp))
             (over all (valve_at ?v  ?wp))
             (over all (camera_equipped ?r ?s))
             (at start (available ?r))
             (at start (robot_approached ?r ?wp))
             )
  :effect (and  (at start (not (available ?r)))
                (at end (available ?r))
                (at end (decrease (energy ?r) (* ?duration (consumption ?r))))
                (at end (K+ (flow_val ?v f1)))
                (at end (K+ (flow_val ?v f2)))
                (at end (K+ (flow_val ?v f3)))
                (at end (K+ (flow_val ?v f4)))
                (at end (K+ (flow_val ?v f5)))
                (at end (K+ (flow_val ?v f6)))
                (at end (K+ (flow_val ?v f7)))
                (at end (K+ (flow_val ?v f8)))
          )
)

(:durative-action position-arm
 :parameters (?r - robot ?v - valve ?wp - waypoint ?a - robot_actuator)
 :duration ( = ?duration 10)
 :condition (and
             (over all (at ?r ?wp))
             (over all (valve_at ?v  ?wp))
             (over all (arm_equipped ?r  ?a))
             (at start (robot_approached ?r ?wp))
             )
  :effect (and
             (at end (decrease (energy ?r) (* ?duration (consumption ?r))))
             (at end (arm_positioned ?a ?wp))
          )
)

(:durative-action regulate-bop
:parameters (?r - robot  ?a - robot_actuator ?v - valve ?wp - waypoint ?f - poi)
:duration (= ?duration 15)
:condition (and
           (over all (valve_at ?v  ?wp))
           (over all (arm_equipped ?r  ?a))
           (over all (at ?r ?wp))
           (at start (available ?r))
           (at start (robot_approached ?r ?wp))
           (at start (flow_val ?v ?f))
           (at start (arm_positioned ?a ?wp))
           )
:effect (and
        (at start (not (available ?r)))
        (at end (available ?r))
        (at end (decrease (energy ?r) (* ?duration (consumption ?r))))
        (at end (valve_regulated ?wp))
        )
)

(:durative-action refuel
:parameters (?r - robot  ?wp - waypoint)
:duration (= ?duration (/ (- 50 (energy ?r)) (recharge_rate ?r)))
:condition (and
           (over all (at ?r ?wp))
           (over all (recharge_point ?r ?wp))
           (at start (available ?r))
           (at start (<= (energy ?r) 50))
           )
:effect (and
        (at start (not (available ?r)))
        (at end (available ?r))
        (at end (recharged ?r))
        (at end (increase (energy ?r) (* ?duration (recharge_rate ?r))))
        )
)

(:durative-action recover
:parameters (?r - robot  ?wp - waypoint)
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
