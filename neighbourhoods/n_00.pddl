(define (problem task)
(:domain neighbourhoods)
(:objects

     postman0 - robot
     house0loc0  house0loc1
     house1loc0  house1loc1
     house2loc0  house2loc1
     house3loc0  house3loc1
     house4loc0  house4loc1
     house5loc0  house5loc1
     house6loc0  house6loc1
     house7loc0  house7loc1
     house8loc0  house8loc1
     house9loc0  house9loc1
     house10loc0  house10loc1
     house11loc0  house11loc1
     house12loc0  house12loc1
     house13loc0  house13loc1
     house14loc0  house14loc1
     house15loc0  house15loc1
     house16loc0  house16loc1
     house17loc0  house17loc1
     house18loc0  house18loc1
     house19loc0  house19loc1 - poi
     postoffice - poi
     camera0 - camera
)
(:init

       (at postman0 postoffice)
       (available postman0)
       (hascamera postman0 camera0)

       (visible house0loc0 house0loc1)
       (visible house1loc0 house1loc1)
       (visible house2loc0 house2loc1)
       (visible house3loc0 house3loc1)
       (visible house4loc0 house4loc1)
       (visible house5loc0 house5loc1)
       (visible house6loc0 house6loc1)
       (visible house7loc0 house7loc1)
       (visible house8loc0 house8loc1)
       (visible house9loc0 house9loc1)
       (visible house10loc0 house10loc1)
       (visible house11loc0 house11loc1)
       (visible house12loc0 house12loc1)
       (visible house13loc0 house13loc1)
       (visible house14loc0 house14loc1)
       (visible house15loc0 house15loc1)
       (visible house16loc0 house16loc1)
       (visible house17loc0 house17loc1)
       (visible house18loc0 house18loc1)
       (visible house19loc0 house19loc1)


       (visible house0loc1 house0loc0)
       (visible house1loc1 house1loc0)
       (visible house2loc1 house2loc0)
       (visible house3loc1 house3loc0)
       (visible house4loc1 house4loc0)
       (visible house5loc1 house5loc0)
       (visible house6loc1 house6loc0)
       (visible house7loc1 house7loc0)
       (visible house8loc1 house8loc0)
       (visible house9loc1 house9loc0)
       (visible house10loc1 house10loc0)
       (visible house11loc1 house11loc0)
       (visible house12loc1 house12loc0)
       (visible house13loc1 house13loc0)
       (visible house14loc1 house14loc0)
       (visible house15loc1 house15loc0)
       (visible house16loc1 house16loc0)
       (visible house17loc1 house17loc0)
       (visible house18loc1 house18loc0)
       (visible house19loc1 house19loc0)

       (visible house0loc0 postoffice)
       (visible house10loc0 postoffice)

       (visible postoffice house0loc0)
       (visible postoffice house10loc0)

        ;first neighbourhood

        (visible house0loc0 house1loc0)
        (visible house0loc0 house9loc0)
        (visible house1loc0 house0loc0)
        (visible house1loc0 house2loc0)
        (visible house2loc0 house1loc0)
        (visible house2loc0 house3loc0)
        (visible house3loc0 house2loc0)
        (visible house3loc0 house4loc0)
        (visible house4loc0 house3loc0)
        (visible house4loc0 house5loc0)
        (visible house5loc0 house4loc0)
        (visible house5loc0 house6loc0)
        (visible house6loc0 house5loc0)
        (visible house6loc0 house7loc0)
        (visible house7loc0 house6loc0)
        (visible house7loc0 house8loc0)
        (visible house8loc0 house7loc0)
        (visible house8loc0 house9loc0)
        (visible house9loc0 house8loc0)
        (visible house9loc0 house0loc0)

        ;second neighbourhood

        (visible house10loc0 house11loc0)
        (visible house10loc0 house19loc0)
        (visible house11loc0 house10loc0)
        (visible house11loc0 house12loc0)
        (visible house12loc0 house11loc0)
        (visible house12loc0 house13loc0)
        (visible house13loc0 house12loc0)
        (visible house13loc0 house14loc0)
        (visible house14loc0 house13loc0)
        (visible house14loc0 house15loc0)
        (visible house15loc0 house14loc0)
        (visible house15loc0 house16loc0)
        (visible house16loc0 house15loc0)
        (visible house16loc0 house17loc0)
        (visible house17loc0 house16loc0)
        (visible house17loc0 house18loc0)
        (visible house18loc0 house17loc0)
        (visible house18loc0 house19loc0)
        (visible house19loc0 house18loc0)
        (visible house19loc0 house10loc0)


        (is_house_connection house0loc0 house0loc1)
        (is_house_connection house1loc0 house1loc1)
        (is_house_connection house2loc0 house2loc1)
        (is_house_connection house3loc0 house3loc1)
        (is_house_connection house4loc0 house4loc1)
        (is_house_connection house5loc0 house5loc1)
        (is_house_connection house6loc0 house6loc1)
        (is_house_connection house7loc0 house7loc1)
        (is_house_connection house8loc0 house8loc1)
        (is_house_connection house9loc0 house9loc1)
        (is_house_connection house10loc0 house10loc1)
        (is_house_connection house11loc0 house11loc1)
        (is_house_connection house12loc0 house12loc1)
        (is_house_connection house13loc0 house13loc1)
        (is_house_connection house14loc0 house14loc1)
        (is_house_connection house15loc0 house15loc1)
        (is_house_connection house16loc0 house16loc1)
        (is_house_connection house17loc0 house17loc1)
        (is_house_connection house18loc0 house18loc1)
        (is_house_connection house19loc0 house19loc1)


        (is_house_connection house0loc1 house0loc0)
        (is_house_connection house1loc1 house1loc0)
        (is_house_connection house2loc1 house2loc0)
        (is_house_connection house3loc1 house3loc0)
        (is_house_connection house4loc1 house4loc0)
        (is_house_connection house5loc1 house5loc0)
        (is_house_connection house6loc1 house6loc0)
        (is_house_connection house7loc1 house7loc0)
        (is_house_connection house8loc1 house8loc0)
        (is_house_connection house9loc1 house9loc0)
        (is_house_connection house10loc1 house10loc0)
        (is_house_connection house11loc1 house11loc0)
        (is_house_connection house12loc1 house12loc0)
        (is_house_connection house13loc1 house13loc0)
        (is_house_connection house14loc1 house14loc0)
        (is_house_connection house15loc1 house15loc0)
        (is_house_connection house16loc1 house16loc0)
        (is_house_connection house17loc1 house17loc0)
        (is_house_connection house18loc1 house18loc0)
        (is_house_connection house19loc1 house19loc0)


        (is_house_connection house0loc0 house1loc0)
        (is_house_connection house0loc0 house9loc0)
        (is_house_connection house1loc0 house0loc0)
        (is_house_connection house1loc0 house2loc0)
        (is_house_connection house2loc0 house1loc0)
        (is_house_connection house2loc0 house3loc0)
        (is_house_connection house3loc0 house2loc0)
        (is_house_connection house3loc0 house4loc0)
        (is_house_connection house4loc0 house3loc0)
        (is_house_connection house4loc0 house5loc0)
        (is_house_connection house5loc0 house4loc0)
        (is_house_connection house5loc0 house6loc0)
        (is_house_connection house6loc0 house5loc0)
        (is_house_connection house6loc0 house7loc0)
        (is_house_connection house7loc0 house6loc0)
        (is_house_connection house7loc0 house8loc0)
        (is_house_connection house8loc0 house7loc0)
        (is_house_connection house8loc0 house9loc0)
        (is_house_connection house9loc0 house8loc0)
        (is_house_connection house9loc0 house0loc0)

        ;second neighbourhood

        (is_house_connection house10loc0 house11loc0)
        (is_house_connection house10loc0 house19loc0)
        (is_house_connection house11loc0 house10loc0)
        (is_house_connection house11loc0 house12loc0)
        (is_house_connection house12loc0 house11loc0)
        (is_house_connection house12loc0 house13loc0)
        (is_house_connection house13loc0 house12loc0)
        (is_house_connection house13loc0 house14loc0)
        (is_house_connection house14loc0 house13loc0)
        (is_house_connection house14loc0 house15loc0)
        (is_house_connection house15loc0 house14loc0)
        (is_house_connection house15loc0 house16loc0)
        (is_house_connection house16loc0 house15loc0)
        (is_house_connection house16loc0 house17loc0)
        (is_house_connection house17loc0 house16loc0)
        (is_house_connection house17loc0 house18loc0)
        (is_house_connection house18loc0 house17loc0)
        (is_house_connection house18loc0 house19loc0)
        (is_house_connection house19loc0 house18loc0)
        (is_house_connection house19loc0 house10loc0)

        (is_postoffice_connection house0loc0 postoffice)
        (is_postoffice_connection house10loc0 postoffice)

        (is_postoffice_connection postoffice house0loc0)
        (is_postoffice_connection postoffice house10loc0)

        (door_loc house0loc0)
        (door_loc house1loc0)
        (door_loc house2loc0)
        (door_loc house3loc0)
        (door_loc house4loc0)
        (door_loc house5loc0)
        (door_loc house6loc0)
        (door_loc house7loc0)
        (door_loc house8loc0)
        (door_loc house9loc0)
        (door_loc house10loc0)
        (door_loc house11loc0)
        (door_loc house12loc0)
        (door_loc house13loc0)
        (door_loc house14loc0)
        (door_loc house15loc0)
        (door_loc house16loc0)
        (door_loc house17loc0)
        (door_loc house18loc0)
        (door_loc house19loc0)

        (connected house0loc0 house0loc1)
        (connected house1loc0 house1loc1)
        (connected house2loc0 house2loc1)
        (connected house3loc0 house3loc1)
        (connected house4loc0 house4loc1)
        (connected house5loc0 house5loc1)
        (connected house6loc0 house6loc1)
        (connected house7loc0 house7loc1)
        (connected house8loc0 house8loc1)
        (connected house9loc0 house9loc1)
        (connected house10loc0 house10loc1)
        (connected house11loc0 house11loc1)
        (connected house12loc0 house12loc1)
        (connected house13loc0 house13loc1)
        (connected house14loc0 house14loc1)
        (connected house15loc0 house15loc1)
        (connected house16loc0 house16loc1)
        (connected house17loc0 house17loc1)
        (connected house18loc0 house18loc1)
        (connected house19loc0 house19loc1)

        (door_open house2loc0)
        (door_open house3loc0)
        (door_open house4loc0)
        (door_open house5loc0)
        (door_open house6loc0)
        (door_open house7loc0)
        (door_open house8loc0)
        (door_open house9loc0)
        (door_open house10loc0)
        (door_open house11loc0)
        (door_open house12loc0)
        (door_open house13loc0)
        (door_open house14loc0)
        (door_open house15loc0)
        (door_open house16loc0)
        (door_open house17loc0)
        (door_open house18loc0)
        (door_open house19loc0)
)

(:unknown-prop

   (house0loc0 (door_closed house0loc0) )
   (house1loc0 (door_closed house1loc0) )

)
(:knowledge-updates

  (house0loc0 (door_closed house0loc0) ((not (door_closed house0loc0)) => (door_open house0loc0)) )
  (house1loc0 (door_closed house1loc0) ((not (door_closed house1loc0)) => (door_open house1loc0)) )
)


(:goal
       (and (parcel_delivered postman0 house0loc1)
            (parcel_delivered postman0 house1loc1)
))
(:constraints
       (and (preference sb1 (sometime-before (parcel_delivered postman0 house1loc1) (parcel_delivered postman0 house0loc1)))

))

(:metric minimize
       (* (is-violated sb1) 6.22222)
)
)
