(define (problem task)
(:domain offshore_energy_platform)
(:objects
    husky0 - robot
    wpGF-0 wpGF-1 wpGF-2 wpGF-3 wpGF-4 wpGF-5 wpGF-6 wpGF-7 wpGF-8 wpGF-9 wpGF-10 wpGF-11 wpGF-12 wpGF-13 wpGF-14 wpGF-15 - waypoint

    pathGF-0-GF-0 pathGF-1-GF-1 pathGF-2-GF-2 pathGF-3-GF-3 pathGF-4-GF-4 pathGF-5-GF-5 pathGF-6-GF-6 pathGF-7-GF-7 pathGF-8-GF-8 pathGF-9-GF-9
    pathGF-10-GF-10 pathGF-11-GF-11 pathGF-12-GF-12 pathGF-13-GF-13 pathGF-14-GF-14 pathGF-15-GF-15
    pathGF-0-GF-1
    pathGF-1-GF-0 pathGF-1-GF-2
    pathGF-2-GF-1 pathGF-2-GF-3 pathGF-2-GF-15
    pathGF-3-GF-4
    pathGF-4-GF-5 pathGF-4-GF-6
    pathGF-5-GF-4
    pathGF-6-GF-7
    pathGF-7-GF-8
    pathGF-8-GF-9
    pathGF-9-GF-10
    pathGF-10-GF-11
    pathGF-11-GF-12
    pathGF-12-GF-13
    pathGF-13-GF-14
    pathGF-14-GF-13 pathGF-14-GF-15
    pathGF-15-GF-2 pathGF-15-GF-4 - poi

    camera0 - robot_sensor
)
(:init
    (at husky0 wpGF-0)

    (available husky0)

    (camera_equipped husky0 camera0)

    ; path definitions
    ; ground Floor

    (path_option wpGF-0 wpGF-0 pathGF-0-GF-0)
    (path_option wpGF-1 wpGF-1 pathGF-1-GF-1)
    (path_option wpGF-2 wpGF-2 pathGF-2-GF-2)
    (path_option wpGF-3 wpGF-3 pathGF-3-GF-3)
    (path_option wpGF-4 wpGF-4 pathGF-4-GF-4)
    (path_option wpGF-5 wpGF-5 pathGF-5-GF-5)
    (path_option wpGF-6 wpGF-6 pathGF-6-GF-6)
    (path_option wpGF-7 wpGF-7 pathGF-7-GF-7)
    (path_option wpGF-8 wpGF-8 pathGF-8-GF-8)
    (path_option wpGF-9 wpGF-9 pathGF-9-GF-9)

    (path_option wpGF-10 wpGF-10 pathGF-10-GF-10)
    (path_option wpGF-11 wpGF-11 pathGF-11-GF-11)
    (path_option wpGF-12 wpGF-12 pathGF-12-GF-12)
    (path_option wpGF-13 wpGF-13 pathGF-13-GF-13)
    (path_option wpGF-14 wpGF-14 pathGF-14-GF-14)
    (path_option wpGF-15 wpGF-15 pathGF-15-GF-15)

    (path_option wpGF-0 wpGF-1 pathGF-0-GF-1)
    (path_option wpGF-1 wpGF-0 pathGF-1-GF-0)
    (path_option wpGF-1 wpGF-2 pathGF-1-GF-2)
    (path_option wpGF-2 wpGF-1 pathGF-2-GF-1)
    (path_option wpGF-2 wpGF-3 pathGF-2-GF-3)
    (path_option wpGF-2 wpGF-15 pathGF-2-GF-15)
    (path_option wpGF-3 wpGF-4 pathGF-3-GF-4)
    (path_option wpGF-4 wpGF-5 pathGF-4-GF-5)
    (path_option wpGF-4 wpGF-6 pathGF-4-GF-6)
    (path_option wpGF-5 wpGF-4 pathGF-5-GF-4)
    (path_option wpGF-6 wpGF-7 pathGF-6-GF-7)
    (path_option wpGF-7 wpGF-8 pathGF-7-GF-8)
    (path_option wpGF-8 wpGF-9 pathGF-8-GF-9)
    (path_option wpGF-9 wpGF-10 pathGF-9-GF-10)
    (path_option wpGF-10 wpGF-11 pathGF-10-GF-11)
    (path_option wpGF-11 wpGF-12 pathGF-11-GF-12)
    (path_option wpGF-12 wpGF-13 pathGF-12-GF-13)
    (path_option wpGF-13 wpGF-14 pathGF-13-GF-14)
    (path_option wpGF-14 wpGF-13 pathGF-14-GF-13)
    (path_option wpGF-14 wpGF-15 pathGF-14-GF-15)
    (path_option wpGF-15 wpGF-2 pathGF-15-GF-2)
    (path_option wpGF-15 wpGF-4 pathGF-15-GF-4)



    (path_free wpGF-0 pathGF-0-GF-0)
    (path_free wpGF-1 pathGF-1-GF-1)
    (path_free wpGF-2 pathGF-2-GF-2)
    (path_free wpGF-3 pathGF-3-GF-3)
    (path_free wpGF-4 pathGF-4-GF-4)
    (path_free wpGF-5 pathGF-5-GF-5)
    (path_free wpGF-6 pathGF-6-GF-6)
    (path_free wpGF-7 pathGF-7-GF-7)
    (path_free wpGF-8 pathGF-8-GF-8)
    (path_free wpGF-9 pathGF-9-GF-9)

    (path_free wpGF-10 pathGF-10-GF-10)
    (path_free wpGF-11 pathGF-11-GF-11)
    (path_free wpGF-12 pathGF-12-GF-12)
    (path_free wpGF-13 pathGF-13-GF-13)
    (path_free wpGF-14 pathGF-14-GF-14)
    (path_free wpGF-15 pathGF-15-GF-15)

    (path_free wpGF-5 pathGF-5-GF-4)
    (path_free wpGF-6 pathGF-6-GF-7)
    (path_free wpGF-7 pathGF-7-GF-8)
    (path_free wpGF-8 pathGF-8-GF-9)
    (path_free wpGF-9 pathGF-9-GF-10)
    (path_free wpGF-10 pathGF-10-GF-11)
    (path_free wpGF-11 pathGF-11-GF-12)
    (path_free wpGF-12 pathGF-12-GF-13)
    (path_free wpGF-13 pathGF-13-GF-14)
    (path_free wpGF-3 pathGF-3-GF-4)
    (path_free wpGF-0 pathGF-0-GF-1)


    ; distance between all points

    (= (distance_path wpGF-0 wpGF-1 pathGF-0-GF-1) 1)
    (= (distance_path wpGF-1 wpGF-0 pathGF-1-GF-0) 1)
    (= (distance_path wpGF-1 wpGF-2 pathGF-1-GF-2) 2)
    (= (distance_path wpGF-2 wpGF-1 pathGF-2-GF-1) 2)
    (= (distance_path wpGF-2 wpGF-3 pathGF-2-GF-3) 8)
    (= (distance_path wpGF-2 wpGF-15 pathGF-2-GF-15) 5)
    (= (distance_path wpGF-3 wpGF-4 pathGF-3-GF-4) 5)
    (= (distance_path wpGF-4 wpGF-5 pathGF-4-GF-5) 1)
    (= (distance_path wpGF-4 wpGF-6 pathGF-4-GF-6) 5)
    (= (distance_path wpGF-5 wpGF-4 pathGF-5-GF-4) 1)
    (= (distance_path wpGF-6 wpGF-7 pathGF-6-GF-7) 8)
    (= (distance_path wpGF-7 wpGF-8 pathGF-7-GF-8) 1)
    (= (distance_path wpGF-8 wpGF-9 pathGF-8-GF-9) 1)
    (= (distance_path wpGF-9 wpGF-10 pathGF-9-GF-10) 1)
    (= (distance_path wpGF-10 wpGF-11 pathGF-10-GF-11) 1)
    (= (distance_path wpGF-11 wpGF-12 pathGF-11-GF-12) 4)
    (= (distance_path wpGF-12 wpGF-13 pathGF-12-GF-13) 6)
    (= (distance_path wpGF-13 wpGF-14 pathGF-13-GF-14) 8)
    (= (distance_path wpGF-14 wpGF-13 pathGF-14-GF-13) 8)
    (= (distance_path wpGF-14 wpGF-15 pathGF-14-GF-15) 1)
    (= (distance_path wpGF-15 wpGF-2 pathGF-15-GF-2) 5)
    (= (distance_path wpGF-15 wpGF-4 pathGF-15-GF-4) 8)



    (= (consumption husky0) 0.01)

    (= (speed husky0) 0.5)

    (= (total_distance) 0)


)


(:unknown-prop

  (path_free wpGF-1 pathGF-1-GF-0)
  (path_free wpGF-1 pathGF-1-GF-2)
  (path_free wpGF-2 pathGF-2-GF-1)
  (path_free wpGF-2 pathGF-2-GF-3)
  (path_free wpGF-2 pathGF-2-GF-15)
  (path_free wpGF-4 pathGF-4-GF-5)
  (path_free wpGF-4 pathGF-4-GF-6)
  (path_free wpGF-14 pathGF-14-GF-13)
  (path_free wpGF-14 pathGF-14-GF-15)
  (path_free wpGF-15 pathGF-15-GF-14)
  (path_free wpGF-15 pathGF-15-GF-2)
  (path_free wpGF-15 pathGF-15-GF-4)
)
(:knowledge-updates

  (oneof (path_free wpGF-1 pathGF-1-GF-0) (not (path_free wpGF-1 pathGF-1-GF-0)) )
  (oneof (path_free wpGF-1 pathGF-1-GF-2) (not (path_free wpGF-1 pathGF-1-GF-2)) )
  (oneof (path_free wpGF-2 pathGF-2-GF-1) (not (path_free wpGF-2 pathGF-2-GF-1)) )
  (oneof (path_free wpGF-2 pathGF-2-GF-3) (not (path_free wpGF-2 pathGF-2-GF-3)) )
  (oneof (path_free wpGF-2 pathGF-2-GF-15) (not (path_free wpGF-2 pathGF-2-GF-15)) )
  (oneof (path_free wpGF-4 pathGF-4-GF-5) (not (path_free wpGF-4 pathGF-4-GF-5)) )
  (oneof (path_free wpGF-4 pathGF-4-GF-6) (not (path_free wpGF-4 pathGF-4-GF-6)) )
  (oneof (path_free wpGF-14 pathGF-14-GF-13) (not (path_free wpGF-14 pathGF-14-GF-13)) )
  (oneof (path_free wpGF-14 pathGF-14-GF-15) (not (path_free wpGF-14 pathGF-14-GF-15)) )
  (oneof (path_free wpGF-15 pathGF-15-GF-14) (not (path_free wpGF-15 pathGF-15-GF-14)) )
  (oneof (path_free wpGF-15 pathGF-15-GF-2) (not (path_free wpGF-15 pathGF-15-GF-2)) )
  (oneof (path_free wpGF-15 pathGF-15-GF-4) (not (path_free wpGF-15 pathGF-15-GF-4)) )
)

(:goal (and

   (motor_inspected husky0 wpGF-5)
   (area_inspected husky0 wpGF-6)
   (motor_inspected husky0 wpGF-14)
   (motor_inspected husky0 wpGF-15)
   (motor_inspection_communicated husky0 wpGF-5)

))
(:metric minimize (total-time))
;(:metric maximize (total-time))
)
