(define (problem task)
(:domain offshore energy platform)
(:objects
    husky0 - robot
    wpGF-0 wpGF-1 wpGF-2 wpGF-3 wpGF-4 wpGF-5 wpGF-6 wpGF-7 wpGF-8 wpGF-9 wpGF-10 wpGF-11 wpGF-12 wpGF-13 wpGF-14 wpGF-15
    wpT1F1-1 wpT1F1-2 wpT1F1-3 wpT1F1-4 wpT1F1-5
    wpT1F2-1 wpT1F2-2 wpT1F2-3 wpT1F2-4 wpT1F2-5
    wpT1F3-1 wpT1F3-2 wpT1F3-3 wpT1F3-4 wpT1F3-5
    wpT2F1-1 wpT2F1-2 wpT2F1-3 wpT2F1-4 wpT2F1-5
    wpT2F2-1 wpT2F2-2 wpT2F2-3 wpT2F2-4 wpT2F2-5
    wpT2F3-1 wpT2F3-2 wpT2F3-3 wpT2F3-4 wpT2F3-5
    wpT3F1-1 wpT3F1-2 wpT3F1-3 wpT3F1-4 wpT3F1-5
    wpT3F2-1 wpT3F2-2 wpT3F2-3 wpT3F2-4 wpT3F2-5
    wpT3F3-1 wpT3F3-2 wpT3F3-3 wpT3F3-4 wpT3F3-5
    wpT4F1-1 wpT4F1-2 wpT4F1-3 wpT4F1-4 wpT4F1-5
    wpT4F2-1 wpT4F2-2 wpT4F2-3 wpT4F2-4 wpT4F2-5
    wpT4F3-1 wpT4F3-2 wpT4F3-3 wpT4F3-4 wpT4F3-5 - waypoint

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
    pathGF-15-GF-2 pathGF-15-GF-4
    pathGF-2-T1F1-1 pathGF-3-T2F1-1 pathGF-13-T4F1-1 pathGF-15-T3F1-1
    pathT1F1-1-GF-2 pathT1F1-1-T1F1-2 pathT1F1-2-T1F1-1 pathT1F1-2-T1F1-3 pathT1F1-3-T1F1-2 pathT1F1-3-T1F1-4 pathT1F1-4-T1F1-3 pathT1F1-4-T1F1-5
    pathT1F1-5-T1F1-4 pathT1F1-5-T1F2-1 pathT1F2-1-T1F1-5 pathT1F2-1-T1F2-2 pathT1F2-2-T1F2-1 pathT1F2-2-T1F2-3 pathT1F2-3-T1F2-2 pathT1F2-3-T1F2-4
    pathT1F2-4-T1F2-3 pathT1F2-4-T1F2-5 pathT1F2-5-T1F2-4 pathT1F2-5-T1F3-1 pathT1F3-1-T1F2-5 pathT1F3-1-T1F3-2 pathT1F3-2-T1F3-1 pathT1F3-2-T1F3-3
    pathT1F3-3-T1F3-2 pathT1F3-3-T1F3-4 pathT1F3-4-T1F3-3 pathT1F3-4-T1F3-5 pathT1F3-5-T1F3-4
    pathT2F1-1-GF-3 pathT2F1-1-T2F1-2 pathT2F1-2-T2F1-1 pathT2F1-2-T2F1-3 pathT2F1-3-T2F1-2 pathT2F1-3-T2F1-4 pathT2F1-4-T2F1-3 pathT2F1-4-T2F1-5
    pathT2F1-5-T2F1-4 pathT2F1-5-T2F1-1 pathT2F2-1-T2F2-5 pathT2F2-1-T2F2-2 pathT2F2-2-T2F2-1 pathT2F2-2-T2F2-3 pathT2F2-3-T2F2-2 pathT2F2-3-T2F2-4
    pathT2F2-4-T2F2-3 pathT2F2-4-T2F2-5 pathT2F2-5-T2F2-4 pathT2F2-5-T2F3-1 pathT2F3-1-T2F2-5 pathT2F3-1-T2F3-2 pathT2F3-2-T2F3-1 pathT2F3-2-T2F3-3
    pathT2F3-3-T2F3-2 pathT2F3-3-T2F3-4 pathT2F3-4-T2F3-3 pathT2F3-4-T2F3-5 pathT2F3-5-T2F3-4
    pathT3F1-1-GF-15  pathT3F1-1-T3F1-2 pathT3F1-2-T3F1-1 pathT3F1-2-T3F1-3 pathT3F1-3-T3F1-2 pathT3F1-3-T3F1-4 pathT3F1-4-T3F1-3 pathT3F1-4-T3F1-5
    pathT3F1-5-T3F1-4 pathT3F1-5-T3F2-1 pathT3F2-1-T3F1-5 pathT3F2-1-T3F2-2 pathT3F2-2-T3F2-1 pathT3F2-2-T3F2-3 pathT3F2-3-T3F2-2 pathT3F2-3-T3F2-4
    pathT3F2-4-T3F2-3 pathT3F2-4-T3F2-5 pathT3F2-5-T3F2-4 pathT3F2-5-T3F3-1 pathT3F3-1-T3F2-5 pathT3F3-1-T3F3-2 pathT3F3-2-T3F3-1 pathT3F3-2-T3F3-3
    pathT3F3-3-T3F3-2 pathT3F3-3-T3F3-4 pathT3F3-4-T3F3-3 pathT3F3-4-T3F3-5 pathT3F3-5-T3F3-4
    pathT4F1-1-GF-13  pathT4F1-1-T4F1-2 pathT4F1-2-T4F1-1 pathT4F1-2-T4F1-3 pathT4F1-3-T4F1-2 pathT4F1-3-T4F1-4 pathT4F1-4-T4F1-3 pathT4F1-4-T4F1-5
    pathT4F1-5-T4F1-4 pathT4F1-5-T4F2-1 pathT4F2-1-T4F1-5 pathT4F2-1-T4F2-2 pathT4F2-2-T4F2-1 pathT4F2-2-T4F2-3 pathT4F2-3-T4F2-2 pathT4F2-3-T4F2-4
    pathT4F2-4-T4F2-3 pathT4F2-4-T4F2-5 pathT4F2-5-T4F2-4 pathT4F2-5-T4F3-1 pathT4F3-1-T4F2-5 pathT4F3-1-T4F3-2 pathT4F3-2-T4F3-1 pathT4F3-2-T4F3-3
    pathT4F3-3-T4F3-2 pathT4F3-3-T4F3-4 pathT4F3-4-T4F3-3 pathT4F3-4-T4F3-5 pathT4F3-5-T4F3-4 - poi

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

    (path_option wpGF-2 wpT1F1-1 pathGF-2-T1F1-1)
    (path_option wpGF-3 wpT2F1-1 pathGF-3-T2F1-1)
    (path_option wpGF-13 wpT4F1-1 pathGF-13-T4F1-1)
    (path_option wpGF-15 wpT3F1-1 pathGF-15-T3F1-1)
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

    ; tower-1 floor-1

    (path_option wpT1F1-1 wpGF-2 pathT1F1-1-GF-2)
    (path_option wpT1F1-1 wpT1F1-2 pathT1F1-1-T1F1-2)
    (path_option wpT1F1-2 wpT1F1-1 pathT1F1-2-T1F1-1)
    (path_option wpT1F1-2 wpT1F1-3 pathT1F1-2-T1F1-3)
    (path_option wpT1F1-3 wpT1F1-2 pathT1F1-3-T1F1-2)
    (path_option wpT1F1-3 wpT1F1-4 pathT1F1-3-T1F1-4)
    (path_option wpT1F1-4 wpT1F1-3 pathT1F1-4-T1F1-3)
    (path_option wpT1F1-4 wpT1F1-5 pathT1F1-4-T1F1-5)
    (path_option wpT1F1-5 wpT1F1-4 pathT1F1-5-T1F1-4)
    (path_option wpT1F1-5 wpT1F2-1 pathT1F1-5-T1F2-1)

    ; tower-1 floor-2

    (path_option wpT1F2-1 wpT1F1-5 pathT1F2-1-T1F1-5)
    (path_option wpT1F2-1 wpT1F2-2 pathT1F2-1-T1F2-2)
    (path_option wpT1F2-2 wpT1F2-1 pathT1F2-2-T1F2-1)
    (path_option wpT1F2-2 wpT1F2-3 pathT1F2-2-T1F2-3)
    (path_option wpT1F2-3 wpT1F2-2 pathT1F2-3-T1F2-2)
    (path_option wpT1F2-3 wpT1F2-4 pathT1F2-3-T1F2-4)
    (path_option wpT1F2-4 wpT1F2-3 pathT1F2-4-T1F2-3)
    (path_option wpT1F2-4 wpT1F2-5 pathT1F2-4-T1F2-5)
    (path_option wpT1F2-5 wpT1F2-4 pathT1F2-5-T1F2-4)
    (path_option wpT1F2-5 wpT1F3-1 pathT1F2-5-T1F3-1)

    ; tower-1 floor-3

    (path_option wpT1F3-1 wpT1F2-5 pathT1F3-1-T1F2-5)
    (path_option wpT1F3-1 wpT1F3-2 pathT1F3-1-T1F3-2)
    (path_option wpT1F3-2 wpT1F3-1 pathT1F3-2-T1F3-1)
    (path_option wpT1F3-2 wpT1F3-3 pathT1F3-2-T1F3-3)
    (path_option wpT1F3-3 wpT1F3-2 pathT1F3-3-T1F3-2)
    (path_option wpT1F3-3 wpT1F3-4 pathT1F3-3-T1F3-4)
    (path_option wpT1F3-4 wpT1F3-3 pathT1F3-4-T1F3-3)
    (path_option wpT1F3-4 wpT1F3-5 pathT1F3-4-T1F3-5)
    (path_option wpT1F3-5 wpT1F3-4 pathT1F3-5-T1F3-4)

    ; tower-2 floor-1

    (path_option wpT2F1-1 wpGF-3 pathT2F1-1-GF-3)
    (path_option wpT2F1-1 wpT2F1-2 pathT2F1-1-T2F1-2)
    (path_option wpT2F1-2 wpT2F1-1 pathT2F1-2-T2F1-1)
    (path_option wpT2F1-2 wpT2F1-3 pathT2F1-2-T2F1-3)
    (path_option wpT2F1-3 wpT2F1-2 pathT2F1-3-T2F1-2)
    (path_option wpT2F1-3 wpT2F1-4 pathT2F1-3-T2F1-4)
    (path_option wpT2F1-4 wpT2F1-3 pathT2F1-4-T2F1-3)
    (path_option wpT2F1-4 wpT2F1-5 pathT2F1-4-T2F1-5)
    (path_option wpT2F1-5 wpT2F1-4 pathT2F1-5-T2F1-4)
    (path_option wpT2F1-5 wpT2F2-1 pathT2F1-5-T2F1-1)

    ; tower-2 floor-2

    (path_option wpT2F2-1 wpT2F1-5 pathT2F2-1-T2F2-5)
    (path_option wpT2F2-1 wpT2F2-2 pathT2F2-1-T2F2-2)
    (path_option wpT2F2-2 wpT2F2-1 pathT2F2-2-T2F2-1)
    (path_option wpT2F2-2 wpT2F2-3 pathT2F2-2-T2F2-3)
    (path_option wpT2F2-3 wpT2F2-2 pathT2F2-3-T2F2-2)
    (path_option wpT2F2-3 wpT2F2-4 pathT2F2-3-T2F2-4)
    (path_option wpT2F2-4 wpT2F2-3 pathT2F2-4-T2F2-3)
    (path_option wpT2F2-4 wpT2F2-5 pathT2F2-4-T2F2-5)
    (path_option wpT2F2-5 wpT2F2-4 pathT2F2-5-T2F2-4)
    (path_option wpT2F2-5 wpT2F3-1 pathT2F2-5-T2F3-1)

    ; tower-2 floor-3

    (path_option wpT2F3-1 wpT2F2-5 pathT2F3-1-T2F2-5)
    (path_option wpT2F3-1 wpT2F3-2 pathT2F3-1-T2F3-2)
    (path_option wpT2F3-2 wpT2F3-1 pathT2F3-2-T2F3-1)
    (path_option wpT2F3-2 wpT2F3-3 pathT2F3-2-T2F3-3)
    (path_option wpT2F3-3 wpT2F3-2 pathT2F3-3-T2F3-2)
    (path_option wpT2F3-3 wpT2F3-4 pathT2F3-3-T2F3-4)
    (path_option wpT2F3-4 wpT2F3-3 pathT2F3-4-T2F3-3)
    (path_option wpT2F3-4 wpT2F3-5 pathT2F3-4-T2F3-5)
    (path_option wpT2F3-5 wpT2F3-4 pathT2F3-5-T2F3-4)

    ; tower-3 floor-1

    (path_option wpT3F1-1 wpGF-15 pathT3F1-1-GF-15)
    (path_option wpT3F1-1 wpT3F1-2 pathT3F1-1-T3F1-2)
    (path_option wpT3F1-2 wpT3F1-1 pathT3F1-2-T3F1-1)
    (path_option wpT3F1-2 wpT3F1-3 pathT3F1-2-T3F1-3)
    (path_option wpT3F1-3 wpT3F1-2 pathT3F1-3-T3F1-2)
    (path_option wpT3F1-3 wpT3F1-4 pathT3F1-3-T3F1-4)
    (path_option wpT3F1-4 wpT3F1-3 pathT3F1-4-T3F1-3)
    (path_option wpT3F1-4 wpT3F1-5 pathT3F1-4-T3F1-5)
    (path_option wpT3F1-5 wpT3F1-4 pathT3F1-5-T3F1-4)
    (path_option wpT3F1-5 wpT3F2-1 pathT3F1-5-T3F2-1)

    ; tower-3 floor-2

    (path_option wpT3F2-1 wpT3F1-5 pathT3F2-1-T3F1-5)
    (path_option wpT3F2-1 wpT3F2-2 pathT3F2-1-T3F2-2)
    (path_option wpT3F2-2 wpT3F2-1 pathT3F2-2-T3F2-1)
    (path_option wpT3F2-2 wpT3F2-3 pathT3F2-2-T3F2-3)
    (path_option wpT3F2-3 wpT3F2-2 pathT3F2-3-T3F2-2)
    (path_option wpT3F2-3 wpT3F2-4 pathT3F2-3-T3F2-4)
    (path_option wpT3F2-4 wpT3F2-3 pathT3F2-4-T3F2-3)
    (path_option wpT3F2-4 wpT3F2-5 pathT3F2-4-T3F2-5)
    (path_option wpT3F2-5 wpT3F2-4 pathT3F2-5-T3F2-4)
    (path_option wpT3F2-5 wpT3F3-1 pathT3F2-5-T3F3-1)

    ; tower-3 floor-3

    (path_option wpT3F3-1 wpT3F2-5 pathT3F3-1-T3F2-5)
    (path_option wpT3F3-1 wpT3F3-2 pathT3F3-1-T3F3-2)
    (path_option wpT3F3-2 wpT3F3-1 pathT3F3-2-T3F3-1)
    (path_option wpT3F3-2 wpT3F3-3 pathT3F3-2-T3F3-3)
    (path_option wpT3F3-3 wpT3F3-2 pathT3F3-3-T3F3-2)
    (path_option wpT3F3-3 wpT3F3-4 pathT3F3-3-T3F3-4)
    (path_option wpT3F3-4 wpT3F3-3 pathT3F3-4-T3F3-3)
    (path_option wpT3F3-4 wpT3F3-5 pathT3F3-4-T3F3-5)
    (path_option wpT3F3-5 wpT3F3-4 pathT3F3-5-T3F3-4)

    ; tower-4 floor-1

    (path_option wpT3F1-1 wpGF-13 pathT4F1-1-GF-13)
    (path_option wpT4F1-1 wpT4F1-2 pathT4F1-1-T4F1-2)
    (path_option wpT4F1-2 wpT4F1-1 pathT4F1-2-T4F1-1)
    (path_option wpT4F1-2 wpT4F1-3 pathT4F1-2-T4F1-3)
    (path_option wpT4F1-3 wpT4F1-2 pathT4F1-3-T4F1-2)
    (path_option wpT4F1-3 wpT4F1-4 pathT4F1-3-T4F1-4)
    (path_option wpT4F1-4 wpT4F1-3 pathT4F1-4-T4F1-3)
    (path_option wpT4F1-4 wpT4F1-5 pathT4F1-4-T4F1-5)
    (path_option wpT4F1-5 wpT4F1-4 pathT4F1-5-T4F1-4)
    (path_option wpT4F1-5 wpT4F2-1 pathT4F1-5-T4F2-1)

    ; tower-4 floor-2

    (path_option wpT4F2-1 wpT4F1-5 pathT4F2-1-T4F1-5)
    (path_option wpT4F2-1 wpT4F2-2 pathT4F2-1-T4F2-2)
    (path_option wpT4F2-2 wpT4F2-1 pathT4F2-2-T4F2-1)
    (path_option wpT4F2-2 wpT4F2-3 pathT4F2-2-T4F2-3)
    (path_option wpT4F2-3 wpT4F2-2 pathT4F2-3-T4F2-2)
    (path_option wpT4F2-3 wpT4F2-4 pathT4F2-3-T4F2-4)
    (path_option wpT4F2-4 wpT4F2-3 pathT4F2-4-T4F2-3)
    (path_option wpT4F2-4 wpT4F2-5 pathT4F2-4-T4F2-5)
    (path_option wpT4F2-5 wpT4F2-4 pathT4F2-5-T4F2-4)
    (path_option wpT4F2-5 wpT4F3-1 pathT4F2-5-T4F3-1)

    ; tower-4 floor-3

    (path_option wpT4F3-1 wpT4F2-5 pathT4F3-1-T4F2-5)
    (path_option wpT4F3-1 wpT4F3-2 pathT4F3-1-T4F3-2)
    (path_option wpT4F3-2 wpT4F3-1 pathT4F3-2-T4F3-1)
    (path_option wpT4F3-2 wpT4F3-3 pathT4F3-2-T4F3-3)
    (path_option wpT4F3-3 wpT4F3-2 pathT4F3-3-T4F3-2)
    (path_option wpT4F3-3 wpT4F3-4 pathT4F3-3-T4F3-4)
    (path_option wpT4F3-4 wpT4F3-3 pathT4F3-4-T4F3-3)
    (path_option wpT4F3-4 wpT4F3-5 pathT4F3-4-T4F3-5)
    (path_option wpT4F3-5 wpT4F3-4 pathT4F3-5-T4F3-4)


    (path_free wpGF-2 pathGF-2-T1F1-1)
    (path_free wpGF-3 pathGF-3-T2F1-1)
    (path_free wpGF-15 pathGF-15-T3F1-1)
    (path_free wpGF-13 pathGF-13-T4F1-1)

    (path_free wpT1F1-1 pathT1F1-1-GF-2)
    (path_free wpT1F1-1 pathT1F1-1-T1F1-2)
    (path_free wpT1F1-2 pathT1F1-2-T1F1-1)
    (path_free wpT1F1-2 pathT1F1-2-T1F1-3)
    (path_free wpT1F1-3 pathT1F1-3-T1F1-2)
    (path_free wpT1F1-3 pathT1F1-3-T1F1-4)
    (path_free wpT1F1-4 pathT1F1-4-T1F1-3)
    (path_free wpT1F1-4 pathT1F1-4-T1F1-5)
    (path_free wpT1F1-5 pathT1F1-5-T1F1-4)
    (path_free wpT1F1-5 pathT1F1-5-T1F2-1)
    (path_free wpT1F2-1 pathT1F2-1-T1F1-5)
    (path_free wpT1F2-1 pathT1F2-1-T1F2-2)
    (path_free wpT1F2-2 pathT1F2-2-T1F2-1)
    (path_free wpT1F2-2 pathT1F2-2-T1F2-3)
    (path_free wpT1F2-3 pathT1F2-3-T1F2-2)
    (path_free wpT1F2-3 pathT1F2-3-T1F2-4)
    (path_free wpT1F2-4 pathT1F2-4-T1F2-3)
    (path_free wpT1F2-4 pathT1F2-4-T1F2-5)
    (path_free wpT1F2-5 pathT1F2-5-T1F2-4)
    (path_free wpT1F2-5 pathT1F2-5-T1F3-1)
    (path_free wpT1F3-1 pathT1F3-1-T1F2-5)
    (path_free wpT1F3-1 pathT1F3-1-T1F3-2)
    (path_free wpT1F3-2 pathT1F3-2-T1F3-1)
    (path_free wpT1F3-2 pathT1F3-2-T1F3-3)
    (path_free wpT1F3-3 pathT1F3-3-T1F3-2)
    (path_free wpT1F3-3 pathT1F3-3-T1F3-4)
    (path_free wpT1F3-4 pathT1F3-4-T1F3-3)
    (path_free wpT1F3-4 pathT1F3-4-T1F3-5)
    (path_free wpT1F3-5 pathT1F3-5-T1F3-4)


    (path_free wpT2F1-1 pathT2F1-1-GF-3)
    (path_free wpT2F1-1 pathT2F1-1-T2F1-2)
    (path_free wpT2F1-2 pathT2F1-2-T2F1-1)
    (path_free wpT2F1-2 pathT2F1-2-T2F1-3)
    (path_free wpT2F1-3 pathT2F1-3-T2F1-2)
    (path_free wpT2F1-3 pathT2F1-3-T2F1-4)
    (path_free wpT2F1-4 pathT2F1-4-T2F1-3)
    (path_free wpT2F1-4 pathT2F1-4-T2F1-5)
    (path_free wpT2F1-5 pathT2F1-5-T2F1-4)
    (path_free wpT2F1-5 pathT2F1-5-T2F1-1)
    (path_free wpT2F2-1 pathT2F2-1-T2F2-5)
    (path_free wpT2F2-1 pathT2F2-1-T2F2-2)
    (path_free wpT2F2-2 pathT2F2-2-T2F2-1)
    (path_free wpT2F2-2 pathT2F2-2-T2F2-3)
    (path_free wpT2F2-3 pathT2F2-3-T2F2-2)
    (path_free wpT2F2-3 pathT2F2-3-T2F2-4)
    (path_free wpT2F2-4 pathT2F2-4-T2F2-3)
    (path_free wpT2F2-4 pathT2F2-4-T2F2-5)
    (path_free wpT2F2-5 pathT2F2-5-T2F2-4)
    (path_free wpT2F2-5 pathT2F2-5-T2F3-1)
    (path_free wpT2F3-1 pathT2F3-1-T2F2-5)
    (path_free wpT2F3-1 pathT2F3-1-T2F3-2)
    (path_free wpT2F3-2 pathT2F3-2-T2F3-1)
    (path_free wpT2F3-2 pathT2F3-2-T2F3-3)
    (path_free wpT2F3-3 pathT2F3-3-T2F3-2)
    (path_free wpT2F3-3 pathT2F3-3-T2F3-4)
    (path_free wpT2F3-4 pathT2F3-4-T2F3-3)
    (path_free wpT2F3-4 pathT2F3-4-T2F3-5)
    (path_free wpT2F3-5 pathT2F3-5-T2F3-4)


    (path_free wpT3F1-1 pathT3F1-1-GF-15)
    (path_free wpT3F1-1 pathT3F1-1-T3F1-2)
    (path_free wpT3F1-2 pathT3F1-2-T3F1-1)
    (path_free wpT3F1-2 pathT3F1-2-T3F1-3)
    (path_free wpT3F1-3 pathT3F1-3-T3F1-2)
    (path_free wpT3F1-3 pathT3F1-3-T3F1-4)
    (path_free wpT3F1-4 pathT3F1-4-T3F1-3)
    (path_free wpT3F1-4 pathT3F1-4-T3F1-5)
    (path_free wpT3F1-5 pathT3F1-5-T3F1-4)
    (path_free wpT3F1-5 pathT3F1-5-T3F2-1)
    (path_free wpT3F2-1 pathT3F2-1-T3F1-5)
    (path_free wpT3F2-1 pathT3F2-1-T3F2-2)
    (path_free wpT3F2-2 pathT3F2-2-T3F2-1)
    (path_free wpT3F2-2 pathT3F2-2-T3F2-3)
    (path_free wpT3F2-3 pathT3F2-3-T3F2-2)
    (path_free wpT3F2-3 pathT3F2-3-T3F2-4)
    (path_free wpT3F2-4 pathT3F2-4-T3F2-3)
    (path_free wpT3F2-4 pathT3F2-4-T3F2-5)
    (path_free wpT3F2-5 pathT3F2-5-T3F2-4)
    (path_free wpT3F2-5 pathT3F2-5-T3F3-1)
    (path_free wpT3F3-1 pathT3F3-1-T3F2-5)
    (path_free wpT3F3-1 pathT3F3-1-T3F3-2)
    (path_free wpT3F3-2 pathT3F3-2-T3F3-1)
    (path_free wpT3F3-2 pathT3F3-2-T3F3-3)
    (path_free wpT3F3-3 pathT3F3-3-T3F3-2)
    (path_free wpT3F3-3 pathT3F3-3-T3F3-4)
    (path_free wpT3F3-4 pathT3F3-4-T3F3-3)
    (path_free wpT3F3-4 pathT3F3-4-T3F3-5)
    (path_free wpT3F3-5 pathT3F3-5-T3F3-4)


    (path_free wpT4F1-1 pathT4F1-1-GF-13)
    (path_free wpT4F1-1 pathT4F1-1-T4F1-2)
    (path_free wpT4F1-2 pathT4F1-2-T4F1-1)
    (path_free wpT4F1-2 pathT4F1-2-T4F1-3)
    (path_free wpT4F1-3 pathT4F1-3-T4F1-2)
    (path_free wpT4F1-3 pathT4F1-3-T4F1-4)
    (path_free wpT4F1-4 pathT4F1-4-T4F1-3)
    (path_free wpT4F1-4 pathT4F1-4-T4F1-5)
    (path_free wpT4F1-5 pathT4F1-5-T4F1-4)
    (path_free wpT4F1-5 pathT4F1-5-T4F2-1)
    (path_free wpT4F2-1 pathT4F2-1-T4F1-5)
    (path_free wpT4F2-1 pathT4F2-1-T4F2-2)
    (path_free wpT4F2-2 pathT4F2-2-T4F2-1)
    (path_free wpT4F2-2 pathT4F2-2-T4F2-3)
    (path_free wpT4F2-3 pathT4F2-3-T4F2-2)
    (path_free wpT4F2-3 pathT4F2-3-T4F2-4)
    (path_free wpT4F2-4 pathT4F2-4-T4F2-3)
    (path_free wpT4F2-4 pathT4F2-4-T4F2-5)
    (path_free wpT4F2-5 pathT4F2-5-T4F2-4)
    (path_free wpT4F2-5 pathT4F2-5-T4F3-1)
    (path_free wpT4F3-1 pathT4F3-1-T4F2-5)
    (path_free wpT4F3-1 pathT4F3-1-T4F3-2)
    (path_free wpT4F3-2 pathT4F3-2-T4F3-1)
    (path_free wpT4F3-2 pathT4F3-2-T4F3-3)
    (path_free wpT4F3-3 pathT4F3-3-T4F3-2)
    (path_free wpT4F3-3 pathT4F3-3-T4F3-4)
    (path_free wpT4F3-4 pathT4F3-4-T4F3-3)
    (path_free wpT4F3-4 pathT4F3-4-T4F3-5)
    (path_free wpT4F3-5 pathT4F3-5-T4F3-4)


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

    (= (distance_path wpGF-2 wpT1F1-1 pathGF-2-T1F1-1) 3)
    (= (distance_path wpGF-3 wpT2F1-1 pathGF-3-T2F1-1) 3)
    (= (distance_path wpGF-13 wpT4F1-1 pathGF-13-T4F1-1) 3)
    (= (distance_path wpGF-15 wpT3F1-1 pathGF-15-T3F1-1) 3)
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

    (= (distance_path wpT1F1-1 wpGF-2 pathT1F1-1-GF-2) 3)
    (= (distance_path wpT1F1-1 wpT1F1-2 pathT1F1-1-T1F1-2) 2)
    (= (distance_path wpT1F1-2 wpT1F1-1 pathT1F1-2-T1F1-1) 2)
    (= (distance_path wpT1F1-2 wpT1F1-3 pathT1F1-2-T1F1-3) 3)
    (= (distance_path wpT1F1-3 wpT1F1-2 pathT1F1-3-T1F1-2) 3)
    (= (distance_path wpT1F1-3 wpT1F1-4 pathT1F1-3-T1F1-4) 1)
    (= (distance_path wpT1F1-4 wpT1F1-3 pathT1F1-4-T1F1-3) 1)
    (= (distance_path wpT1F1-4 wpT1F1-5 pathT1F1-4-T1F1-5) 1)
    (= (distance_path wpT1F1-5 wpT1F1-4 pathT1F1-5-T1F1-4) 1)
    (= (distance_path wpT1F1-5 wpT1F2-1 pathT1F1-5-T1F2-1) 3)
    (= (distance_path wpT1F2-1 wpT1F1-5 pathT1F2-1-T1F1-5) 3)
    (= (distance_path wpT1F2-1 wpT1F2-2 pathT1F2-1-T1F2-2) 2)
    (= (distance_path wpT1F2-2 wpT1F2-1 pathT1F2-2-T1F2-1) 2)
    (= (distance_path wpT1F2-2 wpT1F2-3 pathT1F2-2-T1F2-3) 3)
    (= (distance_path wpT1F2-3 wpT1F2-2 pathT1F2-3-T1F2-2) 3)
    (= (distance_path wpT1F2-3 wpT1F2-4 pathT1F2-3-T1F2-4) 1)
    (= (distance_path wpT1F2-4 wpT1F2-3 pathT1F2-4-T1F2-3) 1)
    (= (distance_path wpT1F2-4 wpT1F2-5 pathT1F2-4-T1F2-5) 1)
    (= (distance_path wpT1F2-5 wpT1F2-4 pathT1F2-5-T1F2-4) 1)
    (= (distance_path wpT1F2-5 wpT1F3-1 pathT1F2-5-T1F3-1) 3)
    (= (distance_path wpT1F3-1 wpT1F2-5 pathT1F3-1-T1F2-5) 3)
    (= (distance_path wpT1F3-1 wpT1F3-2 pathT1F3-1-T1F3-2) 2)
    (= (distance_path wpT1F3-2 wpT1F3-1 pathT1F3-2-T1F3-1) 2)
    (= (distance_path wpT1F3-2 wpT1F3-3 pathT1F3-2-T1F3-3) 3)
    (= (distance_path wpT1F3-3 wpT1F3-2 pathT1F3-3-T1F3-2) 3)
    (= (distance_path wpT1F3-3 wpT1F3-4 pathT1F3-3-T1F3-4) 1)
    (= (distance_path wpT1F3-4 wpT1F3-3 pathT1F3-4-T1F3-3) 1)
    (= (distance_path wpT1F3-4 wpT1F3-5 pathT1F3-4-T1F3-5) 1)
    (= (distance_path wpT1F3-5 wpT1F3-4 pathT1F3-5-T1F3-4) 1)

    (= (distance_path wpT2F1-1 wpGF-3 pathT2F1-1-GF-3) 3)
    (= (distance_path wpT2F1-1 wpT2F1-2 pathT2F1-1-T2F1-2) 2)
    (= (distance_path wpT2F1-2 wpT2F1-1 pathT2F1-2-T2F1-1) 2)
    (= (distance_path wpT2F1-2 wpT2F1-3 pathT2F1-2-T2F1-3) 3)
    (= (distance_path wpT2F1-3 wpT2F1-2 pathT2F1-3-T2F1-2) 3)
    (= (distance_path wpT2F1-3 wpT2F1-4 pathT2F1-3-T2F1-4) 1)
    (= (distance_path wpT2F1-4 wpT2F1-3 pathT2F1-4-T2F1-3) 1)
    (= (distance_path wpT2F1-4 wpT2F1-5 pathT2F1-4-T2F1-5) 1)
    (= (distance_path wpT2F1-5 wpT2F1-4 pathT2F1-5-T2F1-4) 1)
    (= (distance_path wpT2F1-5 wpT2F2-1 pathT2F1-5-T2F1-1) 3)
    (= (distance_path wpT2F2-1 wpT2F1-5 pathT2F2-1-T2F2-5) 3)
    (= (distance_path wpT2F2-1 wpT2F2-2 pathT2F2-1-T2F2-2) 2)
    (= (distance_path wpT2F2-2 wpT2F2-1 pathT2F2-2-T2F2-1) 2)
    (= (distance_path wpT2F2-2 wpT2F2-3 pathT2F2-2-T2F2-3) 3)
    (= (distance_path wpT2F2-3 wpT2F2-2 pathT2F2-3-T2F2-2) 3)
    (= (distance_path wpT2F2-3 wpT2F2-4 pathT2F2-3-T2F2-4) 1)
    (= (distance_path wpT2F2-4 wpT2F2-3 pathT2F2-4-T2F2-3) 1)
    (= (distance_path wpT2F2-4 wpT2F2-5 pathT2F2-4-T2F2-5) 1)
    (= (distance_path wpT2F2-5 wpT2F2-4 pathT2F2-5-T2F2-4) 1)
    (= (distance_path wpT2F2-5 wpT2F3-1 pathT2F2-5-T2F3-1) 3)
    (= (distance_path wpT2F3-1 wpT2F2-5 pathT2F3-1-T2F2-5) 3)
    (= (distance_path wpT2F3-1 wpT2F3-2 pathT2F3-1-T2F3-2) 2)
    (= (distance_path wpT2F3-2 wpT2F3-1 pathT2F3-2-T2F3-1) 2)
    (= (distance_path wpT2F3-2 wpT2F3-3 pathT2F3-2-T2F3-3) 3)
    (= (distance_path wpT2F3-3 wpT2F3-2 pathT2F3-3-T2F3-2) 3)
    (= (distance_path wpT2F3-3 wpT2F3-4 pathT2F3-3-T2F3-4) 1)
    (= (distance_path wpT2F3-4 wpT2F3-3 pathT2F3-4-T2F3-3) 1)
    (= (distance_path wpT2F3-4 wpT2F3-5 pathT2F3-4-T2F3-5) 1)
    (= (distance_path wpT2F3-5 wpT2F3-4 pathT2F3-5-T2F3-4) 1)

    (= (distance_path wpT3F1-1 wpGF-15 pathT3F1-1-GF-15) 3)
    (= (distance_path wpT3F1-1 wpT3F1-2 pathT3F1-1-T3F1-2) 2)
    (= (distance_path wpT3F1-2 wpT3F1-1 pathT3F1-2-T3F1-1) 2)
    (= (distance_path wpT3F1-2 wpT3F1-3 pathT3F1-2-T3F1-3) 3)
    (= (distance_path wpT3F1-3 wpT3F1-2 pathT3F1-3-T3F1-2) 3)
    (= (distance_path wpT3F1-3 wpT3F1-4 pathT3F1-3-T3F1-4) 1)
    (= (distance_path wpT3F1-4 wpT3F1-3 pathT3F1-4-T3F1-3) 1)
    (= (distance_path wpT3F1-4 wpT3F1-5 pathT3F1-4-T3F1-5) 1)
    (= (distance_path wpT3F1-5 wpT3F1-4 pathT3F1-5-T3F1-4) 1)
    (= (distance_path wpT3F1-5 wpT3F2-1 pathT3F1-5-T3F2-1) 3)
    (= (distance_path wpT3F2-1 wpT3F1-5 pathT3F2-1-T3F1-5) 3)
    (= (distance_path wpT3F2-1 wpT3F2-2 pathT3F2-1-T3F2-2) 2)
    (= (distance_path wpT3F2-2 wpT3F2-1 pathT3F2-2-T3F2-1) 2)
    (= (distance_path wpT3F2-2 wpT3F2-3 pathT3F2-2-T3F2-3) 3)
    (= (distance_path wpT3F2-3 wpT3F2-2 pathT3F2-3-T3F2-2) 3)
    (= (distance_path wpT3F2-3 wpT3F2-4 pathT3F2-3-T3F2-4) 1)
    (= (distance_path wpT3F2-4 wpT3F2-3 pathT3F2-4-T3F2-3) 1)
    (= (distance_path wpT3F2-4 wpT3F2-5 pathT3F2-4-T3F2-5) 1)
    (= (distance_path wpT3F2-5 wpT3F2-4 pathT3F2-5-T3F2-4) 1)
    (= (distance_path wpT3F2-5 wpT3F3-1 pathT3F2-5-T3F3-1) 3)
    (= (distance_path wpT3F3-1 wpT3F2-5 pathT3F3-1-T3F2-5) 3)
    (= (distance_path wpT3F3-1 wpT3F3-2 pathT3F3-1-T3F3-2) 2)
    (= (distance_path wpT3F3-2 wpT3F3-1 pathT3F3-2-T3F3-1) 2)
    (= (distance_path wpT3F3-2 wpT3F3-3 pathT3F3-2-T3F3-3) 3)
    (= (distance_path wpT3F3-3 wpT3F3-2 pathT3F3-3-T3F3-2) 3)
    (= (distance_path wpT3F3-3 wpT3F3-4 pathT3F3-3-T3F3-4) 1)
    (= (distance_path wpT3F3-4 wpT3F3-3 pathT3F3-4-T3F3-3) 1)
    (= (distance_path wpT3F3-4 wpT3F3-5 pathT3F3-4-T3F3-5) 1)
    (= (distance_path wpT3F3-5 wpT3F3-4 pathT3F3-5-T3F3-4) 1)

    (= (distance_path wpT4F1-1 wpGF-13 pathT4F1-1-GF-13) 3)
    (= (distance_path wpT4F1-1 wpT4F1-2 pathT4F1-1-T4F1-2) 2)
    (= (distance_path wpT4F1-2 wpT4F1-1 pathT4F1-2-T4F1-1) 2)
    (= (distance_path wpT4F1-2 wpT4F1-3 pathT4F1-2-T4F1-3) 3)
    (= (distance_path wpT4F1-3 wpT4F1-2 pathT4F1-3-T4F1-2) 3)
    (= (distance_path wpT4F1-3 wpT4F1-4 pathT4F1-3-T4F1-4) 1)
    (= (distance_path wpT4F1-4 wpT4F1-3 pathT4F1-4-T4F1-3) 1)
    (= (distance_path wpT4F1-4 wpT4F1-5 pathT4F1-4-T4F1-5) 1)
    (= (distance_path wpT4F1-5 wpT4F1-4 pathT4F1-5-T4F1-4) 1)
    (= (distance_path wpT4F1-5 wpT4F2-1 pathT4F1-5-T4F2-1) 3)
    (= (distance_path wpT4F2-1 wpT4F1-5 pathT4F2-1-T4F1-5) 3)
    (= (distance_path wpT4F2-1 wpT4F2-2 pathT4F2-1-T4F2-2) 2)
    (= (distance_path wpT4F2-2 wpT4F2-1 pathT4F2-2-T4F2-1) 2)
    (= (distance_path wpT4F2-2 wpT4F2-3 pathT4F2-2-T4F2-3) 3)
    (= (distance_path wpT4F2-3 wpT4F2-2 pathT4F2-3-T4F2-2) 3)
    (= (distance_path wpT4F2-3 wpT4F2-4 pathT4F2-3-T4F2-4) 1)
    (= (distance_path wpT4F2-4 wpT4F2-3 pathT4F2-4-T4F2-3) 1)
    (= (distance_path wpT4F2-4 wpT4F2-5 pathT4F2-4-T4F2-5) 1)
    (= (distance_path wpT4F2-5 wpT4F2-4 pathT4F2-5-T4F2-4) 1)
    (= (distance_path wpT4F2-5 wpT4F3-1 pathT4F2-5-T4F3-1) 3)
    (= (distance_path wpT4F3-1 wpT4F2-5 pathT4F3-1-T4F2-5) 3)
    (= (distance_path wpT4F3-1 wpT4F3-2 pathT4F3-1-T4F3-2) 2)
    (= (distance_path wpT4F3-2 wpT4F3-1 pathT4F3-2-T4F3-1) 2)
    (= (distance_path wpT4F3-2 wpT4F3-3 pathT4F3-2-T4F3-3) 3)
    (= (distance_path wpT4F3-3 wpT4F3-2 pathT4F3-3-T4F3-2) 3)
    (= (distance_path wpT4F3-3 wpT4F3-4 pathT4F3-3-T4F3-4) 1)
    (= (distance_path wpT4F3-4 wpT4F3-3 pathT4F3-4-T4F3-3) 1)
    (= (distance_path wpT4F3-4 wpT4F3-5 pathT4F3-4-T4F3-5) 1)
    (= (distance_path wpT4F3-5 wpT4F3-4 pathT4F3-5-T4F3-4) 1)


    (= (consumption husky0) 0.01)

    (= (speed husky0) 0.5)

    (= (total_distance) 0)

)

(:unknown-prop

   (pathGF-1-GF-0 (path_free wpGF-1 pathGF-1-GF-0) )
   (pathGF-1-GF-2 (path_free wpGF-1 pathGF-1-GF-2) )
   (pathGF-2-GF-1 (path_free wpGF-2 pathGF-2-GF-1) )
   (pathGF-2-GF-3 (path_free wpGF-2 pathGF-2-GF-3) )
   (pathGF-2-GF-15  (path_free wpGF-2 pathGF-2-GF-15) )
   (pathGF-4-GF-5 (path_free wpGF-4 pathGF-4-GF-5) )
   (pathGF-4-GF-6 (path_free wpGF-4 pathGF-4-GF-6) )
   (pathGF-14-GF-13 (path_free wpGF-14 pathGF-14-GF-13) )
   (pathGF-14-GF-15 (path_free wpGF-14 pathGF-14-GF-15) )
   (pathGF-15-GF-14 (path_free wpGF-15 pathGF-15-GF-14) )
   (pathGF-15-GF-2 (path_free wpGF-15 pathGF-15-GF-2) )
   (pathGF-15-GF-4 (path_free wpGF-15 pathGF-15-GF-4) )
)
(:knowledge-updates

  (pathGF-1-GF-0 (path_free wpGF-1 pathGF-1-GF-0) (not (path_free wpGF-1 pathGF-1-GF-0)) )
  (pathGF-1-GF-2 (path_free wpGF-1 pathGF-1-GF-2) (not (path_free wpGF-1 pathGF-1-GF-2)) )
  (pathGF-2-GF-1 (path_free wpGF-2 pathGF-2-GF-1) (not (path_free wpGF-2 pathGF-2-GF-1)) )
  (pathGF-2-GF-3 (path_free wpGF-2 pathGF-2-GF-3) (not (path_free wpGF-2 pathGF-2-GF-3)) )
  (pathGF-2-GF-15 (path_free wpGF-2 pathGF-2-GF-15) (not (path_free wpGF-2 pathGF-2-GF-15)) )
  (pathGF-4-GF-5 (path_free wpGF-4 pathGF-4-GF-5) (not (path_free wpGF-4 pathGF-4-GF-5)) )
  (pathGF-4-GF-6 (path_free wpGF-4 pathGF-4-GF-6) (not (path_free wpGF-4 pathGF-4-GF-6)) )
  (pathGF-14-GF-13 (path_free wpGF-14 pathGF-14-GF-13) (not (path_free wpGF-14 pathGF-14-GF-13)) )
  (pathGF-14-GF-15 (path_free wpGF-14 pathGF-14-GF-15) (not (path_free wpGF-14 pathGF-14-GF-15)) )
  (pathGF-15-GF-14 (path_free wpGF-15 pathGF-15-GF-14) (not (path_free wpGF-15 pathGF-15-GF-14)) )
  (pathGF-15-GF-2 (path_free wpGF-15 pathGF-15-GF-2) (not (path_free wpGF-15 pathGF-15-GF-2)) )
  (pathGF-15-GF-4 (path_free wpGF-15 pathGF-15-GF-4) (not (path_free wpGF-15 pathGF-15-GF-4)) )
)



(:goal (and

    (motor_inspection_communicated husky0 wpT1F1-1)
    (motor_inspection_communicated husky0 wpT1F3-2)
    (motor_inspection_communicated husky0 wpT2F2-3)
    (motor_inspection_communicated husky0 wpT3F2-4)
    (motor_inspection_communicated husky0 wpT4F3-3)

))
(:metric minimize (total-time))
;(:metric maximize (total-time))
)
