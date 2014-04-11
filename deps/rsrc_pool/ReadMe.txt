Version 1.0.1 :

1. Initial version

Version 1.0.2 :

1. Added implementation of functionality with option max_idle < 0. Maximal number of idle resources in pool 
   is not limited when the option is applyed.
2. Implemented check of min_idle before removing resource when max_idle_time occurs.
3  Added test case for max_active < 0 option.
4. Added test case for max_idle < 0 option.
5. Added test cases for activate and passivate actions of resource factory.

Version 1.0.3 :

1. Fixed up a bug with 'fifo' option of the pool.