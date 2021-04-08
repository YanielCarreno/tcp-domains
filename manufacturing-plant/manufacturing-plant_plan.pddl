   Time: (Action Name)                                                   [Duration]
  0.000: (navigation husky0 wp0 wp12)                                     [211.812]
211.813: (target-approach husky0 wp12)                                     [10.000]
221.814: (position-arm husky0 valve1 wp12 arm0)                            [10.000]
221.814: (sense-flow husky0 camera0 valve1 wp12)                            [5.000]
         <BRANCH, 1, true, (flow_val valve1 f1)>
231.815:     (regulate-bop husky0 arm0 valve1 wp12 f1)                     [15.000]
246.816:     (navigation husky0 wp12 wp15)                                [143.178]
389.995:     (navigation husky0 wp15 wp0)                                  [76.446]
466.442:     (recover husky0 wp0)                                           [1.000]
         <BRANCH, 1, false, (flow_val valve1 f1)>
             <BRANCH, 2, true, (flow_val valve1 f2)>
231.815:         (regulate-bop husky0 arm0 valve1 wp12 f2)                  [15.000]
246.816:         (navigation husky0 wp12 wp15)                             [143.178]
389.995:         (navigation husky0 wp15 wp0)                               [76.446]
466.442:         (recover husky0 wp0)                                        [1.000]
             <BRANCH, 2, false, (flow_val valve1 f2)>
                 <BRANCH, 3, true, (flow_val valve1 f3)>
231.815:             (regulate-bop husky0 arm0 valve1 wp12 f3)              [15.000]
246.816:             (navigation husky0 wp12 wp15)                         [143.178]
389.995:             (navigation husky0 wp15 wp0)                           [76.446]
466.442:             (recover husky0 wp0)                                    [1.000]
                 <BRANCH, 3, false, (flow_val valve1 f3)>
                     <BRANCH, 4, true, (flow_val valve1 f4)>
231.815:                  (regulate-bop husky0 arm0 valve1 wp12 f3)         [15.000]
246.816:                  (navigation husky0 wp12 wp15)                    [143.178]
389.995:                  (navigation husky0 wp15 wp0)                      [76.446]
466.442:                  (recover husky0 wp0)                               [1.000]
                     <BRANCH, 4, false, (flow_val valve1 f4)>
231.815:                  (navigation husky0 wp12 wp15)                    [143.178]
374.994:                  (navigation husky0 wp15 wp0)                      [76.446]
451.442:                  (recover husky0 wp0)                               [1.000]
