// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract NoFlush10 {
    uint16[3000] public noflush = [
          208,  2526, 3139, 2647, 3139, 3140, 2757, 3139,
  3140, 3141, 2856, 2941, 2942, 2943, 2944, 220,
  2527, 3139, 2648, 3139, 3140, 2758, 3139, 3140,
  3141, 2857, 3139, 3140, 3141, 3142, 2945, 3018,
  3019, 3020, 3021, 3022, 232,  239,  249,  240,
  249,  249,  241,  249,  249,  249,  242,  249,
  249,  249,  249,  243,  249,  249,  249,  249,
  249,  244,  83, 84, 85, 86, 87, 88,
  17, 177,  2473, 189,  29, 177,  2578, 2699,
  189,  2484, 2809, 2605, 201,  201,  41, 177,
  2578, 2699, 189,  2579, 5746, 2700, 2809, 2810,
  201,  2495, 2908, 2616, 2908, 2909, 2726, 213,
  213,  213,  53, 177,  2578, 2699, 189,  2579,
  5746, 2700, 2809, 2810, 201,  2580, 5747, 2701,
  5756, 5801, 2811, 2908, 2909, 2910, 213,  2506,
  2996, 2627, 2996, 2997, 2737, 2996, 2997, 2998,
  2836, 225,  225,  225,  225,  65, 177,  2578,
  2699, 189,  2579, 5746, 2700, 2809, 2810, 201,
  2580, 5747, 2701, 5756, 5801, 2811, 2908, 2909,
  2910, 213,  2581, 5748, 2702, 5757, 5802, 2812,
  5765, 5810, 5846, 2911, 2996, 2997, 2998, 2999,
  225,  2517, 3073, 2638, 3073, 3074, 2748, 3073,
  3074, 3075, 2847, 3073, 3074, 3075, 3076, 2935,
  237,  237,  237,  237,  237,  77, 177,  2578,
  2699, 189,  2579, 5746, 2700, 2809, 2810, 201,
  2580, 5747, 2701, 5756, 5801, 2811, 2908, 2909,
  2910, 213,  2581, 5748, 2702, 5757, 5802, 2812,
  5765, 5810, 5846, 2911, 2996, 2997, 2998, 2999,
  225,  2582, 5749, 2703, 5758, 5803, 2813, 5766,
  5811, 5847, 2912, 5773, 5818, 5854, 1603, 3000,
  3073, 3074, 3075, 3076, 3077, 237,  2528, 3139,
  2649, 3139, 3140, 2759, 3139, 3140, 3141, 2858,
  3139, 3140, 3141, 3142, 2946, 3139, 3140, 3141,
  3142, 3143, 3023, 249,  249,  249,  249,  249,
  249,  89, 173,  2534, 2655, 185,  2535, 3194,
  2656, 2765, 2766, 197,  2536, 3194, 2657, 3194,
  3195, 2767, 2864, 2865, 2866, 209,  2537, 3194,
  2658, 3194, 3195, 2768, 3194, 3195, 3196, 2867,
  2952, 2953, 2954, 2955, 221,  2538, 3194, 2659,
  3194, 3195, 2769, 3194, 3195, 3196, 2868, 3194,
  3195, 3196, 3197, 2956, 3029, 3030, 3031, 3032,
  3033, 233,  2539, 3194, 2660, 3194, 3195, 2770,
  3194, 3195, 3196, 2869, 3194, 3195, 3196, 3197,
  2957, 3194, 3195, 3196, 3197, 3198, 3034, 3095,
  3096, 3097, 3098, 3099, 3100, 245,  251,  261,
  252,  261,  261,  253,  261,  261,  261,  254,
  261,  261,  261,  261,  255,  261,  261,  261,
  261,  261,  256,  261,  261,  261,  261,  261,
  261,  257,  95, 96, 97, 98, 99, 100,
  101,  18, 177,  2474, 189,  30, 177,  2578,
  2699, 189,  2485, 2809, 2606, 201,  201,  42,
  177,  2578, 2699, 189,  2579, 5746, 2700, 2809,
  2810, 201,  2496, 2908, 2617, 2908, 2909, 2727,
  213,  213,  213,  54, 177,  2578, 2699, 189,
  2579, 5746, 2700, 2809, 2810, 201,  2580, 5747,
  2701, 5756, 5801, 2811, 2908, 2909, 2910, 213,
  2507, 2996, 2628, 2996, 2997, 2738, 2996, 2997,
  2998, 2837, 225,  225,  225,  225,  66, 177,
  2578, 2699, 189,  2579, 5746, 2700, 2809, 2810,
  201,  2580, 5747, 2701, 5756, 5801, 2811, 2908,
  2909, 2910, 213,  2581, 5748, 2702, 5757, 5802,
  2812, 5765, 5810, 5846, 2911, 2996, 2997, 2998,
  2999, 225,  2518, 3073, 2639, 3073, 3074, 2749,
  3073, 3074, 3075, 2848, 3073, 3074, 3075, 3076,
  2936, 237,  237,  237,  237,  237,  78, 177,
  2578, 2699, 189,  2579, 5746, 2700, 2809, 2810,
  201,  2580, 5747, 2701, 5756, 5801, 2811, 2908,
  2909, 2910, 213,  2581, 5748, 2702, 5757, 5802,
  2812, 5765, 5810, 5846, 2911, 2996, 2997, 2998,
  2999, 225,  2582, 5749, 2703, 5758, 5803, 2813,
  5766, 5811, 5847, 2912, 5773, 5818, 5854, 5882,
  3000, 3073, 3074, 3075, 3076, 3077, 237,  2529,
  3139, 2650, 3139, 3140, 2760, 3139, 3140, 3141,
  2859, 3139, 3140, 3141, 3142, 2947, 3139, 3140,
  3141, 3142, 3143, 3024, 249,  249,  249,  249,
  249,  249,  90, 177,  2578, 2699, 189,  2579,
  5746, 2700, 2809, 2810, 201,  2580, 5747, 2701,
  5756, 5801, 2811, 2908, 2909, 2910, 213,  2581,
  5748, 2702, 5757, 5802, 2812, 5765, 5810, 5846,
  2911, 2996, 2997, 2998, 2999, 225,  2582, 5749,
  2703, 5758, 5803, 2813, 5766, 5811, 5847, 2912,
  5773, 5818, 5854, 5882, 3000, 3073, 3074, 3075,
  3076, 3077, 237,  2583, 5750, 2704, 5759, 5804,
  2814, 5767, 5812, 5848, 2913, 5774, 5819, 5855,
  5883, 3001, 5780, 5825, 5861, 5889, 1604, 3078,
  3139, 3140, 3141, 3142, 3143, 3144, 249,  2540,
  3194, 2661, 3194, 3195, 2771, 3194, 3195, 3196,
  2870, 3194, 3195, 3196, 3197, 2958, 3194, 3195,
  3196, 3197, 3198, 3035, 3194, 3195, 3196, 3197,
  3198, 3199, 3101, 261,  261,  261,  261,  261,
  261,  261,  102,  174,  2545, 2666, 186,  2546,
  3238, 2667, 2776, 2777, 198,  2547, 3238, 2668,
  3238, 3239, 2778, 2875, 2876, 2877, 210,  2548,
  3238, 2669, 3238, 3239, 2779, 3238, 3239, 3240,
  2878, 2963, 2964, 2965, 2966, 222,  2549, 3238,
  2670, 3238, 3239, 2780, 3238, 3239, 3240, 2879,
  3238, 3239, 3240, 3241, 2967, 3040, 3041, 3042,
  3043, 3044, 234,  2550, 3238, 2671, 3238, 3239,
  2781, 3238, 3239, 3240, 2880, 3238, 3239, 3240,
  3241, 2968, 3238, 3239, 3240, 3241, 3242, 3045,
  3106, 3107, 3108, 3109, 3110, 3111, 246,  2551,
  3238, 2672, 3238, 3239, 2782, 3238, 3239, 3240,
  2881, 3238, 3239, 3240, 3241, 2969, 3238, 3239,
  3240, 3241, 3242, 3046, 3238, 3239, 3240, 3241,
  3242, 3243, 3112, 3161, 3162, 3163, 3164, 3165,
  3166, 3167, 258,  263,  273,  264,  273,  273,
  265,  273,  273,  273,  266,  273,  273,  273,
  273,  267,  273,  273,  273,  273,  273,  268,
  273,  273,  273,  273,  273,  273,  269,  273,
  273,  273,  273,  273,  273,  273,  270,  107,
  108,  109,  110,  111,  112,  113,  114,  19,
  177,  2475, 189,  31, 177,  2578, 2699, 189,
  2486, 2809, 2607, 201,  201,  43, 177,  2578,
  2699, 189,  2579, 5746, 2700, 2809, 2810, 201,
  2497, 2908, 2618, 2908, 2909, 2728, 213,  213,
  213,  55, 177,  2578, 2699, 189,  2579, 5746,
  2700, 2809, 2810, 201,  2580, 5747, 2701, 5756,
  5801, 2811, 2908, 2909, 2910, 213,  2508, 2996,
  2629, 2996, 2997, 2739, 2996, 2997, 2998, 2838,
  225,  225,  225,  225,  67, 177,  2578, 2699,
  189,  2579, 5746, 2700, 2809, 2810, 201,  2580,
  5747, 2701, 5756, 5801, 2811, 2908, 2909, 2910,
  213,  2581, 5748, 2702, 5757, 5802, 2812, 5765,
  5810, 5846, 2911, 2996, 2997, 2998, 2999, 225,
  2519, 3073, 2640, 3073, 3074, 2750, 3073, 3074,
  3075, 2849, 3073, 3074, 3075, 3076, 2937, 237,
  237,  237,  237,  237,  79, 177,  2578, 2699,
  189,  2579, 5746, 2700, 2809, 2810, 201,  2580,
  5747, 2701, 5756, 5801, 2811, 2908, 2909, 2910,
  213,  2581, 5748, 2702, 5757, 5802, 2812, 5765,
  5810, 5846, 2911, 2996, 2997, 2998, 2999, 225,
  2582, 5749, 2703, 5758, 5803, 2813, 5766, 5811,
  5847, 2912, 5773, 5818, 5854, 5882, 3000, 3073,
  3074, 3075, 3076, 3077, 237,  2530, 3139, 2651,
  3139, 3140, 2761, 3139, 3140, 3141, 2860, 3139,
  3140, 3141, 3142, 2948, 3139, 3140, 3141, 3142,
  3143, 3025, 249,  249,  249,  249,  249,  249,
  91, 177,  2578, 2699, 189,  2579, 5746, 2700,
  2809, 2810, 201,  2580, 5747, 2701, 5756, 5801,
  2811, 2908, 2909, 2910, 213,  2581, 5748, 2702,
  5757, 5802, 2812, 5765, 5810, 5846, 2911, 2996,
  2997, 2998, 2999, 225,  2582, 5749, 2703, 5758,
  5803, 2813, 5766, 5811, 5847, 2912, 5773, 5818,
  5854, 5882, 3000, 3073, 3074, 3075, 3076, 3077,
  237,  2583, 5750, 2704, 5759, 5804, 2814, 5767,
  5812, 5848, 2913, 5774, 5819, 5855, 5883, 3001,
  5780, 5825, 5861, 5889, 5910, 3078, 3139, 3140,
  3141, 3142, 3143, 3144, 249,  2541, 3194, 2662,
  3194, 3195, 2772, 3194, 3195, 3196, 2871, 3194,
  3195, 3196, 3197, 2959, 3194, 3195, 3196, 3197,
  3198, 3036, 3194, 3195, 3196, 3197, 3198, 3199,
  3102, 261,  261,  261,  261,  261,  261,  261,
  103,  177,  2578, 2699, 189,  2579, 5746, 2700,
  2809, 2810, 201,  2580, 5747, 2701, 5756, 5801,
  2811, 2908, 2909, 2910, 213,  2581, 5748, 2702,
  5757, 5802, 2812, 5765, 5810, 5846, 2911, 2996,
  2997, 2998, 2999, 225,  2582, 5749, 2703, 5758,
  5803, 2813, 5766, 5811, 5847, 2912, 5773, 5818,
  5854, 5882, 3000, 3073, 3074, 3075, 3076, 3077,
  237,  2583, 5750, 2704, 5759, 5804, 2814, 5767,
  5812, 5848, 2913, 5774, 5819, 5855, 5883, 3001,
  5780, 5825, 5861, 5889, 5910, 3078, 3139, 3140,
  3141, 3142, 3143, 3144, 249,  2584, 5751, 2705,
  5760, 5805, 2815, 5768, 5813, 5849, 2914, 5775,
  5820, 5856, 5884, 3002, 5781, 5826, 5862, 5890,
  5911, 3079, 5786, 5831, 5867, 5895, 5916, 1605,
  3145, 3194, 3195, 3196, 3197, 3198, 3199, 3200,
  261,  2552, 3238, 2673, 3238, 3239, 2783, 3238,
  3239, 3240, 2882, 3238, 3239, 3240, 3241, 2970,
  3238, 3239, 3240, 3241, 3242, 3047, 3238, 3239,
  3240, 3241, 3242, 3243, 3113, 3238, 3239, 3240,
  3241, 3242, 3243, 3244, 3168, 273,  273,  273,
  273,  273,  273,  273,  273,  115,  175,  2556,
  2677, 187,  2557, 3271, 2678, 2787, 2788, 199,
  2558, 3271, 2679, 3271, 3272, 2789, 2886, 2887,
  2888, 211,  2559, 3271, 2680, 3271, 3272, 2790,
  3271, 3272, 3273, 2889, 2974, 2975, 2976, 2977,
  223,  2560, 3271, 2681, 3271, 3272, 2791, 3271,
  3272, 3273, 2890, 3271, 3272, 3273, 3274, 2978,
  3051, 3052, 3053, 3054, 3055, 235,  2561, 3271,
  2682, 3271, 3272, 2792, 3271, 3272, 3273, 2891,
  3271, 3272, 3273, 3274, 2979, 3271, 3272, 3273,
  3274, 3275, 3056, 3117, 3118, 3119, 3120, 3121,
  3122, 247,  2562, 3271, 2683, 3271, 3272, 2793,
  3271, 3272, 3273, 2892, 3271, 3272, 3273, 3274,
  2980, 3271, 3272, 3273, 3274, 3275, 3057, 3271,
  3272, 3273, 3274, 3275, 3276, 3123, 3172, 3173,
  3174, 3175, 3176, 3177, 3178, 259,  2563, 3271,
  2684, 3271, 3272, 2794, 3271, 3272, 3273, 2893,
  3271, 3272, 3273, 3274, 2981, 3271, 3272, 3273,
  3274, 3275, 3058, 3271, 3272, 3273, 3274, 3275,
  3276, 3124, 3271, 3272, 3273, 3274, 3275, 3276,
  3277, 3179, 3216, 3217, 3218, 3219, 3220, 3221,
  3222, 3223, 271,  275,  285,  276,  285,  285,
  277,  285,  285,  285,  278,  285,  285,  285,
  285,  279,  285,  285,  285,  285,  285,  280,
  285,  285,  285,  285,  285,  285,  281,  285,
  285,  285,  285,  285,  285,  285,  282,  285,
  285,  285,  285,  285,  285,  285,  285,  283,
  119,  120,  121,  122,  123,  124,  125,  126,
  127,  20, 177,  2476, 189,  32, 177,  2578,
  2699, 189,  2487, 2809, 2608, 201,  201,  44,
  177,  2578, 2699, 189,  2579, 5746, 2700, 2809,
  2810, 201,  2498, 2908, 2619, 2908, 2909, 2729,
  213,  213,  213,  56, 177,  2578, 2699, 189,
  2579, 5746, 2700, 2809, 2810, 201,  2580, 5747,
  2701, 5756, 5801, 2811, 2908, 2909, 2910, 213,
  2509, 2996, 2630, 2996, 2997, 2740, 2996, 2997,
  2998, 2839, 225,  225,  225,  225,  68, 177,
  2578, 2699, 189,  2579, 5746, 2700, 2809, 2810,
  201,  2580, 5747, 2701, 5756, 5801, 2811, 2908,
  2909, 2910, 213,  2581, 5748, 2702, 5757, 5802,
  2812, 5765, 5810, 5846, 2911, 2996, 2997, 2998,
  2999, 225,  2520, 3073, 2641, 3073, 3074, 2751,
  3073, 3074, 3075, 2850, 3073, 3074, 3075, 3076,
  2938, 237,  237,  237,  237,  237,  80, 177,
  2578, 2699, 189,  2579, 5746, 2700, 2809, 2810,
  201,  2580, 5747, 2701, 5756, 5801, 2811, 2908,
  2909, 2910, 213,  2581, 5748, 2702, 5757, 5802,
  2812, 5765, 5810, 5846, 2911, 2996, 2997, 2998,
  2999, 225,  2582, 5749, 2703, 5758, 5803, 2813,
  5766, 5811, 5847, 2912, 5773, 5818, 5854, 5882,
  3000, 3073, 3074, 3075, 3076, 3077, 237,  2531,
  3139, 2652, 3139, 3140, 2762, 3139, 3140, 3141,
  2861, 3139, 3140, 3141, 3142, 2949, 3139, 3140,
  3141, 3142, 3143, 3026, 249,  249,  249,  249,
  249,  249,  92, 177,  2578, 2699, 189,  2579,
  5746, 2700, 2809, 2810, 201,  2580, 5747, 2701,
  5756, 5801, 2811, 2908, 2909, 2910, 213,  2581,
  5748, 2702, 5757, 5802, 2812, 5765, 5810, 5846,
  2911, 2996, 2997, 2998, 2999, 225,  2582, 5749,
  2703, 5758, 5803, 2813, 5766, 5811, 5847, 2912,
  5773, 5818, 5854, 5882, 3000, 3073, 3074, 3075,
  3076, 3077, 237,  2583, 5750, 2704, 5759, 5804,
  2814, 5767, 5812, 5848, 2913, 5774, 5819, 5855,
  5883, 3001, 5780, 5825, 5861, 5889, 5910, 3078,
  3139, 3140, 3141, 3142, 3143, 3144, 249,  2542,
  3194, 2663, 3194, 3195, 2773, 3194, 3195, 3196,
  2872, 3194, 3195, 3196, 3197, 2960, 3194, 3195,
  3196, 3197, 3198, 3037, 3194, 3195, 3196, 3197,
  3198, 3199, 3103, 261,  261,  261,  261,  261,
  261,  261,  104,  177,  2578, 2699, 189,  2579,
  5746, 2700, 2809, 2810, 201,  2580, 5747, 2701,
  5756, 5801, 2811, 2908, 2909, 2910, 213,  2581,
  5748, 2702, 5757, 5802, 2812, 5765, 5810, 5846,
  2911, 2996, 2997, 2998, 2999, 225,  2582, 5749,
  2703, 5758, 5803, 2813, 5766, 5811, 5847, 2912,
  5773, 5818, 5854, 5882, 3000, 3073, 3074, 3075,
  3076, 3077, 237,  2583, 5750, 2704, 5759, 5804,
  2814, 5767, 5812, 5848, 2913, 5774, 5819, 5855,
  5883, 3001, 5780, 5825, 5861, 5889, 5910, 3078,
  3139, 3140, 3141, 3142, 3143, 3144, 249,  2584,
  5751, 2705, 5760, 5805, 2815, 5768, 5813, 5849,
  2914, 5775, 5820, 5856, 5884, 3002, 5781, 5826,
  5862, 5890, 5911, 3079, 5786, 5831, 5867, 5895,
  5916, 5931, 3145, 3194, 3195, 3196, 3197, 3198,
  3199, 3200, 261,  2553, 3238, 2674, 3238, 3239,
  2784, 3238, 3239, 3240, 2883, 3238, 3239, 3240,
  3241, 2971, 3238, 3239, 3240, 3241, 3242, 3048,
  3238, 3239, 3240, 3241, 3242, 3243, 3114, 3238,
  3239, 3240, 3241, 3242, 3243, 3244, 3169, 273,
  273,  273,  273,  273,  273,  273,  273,  116,
  177,  2578, 2699, 189,  2579, 5746, 2700, 2809,
  2810, 201,  2580, 5747, 2701, 5756, 5801, 2811,
  2908, 2909, 2910, 213,  2581, 5748, 2702, 5757,
  5802, 2812, 5765, 5810, 5846, 2911, 2996, 2997,
  2998, 2999, 225,  2582, 5749, 2703, 5758, 5803,
  2813, 5766, 5811, 5847, 2912, 5773, 5818, 5854,
  5882, 3000, 3073, 3074, 3075, 3076, 3077, 237,
  2583, 5750, 2704, 5759, 5804, 2814, 5767, 5812,
  5848, 2913, 5774, 5819, 5855, 5883, 3001, 5780,
  5825, 5861, 5889, 5910, 3078, 3139, 3140, 3141,
  3142, 3143, 3144, 249,  2584, 5751, 2705, 5760,
  5805, 2815, 5768, 5813, 5849, 2914, 5775, 5820,
  5856, 5884, 3002, 5781, 5826, 5862, 5890, 5911,
  3079, 5786, 5831, 5867, 5895, 5916, 5931, 3145,
  3194, 3195, 3196, 3197, 3198, 3199, 3200, 261,
  2585, 5752, 2706, 5761, 5806, 2816, 5769, 5814,
  5850, 2915, 5776, 5821, 5857, 5885, 3003, 5782,
  5827, 5863, 5891, 5912, 3080, 5787, 5832, 5868,
  5896, 5917, 5932, 3146, 1607, 1607, 1607, 1607,
  1607, 1607, 1606, 1607, 3238, 3239, 3240, 3241,
  3242, 3243, 3244, 1607, 273,  2564, 3271, 2685,
  3271, 3272, 2795, 3271, 3272, 3273, 2894, 3271,
  3272, 3273, 3274, 2982, 3271, 3272, 3273, 3274,
  3275, 3059, 3271, 3272, 3273, 3274, 3275, 3276,
  3125, 3271, 3272, 3273, 3274, 3275, 3276, 3277,
  3180, 3271, 3272, 3273, 3274, 3275, 3276, 3277,
  1607, 3224, 285,  285,  285,  285,  285,  285,
  285,  285,  285,  128,  176,  2567, 2688, 188,
  2568, 3293, 2689, 2798, 2799, 200,  2569, 3293,
  2690, 3293, 3294, 2800, 2897, 2898, 2899, 212,
  2570, 3293, 2691, 3293, 3294, 2801, 3293, 3294,
  3295, 2900, 2985, 2986, 2987, 2988, 224,  2571,
  3293, 2692, 3293, 3294, 2802, 3293, 3294, 3295,
  2901, 3293, 3294, 3295, 3296, 2989, 3062, 3063,
  3064, 3065, 3066, 236,  2572, 3293, 2693, 3293,
  3294, 2803, 3293, 3294, 3295, 2902, 3293, 3294,
  3295, 3296, 2990, 3293, 3294, 3295, 3296, 3297,
  3067, 3128, 3129, 3130, 3131, 3132, 3133, 248,
  2573, 3293, 2694, 3293, 3294, 2804, 3293, 3294,
  3295, 2903, 3293, 3294, 3295, 3296, 2991, 3293,
  3294, 3295, 3296, 3297, 3068, 3293, 3294, 3295,
  3296, 3297, 3298, 3134, 3183, 3184, 3185, 3186,
  3187, 3188, 3189, 260,  2574, 3293, 2695, 3293,
  3294, 2805, 3293, 3294, 3295, 2904, 3293, 3294,
  3295, 3296, 2992, 3293, 3294, 3295, 3296, 3297,
  3069, 3293, 3294, 3295, 3296, 3297, 3298, 3135,
  3293, 3294, 3295, 3296, 3297, 3298, 3299, 3190,
  3227, 3228, 3229, 3230, 3231, 3232, 3233, 3234,
  272,  2575, 3293, 2696, 3293, 3294, 2806, 3293,
  3294, 3295, 2905, 3293, 3294, 3295, 3296, 2993,
  3293, 3294, 3295, 3296, 3297, 3070, 3293, 3294,
  3295, 3296, 3297, 3298, 3136, 3293, 3294, 3295,
  3296, 3297, 3298, 3299, 3191, 3293, 3294, 3295,
  3296, 3297, 3298, 3299, 1607, 3235, 3260, 3261,
  3262, 3263, 3264, 3265, 3266, 3267, 3268, 284,
  287,  297,  288,  297,  297,  289,  297,  297,
  297,  290,  297,  297,  297,  297,  291,  297,
  297,  297,  297,  297,  292,  297,  297,  297,
  297,  297,  297,  293,  297,  297,  297,  297,
  297,  297,  297,  294,  297,  297,  297,  297,
  297,  297,  297,  297,  295,  297,  297,  297,
  297,  297,  297,  297,  297,  297,  296,  131,
  132,  133,  134,  135,  136,  137,  138,  139,
  140,  21, 177,  299,  189,  33, 177,  299,
  300,  189,  299,  301,  300,  201,  201,  45,
  177,  299,  300,  189,  299,  2336, 300,  301,
  301,  201,  299,  302,  300,  302,  302,  301,
  213,  213,  213,  57, 177,  299,  300,  189,
  299,  2336, 300,  301,  301,  201,  299,  2336,
  300,  2337, 2347, 301,  302,  302,  302,  213,
  299,  303,  300,  303,  303,  301,  303,  303,
  303,  302,  225,  225,  225,  225,  69, 177,
  299,  300,  189,  299,  2336, 300,  301,  301,
  201,  299,  2336, 300,  2337, 2347, 301,  302,
  302,  302,  213,  299,  2336, 300,  2337, 2347,
  301,  2338, 2348, 2357, 302,  303,  303,  303,
  303,  225,  299,  304,  300,  304,  304,  301,
  304,  304,  304,  302,  304,  304,  304,  304,
  303,  237,  237,  237,  237,  237,  81, 177,
  299,  300,  189,  299,  2336, 300,  301,  301,
  201,  299,  2336, 300,  2337, 2347, 301,  302,
  302,  302,  213,  299,  2336, 300,  2337, 2347,
  301,  2338, 2348, 2357, 302,  303,  303,  303,
  303,  225,  299,  2336, 300,  2337, 2347, 301,
  2338, 2348, 2357, 302,  2339, 2349, 2358, 2366,
  303,  304,  304,  304,  304,  304,  237,  299,
  305,  300,  305,  305,  301,  305,  305,  305,
  302,  305,  305,  305,  305,  303,  305,  305,
  305,  305,  305,  304,  249,  249,  249,  249,
  249,  249,  93, 177,  299,  300,  189,  299,
  2336, 300,  301,  301,  201,  299,  2336, 300,
  2337, 2347, 301,  302,  302,  302,  213,  299,
  2336, 300,  2337, 2347, 301,  2338, 2348, 2357,
  302,  303,  303,  303,  303,  225,  299,  2336,
  300,  2337, 2347, 301,  2338, 2348, 2357, 302,
  2339, 2349, 2358, 2366, 303,  304,  304,  304,
  304,  304,  237,  299,  2336, 300,  2337, 2347,
  301,  2338, 2348, 2357, 302,  2339, 2349, 2358,
  2366, 303,  2340, 2350, 2359, 2367, 2374, 304,
  305,  305,  305,  305,  305,  305,  249,  299,
  306,  300,  306,  306,  301,  306,  306,  306,
  302,  306,  306,  306,  306,  303,  306,  306,
  306,  306,  306,  304,  306,  306,  306,  306,
  306,  306,  305,  261,  261,  261,  261,  261,
  261,  261,  105,  177,  299,  300,  189,  299,
  2336, 300,  301,  301,  201,  299,  2336, 300,
  2337, 2347, 301,  302,  302,  302,  213,  299,
  2336, 300,  2337, 2347, 301,  2338, 2348, 2357,
  302,  303,  303,  303,  303,  225,  299,  2336,
  300,  2337, 2347, 301,  2338, 2348, 2357, 302,
  2339, 2349, 2358, 2366, 303,  304,  304,  304,
  304,  304,  237,  299,  2336, 300,  2337, 2347,
  301,  2338, 2348, 2357, 302,  2339, 2349, 2358
    ];
}