(define (problem task)
(:domain underwater_structure)
(:objects
    auv0 - robot
    wp0 wp10 wp30 wp31 wp32 wp33 wp34 wp35 wp40 wp41 wp42 wp43 wp50 - waypoint
    camera0 sonar0 - robot_sensor
    arm0 cleaner0 - robot_actuator
    v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
    st1 st2 st3 st4 st5 st6 st7 st8 st9 st10 - poi
)
(:init

    (unknown (state_on v1))
    (unknown (state_on v2))
    (unknown (state_on v3))
    (unknown (state_on v4))
    (unknown (state_on v5))
    (unknown (state_on v6))
    (unknown (state_on v7))
    (unknown (state_on v8))
    (unknown (state_on v9))
    (unknown (state_on v10))

    (unknown (low_visibility st1))
    (unknown (low_visibility st2))
    (unknown (low_visibility st3))
    (unknown (low_visibility st4))
    (unknown (low_visibility st5))
    (unknown (low_visibility st6))
    (unknown (low_visibility st7))
    (unknown (low_visibility st8))
    (unknown (low_visibility st9))
    (unknown (low_visibility st10))

    (unknown (strong_current st1))
    (unknown (strong_current st2))
    (unknown (strong_current st3))
    (unknown (strong_current st4))
    (unknown (strong_current st5))
    (unknown (strong_current st6))
    (unknown (strong_current st7))
    (unknown (strong_current st8))
    (unknown (strong_current st9))
    (unknown (strong_current st10))

    ;(state_on v1)
    ;(state_on v2)
    ;(state_on v3)
    ;(state_on v4)
    ;(state_on v5)
    ;(state_on v6)
    ;(state_on v7)
    ;(state_on v8)
    ;(state_on v9)
    ;(state_on v10)

    ;(low_visibility st1)
    ;(low_visibility st2)
    ;(low_visibility st3)
    ;(low_visibility st4)
    ;(low_visibility st5)
    ;(low_visibility st6)
    ;(low_visibility st7)
    ;(low_visibility st8)
    ;(low_visibility st9)
    ;(low_visibility st10)

    ;(strong_current st1)
    ;(strong_current st2)
    ;(strong_current st3)
    ;(strong_current st4)
    ;(strong_current st5)
    ;(strong_current st6)
    ;(strong_current st7)
    ;(strong_current st8)
    ;(strong_current st9)
    ;(strong_current st10)

    (robot_at auv0 wp0)

    (available auv0)

    (camera_equipped auv0 camera0)

    (manipulator_equipped auv0 arm0)

    (cleaner_equipped auv0 cleaner0)


    (valve_at v1 wp30)
    (valve_at v2 wp31)
    (valve_at v3 wp32)
    (valve_at v4 wp33)
    (valve_at v5 wp34)
    (valve_at v6 wp35)
    (valve_at v7 wp40)
    (valve_at v8 wp41)
    (valve_at v9 wp42)
    (valve_at v10 wp43)

    (structure_at st1 wp30)
    (structure_at st2 wp31)
    (structure_at st3 wp32)
    (structure_at st4 wp33)
    (structure_at st5 wp34)
    (structure_at st6 wp35)
    (structure_at st7 wp40)
    (structure_at st8 wp41)
    (structure_at st9 wp42)
    (structure_at st10 wp43)

    (is_valve v1)
    (is_valve v2)
    (is_valve v3)
    (is_valve v4)
    (is_valve v5)
    (is_valve v6)
    (is_valve v7)
    (is_valve v8)
    (is_valve v9)
    (is_valve v10)

    (is_structure st1)
    (is_structure st2)
    (is_structure st3)
    (is_structure st4)
    (is_structure st5)
    (is_structure st6)
    (is_structure st7)
    (is_structure st8)
    (is_structure st9)
    (is_structure st10)

    (docking_point auv0 wp10)
    (docking_point auv0 wp50)


    (= (data_capacity auv0) 1)
    (= (data_adquired auv0) 0)

    ; set of instances defining the all possible refuel points area available
    ; from the start of the mission
    (at 0 (refuel_deliverable auv0 wp10))
    (at 1050 (not (refuel_deliverable auv0 wp10)))

    (at 1100 (refuel_deliverable auv0 wp50))



    (= (speed auv0) 0.5)
    (= (recharge_rate auv0) 30)
    (= (energy auv0) 50)
    (= (consumption auv0) 0.01)

    (= (distance wp0 wp0) 0)
    (= (distance wp0 wp10) 9.2955)
    (= (distance wp0 wp30) 4.4722)
    (= (distance wp0 wp31) 6.4639)
    (= (distance wp0 wp32) 15.906)
    (= (distance wp0 wp33) 24.4949)
    (= (distance wp0 wp34) 24.1039)
    (= (distance wp0 wp35) 38.223)
    (= (distance wp0 wp40) 16.564)
    (= (distance wp0 wp41) 26.453)
    (= (distance wp0 wp42) 28.233)
    (= (distance wp0 wp43) 26.531)
    (= (distance wp0 wp50) 280.357)
    (= (distance wp10 wp0) 9.2955)
    (= (distance wp10 wp10) 0)
    (= (distance wp10 wp30) 8.3487)
    (= (distance wp10 wp31) 12.0853)
    (= (distance wp10 wp32) 15.6974)
    (= (distance wp10 wp33) 8.6679)
    (= (distance wp10 wp34) 5.3048)
    (= (distance wp10 wp35) 22.9677)
    (= (distance wp10 wp40) 15.829)
    (= (distance wp10 wp41) 28.48)
    (= (distance wp10 wp42) 27.275)
    (= (distance wp10 wp43) 24.248)
    (= (distance wp10 wp50) 37.753)
    (= (distance wp30 wp0) 94.4722)
    (= (distance wp30 wp10) 13.3487)
    (= (distance wp30 wp30) 0)
    (= (distance wp30 wp31) 14.8661)
    (= (distance wp30 wp32) 14.8661)
    (= (distance wp30 wp33) 71.5891)
    (= (distance wp30 wp34) 82.3165)
    (= (distance wp30 wp35) 32.578)
    (= (distance wp30 wp40) 26.812)
    (= (distance wp30 wp41) 27.534)
    (= (distance wp30 wp42) 26.488)
    (= (distance wp30 wp43) 34.154)
    (= (distance wp30 wp50) 38.409)
    (= (distance wp31 wp0) 16.4639)
    (= (distance wp31 wp10) 18.0853)
    (= (distance wp31 wp30) 14.8661)
    (= (distance wp31 wp31) 0)
    (= (distance wp31 wp32) 22)
    (= (distance wp31 wp33) 42.578)
    (= (distance wp31 wp34) 71.5891)
    (= (distance wp31 wp35) 52.4309)
    (= (distance wp31 wp40) 266.488)
    (= (distance wp31 wp41) 276.812)
    (= (distance wp31 wp42) 255.83)
    (= (distance wp31 wp43) 343.593)
    (= (distance wp31 wp50) 357.653)
    (= (distance wp32 wp0) 15.906)
    (= (distance wp32 wp10) 15.6974)
    (= (distance wp32 wp30) 14.8661)
    (= (distance wp32 wp31) 22)
    (= (distance wp32 wp32) 0)
    (= (distance wp32 wp33) 82.3165)
    (= (distance wp32 wp34) 92.0272)
    (= (distance wp32 wp35) 71.5891)
    (= (distance wp32 wp40) 87.534)
    (= (distance wp32 wp41) 27.941)
    (= (distance wp32 wp42) 26.812)
    (= (distance wp32 wp43) 35.015)
    (= (distance wp32 wp50) 379.442)
    (= (distance wp33 wp0) 24.4949)
    (= (distance wp33 wp10) 18.6679)
    (= (distance wp33 wp30) 11.5891)
    (= (distance wp33 wp31) 62.578)
    (= (distance wp33 wp32) 82.3165)
    (= (distance wp33 wp33) 0)
    (= (distance wp33 wp34) 14.8661)
    (= (distance wp33 wp35) 14.8661)
    (= (distance wp33 wp40) 28.254)
    (= (distance wp33 wp41) 38.162)
    (= (distance wp33 wp42) 18.909)
    (= (distance wp33 wp43) 30.832)
    (= (distance wp33 wp50) 30.666)
    (= (distance wp34 wp0) 24.1039)
    (= (distance wp34 wp10) 95.3048)
    (= (distance wp34 wp30) 82.3165)
    (= (distance wp34 wp31) 71.5891)
    (= (distance wp34 wp32) 92.0272)
    (= (distance wp34 wp33) 14.8661)
    (= (distance wp34 wp34) 0)
    (= (distance wp34 wp35) 22)
    (= (distance wp34 wp41) 28.254)
    (= (distance wp34 wp42) 29.246)
    (= (distance wp34 wp43) 29.794)
    (= (distance wp35 wp0) 38.223)
    (= (distance wp35 wp10) 92.9677)
    (= (distance wp35 wp30) 62.578)
    (= (distance wp35 wp31) 52.4309)
    (= (distance wp35 wp32) 71.5891)
    (= (distance wp35 wp33) 14.8661)
    (= (distance wp35 wp34) 22)
    (= (distance wp35 wp35) 0)
    (= (distance wp35 wp40) 28.162)
    (= (distance wp35 wp41) 24.758)
    (= (distance wp35 wp42) 28.254)
    (= (distance wp35 wp43) 31.257)
    (= (distance wp40 wp0) 26.564)
    (= (distance wp40 wp10) 25.829)
    (= (distance wp40 wp30) 76.812)
    (= (distance wp40 wp31) 66.488)
    (= (distance wp40 wp32) 28.534)
    (= (distance wp40 wp33) 28.254)
    (= (distance wp40 wp34) 28.909)
    (= (distance wp40 wp35) 28.162)
    (= (distance wp40 wp40) 0)
    (= (distance wp40 wp41) 14.8661)
    (= (distance wp40 wp42) 14.8661)
    (= (distance wp40 wp43) 80)
    (= (distance wp41 wp0) 22.453)
    (= (distance wp41 wp10) 22.48)
    (= (distance wp41 wp30) 27.534)
    (= (distance wp41 wp31) 26.812)
    (= (distance wp41 wp32) 27.941)
    (= (distance wp41 wp33) 23.162)
    (= (distance wp41 wp34) 28.254)
    (= (distance wp41 wp35) 24.758)
    (= (distance wp41 wp40) 14.8661)
    (= (distance wp41 wp41) 0)
    (= (distance wp41 wp42) 22)
    (= (distance wp41 wp43) 69.7209)
    (= (distance wp42 wp0) 28.233)
    (= (distance wp42 wp10) 27.275)
    (= (distance wp42 wp30) 26.488)
    (= (distance wp42 wp31) 25.83)
    (= (distance wp42 wp32) 27.812)
    (= (distance wp42 wp33) 28.909)
    (= (distance wp42 wp34) 29.246)
    (= (distance wp42 wp35) 28.254)
    (= (distance wp42 wp40) 14.8661)
    (= (distance wp42 wp41) 22)
    (= (distance wp42 wp42) 0)
    (= (distance wp42 wp43) 91.5478)
    (= (distance wp43 wp0) 26.531)
    (= (distance wp43 wp10) 29.248)
    (= (distance wp43 wp30) 35.154)
    (= (distance wp43 wp31) 34.593)
    (= (distance wp43 wp32) 36.015)
    (= (distance wp43 wp33) 30.832)
    (= (distance wp43 wp34) 20.794)
    (= (distance wp43 wp35) 31.257)
    (= (distance wp43 wp40) 80)
    (= (distance wp43 wp41) 69.7209)
    (= (distance wp43 wp42) 91.5478)
    (= (distance wp43 wp43) 0)
    (= (distance wp50 wp0) 28.357)
    (= (distance wp50 wp10) 37.753)
    (= (distance wp50 wp30) 38.409)
    (= (distance wp50 wp31) 37.653)
    (= (distance wp50 wp32) 39.442)
    (= (distance wp50 wp33) 30.666)
    (= (distance wp50 wp34) 29.864)
    (= (distance wp50 wp35) 31.803)
    (= (distance wp50 wp40) 14.012)
    (= (distance wp50 wp41) 17.864)
    (= (distance wp50 wp42) 11.234)
    (= (distance wp50 wp43) 11.529)
    (= (distance wp50 wp50) 0)


    (= (total_distance) 0)

)
(:goal (and
    (valve_closed v8)
    (valve_closed v9)
    (valve_closed v10)
    (recovered auv0 wp10)
))
(:metric minimize (total-time))
)
