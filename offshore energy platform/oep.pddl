(define (domain offshore_energy_platform)
(:requirements :strips :typing :fluents :negative-preconditions :disjunctive-preconditions :durative-actions :conditional-effects :duration-inequalities :universal-preconditions )
(:types
  robot
  waypoint
  robot_sensor
  poi
)

(:predicates
            ; predicates related to problem specifications

            (path_option ?wpi  ?wpf - waypoint ?p - poi)
            (path_free ?wpi - waypoint ?p - poi)

            ; predicates related with general domain description

             (at ?r - robot ?wp - waypoint)
             (connected ?wpi ?wpf - waypoint)
             (available ?r - robot)
             (explored ?wp - waypoint)
             (recovered ?r - robot ?wp - waypoint)
             (turned ?r - robot ?wp - waypoint ?p - poi)
             (motor_inspected ?r - robot ?wp - waypoint)
             (area_inspected ?r - robot ?wp - waypoint)
             (camera_equipped ?r - robot ?s - robot_sensor)
             (motor_inspection_communicated ?r - robot ?wp - waypoint)
)

(:functions (consumption ?r - robot)
            (speed ?r - robot)
            (distance ?wpi ?wpf - waypoint)
            (distance_path ?wpi ?wpf - waypoint ?p - poi)
            (total_distance)
)

(:durative-action sense-path
 :parameters (?r - robot ?s - robot_sensor ?wpi - waypoint ?p - poi)
 :duration ( = ?duration 5)
 :condition (and
             (over all (at ?r ?wpi))
             (over all (turned ?r ?wpi ?p))
             (over all (camera_equipped ?r ?s))
             (at start (available ?r))
             )
  :effect (and
          (at start (not (available ?r)))
          (at end (available ?r))
          )
  :observe (and (path_free ?wpi ?p))
)

(:durative-action locate-camera
:parameters (?r - robot ?wp - waypoint ?p - poi)
:duration ( = ?duration 10)
:condition (and
           (over all (at ?r ?wp))
           (at start (available ?r))
           )
:effect (and
        (at start (not (available ?r)))
        (at end (available ?r))
        (at end (turned ?r ?wp ?p))
        )
)

(:durative-action navigation
:parameters (?r - robot ?wpi  ?wpf - waypoint ?p - poi)
:duration ( = ?duration (* (/ (distance_path ?wpi ?wpf ?p) (speed ?r)) 10))
:condition (and
           (over all (path_option ?wpi  ?wpf ?p))
           (over all (path_free ?wpi ?p))
           (at start (available ?r))
           (at start (at ?r ?wpi))
           )
:effect (and
        (at start (not (available ?r)))
        (at start (not (at ?r ?wpi)))
        (at end (at ?r ?wpf))
        (at end (explored ?wpf))
        (at end (available ?r))
        (at end (increase (total_distance) (distance ?wpi ?wpf)))
        )
)

(:durative-action inspect-motor
:parameters (?r - robot ?wp - waypoint)
:duration ( = ?duration 5)
:condition (and
           (over all (at ?r ?wp))
           (at start (available ?r))
           )
:effect (and
        (at start (not (available ?r)))
        (at end (available ?r))
        (at end (motor_inspected ?r ?wp))
        )
)

(:durative-action communicate-motor-inspection
:parameters (?r - robot ?wp - waypoint)
:duration ( = ?duration 5)
:condition (and
           (over all (at ?r ?wp))
           (over all (motor_inspected ?r ?wp))
           (at start (available ?r))
           )
:effect (and
        (at start (not (available ?r)))
        (at end (available ?r))
        (at end (motor_inspection_communicated ?r ?wp))
        )
)

(:durative-action inspect-area
:parameters (?r - robot ?wp - waypoint)
:duration ( = ?duration 15)
:condition (and
           (over all (at ?r ?wp))
           (at start (available ?r))
           )
:effect (and
        (at start (not (available ?r)))
        (at end (available ?r))
        (at end (area_inspected ?r ?wp))
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
