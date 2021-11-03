(define (domain neighbourhoods)
(:requirements :strips :typing :fluents :negative-preconditions :disjunctive-preconditions :durative-actions :conditional-effects :duration-inequalities :universal-preconditions :preferences )
(:types

 robot
 poi
 camera

)

(:predicates

     (at ?x - robot ?y - poi)
     (connected ?y ?z - poi)
     (visible ?w ?p - poi)
     (available ?r - robot)
     (hascamera ?r - robot ?c - camera)
     (parcel_delivered ?r - robot ?y - poi)
     (door_loc ?y - poi)

     (door_closed ?y - poi)
     (door_open ?y - poi)

     (is_house_connection ?y ?z - poi)
     (is_postoffice_connection ?y ?z - poi)
     (visited ?y - poi)
)


(:durative-action navigate-in-neighbourhood
    :parameters (?x - robot ?y  ?z - poi)
    :duration ( = ?duration 0.2)
    :condition (and
                (over all (visible ?y ?z))
                (over all (is_house_connection ?y ?z))
                (at start (available ?x))
                (at start (at ?x ?y))
		           )
    :effect (and
            (at start (not (at ?x ?y)))
            (at start (not (available ?x)))
            (at start (available ?x))
		        (at end (at ?x ?z))
            (at end (visited ?z))
            )
)

(:durative-action navigate-postoffice
    :parameters (?x - robot ?y  ?z - poi)
    :duration ( = ?duration 1)
    :condition (and
               (over all (visible ?y ?z))
               (over all (is_postoffice_connection ?y ?z))
               (at start (available ?x))
               (at start (at ?x ?y))
	       )
    :effect (and
            (at start (not (at ?x ?y)))
            (at start (not (available ?x)))
            (at start (available ?x))
            (at end (at ?x ?z))
            )
)

(:durative-action sense-door
   :parameters (?r - robot ?c - camera ?y - poi)
   :duration ( = ?duration 10)
   :condition (and
              (over all (at ?r ?y))
              (over all (door_loc ?y))
              (over all (hascamera ?r ?c))
              (at start (available ?r))
              )
    :effect (and (at start (not (available ?r)))
            (at end (available ?r))
            )
    :observe (and (at end (door_closed ?y)))
)

(:durative-action open-door
   :parameters (?r - robot  ?y - poi)
   :duration ( = ?duration 20)
   :condition (and
              (over all (at ?r ?y))
              (over all (door_loc ?y))
              (at start (available ?r))
              (at start (door_closed ?y))
              )
    :effect (and
            (at start (not (available ?r)))
            (at end (door_open ?y))
            (at end (not (door_closed ?y)))
            (at end (available ?r))
            )
)

(:durative-action deliver
   :parameters (?r - robot  ?y ?z - poi)
   :duration ( = ?duration 20)
   :condition (and
              (over all (at ?r ?z))
              (over all (connected ?y ?z))
              (over all (door_loc ?y))
              (at start (available ?r))
              (at start (door_open ?y))
              )
    :effect (and
            (at start (not (available ?r)))
            (at end (available ?r))
            (at end (parcel_delivered ?r ?z))
            )
)

)
