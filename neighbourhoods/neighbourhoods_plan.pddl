   Time: (Action Name)                                                    [Duration]
 0.000: (navigate-postoffice postman0 postoffice house0loc0)                 [1.000]
 1.001: (sense-door postman0 camera0 house0loc0)                            [10.000]
         <BRANCH, 1, true, (door_closed house0loc0)>
11.002:      (open-door postman0 house0loc0)                                [20.000]
31.003:      (navigate-in-neighbourhood postman0 house0loc0 house0loc1)      [0.200]
31.203:      (deliver postman0 house0loc0 house0loc1)                       [20.000]
51.204:      (navigate-in-neighbourhood postman0 house0loc1 house0loc0)      [0.200]
51.405:      (navigate-in-neighbourhood postman0 house0loc0 house1loc0)      [0.200]
51.605:      (sense-door postman0 camera0 house1loc0)                       [10.000]
             <BRANCH, 2, true, (door_closed house1loc0)>
61.606:          (open-door postman0 house1loc0)                            [20.000]
81.607:          (navigate-in-neighbourhood postman0 house1loc0 house1loc1)  [0.200]
81.807:          (deliver postman0 house1loc0 house1loc1)                   [20.000]
             <BRANCH, 2, false, (door_closed house1loc0)>
61.606:          (navigate-in-neighbourhood postman0 house1loc0 house1loc1)  [0.200]
81.807:          (deliver postman0 house1loc0 house1loc1)                   [20.000]
         <BRANCH, 1, false,(door_closed house0loc0)>
11.002:      (navigate-in-neighbourhood postman0 house0loc0 house0loc1)      [0.200]
11.203:      (deliver postman0 house0loc0 house0loc1)                       [20.000]
31.204:      (navigate-in-neighbourhood postman0 house0loc1 house0loc0)      [0.200]
31.405:      (navigate-in-neighbourhood postman0 house0loc0 house1loc0)      [0.200]
31.605:      (sense-door postman0 camera0 house1loc0)                       [10.000]
             <BRANCH, 3, true, (door_closed house1loc0)>
41.606:          (open-door postman0 house1loc0)                            [20.000]
61.607:          (navigate-in-neighbourhood postman0 house1loc0 house1loc1)  [0.200]
61.807:          (deliver postman0 house1loc0 house1loc1)                   [20.000]
             <BRANCH, 3, false, (door_closed house1loc0)>
41.606:          (navigate-in-neighbourhood postman0 house1loc0 house1loc1)  [0.200]
41.807:          (deliver postman0 house1loc0 house1loc1)                   [20.000]
