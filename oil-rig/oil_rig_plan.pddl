   Time:  (Action Name)                                                         [Duration]
  0.000:  (navigation husky0 wpgf-0 wpgf-1 pathgf-0-gf-1)                         [20.000]
 20.001:  (navigation husky0 wpgf-1 wpgf-2 pathgf-1-gf-2)                         [40.000]
 60.002:  (loccam husky0 wpgf-2 pathgf-2-gf-15)                                   [10.000]
 70.003:  (sense-path husky0 camera0 wpgf-2 pathgf-2-gf-15)                        [5.000]
          <BRANCH, 1, true, (path_free wpgf-2 pathgf-2-gf-15)>
75.004:       (inspectarea husky0 wpgf-2)                                         [15.000]
90.005:       (navigation husky0 wpgf-2 wpgf-15 pathgf-2-gf-15)                  [100.000]
190.006:      (navigation husky0 wpgf-15 wpgf-4 pathgf-15-gf-4)                  [160.000]
350.008:      (inspect-motor husky0 wpgf-4)                                        [5.000]
          <BRANCH, 1, false, (path_free wpgf-2 pathgf-2-gf-15)>
75.004:       (inspectarea husky0 wpgf-2)                                         [15.000]
90.005:       (loccam husky0 wpgf-2 pathgf-2-gf-3)                                [10.000]
100.006:      (sense-path husky0 camera0 wpgf-2 pathgf-2-gf-3)                     [5.000]
              <BRANCH, 2, true, (path_free wpgf-2 pathgf-2-gf-3)>
105.008:          (navigation husky0 wpgf-2 wpgf-3 pathgf-2-gf-3)                [160.000]
265.008:          (navigation husky0 wpgf-3 wpgf-4 pathgf-3-gf-4)                [100.000]
365.009:          (inspect-motor husky0 wpgf-4)                                    [5.000]
              <BRANCH, 2, false, (path_free wpgf-2 pathgf-2-gf-3)>
