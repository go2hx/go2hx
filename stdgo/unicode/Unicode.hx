package stdgo.unicode;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Package unicode provides data and functions to test some properties of
	// Unicode code points.
**/
private var __go2hxdoc__package:Bool;

private var __TurkishCase:SpecialCase = (new SpecialCase(0, 0,
	(new CaseRange(("73" : GoUInt32), ("73" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (232 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("105" : GoUInt32), ("105" : GoUInt32), (new GoArray<GoInt32>((199 : GoInt32), (0 : GoInt32), (199 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("304" : GoUInt32), ("304" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-199 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("305" : GoUInt32), ("305" : GoUInt32),
		(new GoArray<GoInt32>((-232 : GoInt32), (0 : GoInt32), (-232 : GoInt32)) : T_d)) : CaseRange)) : SpecialCase);

var turkishCase:SpecialCase = __TurkishCase;
var azeriCase:SpecialCase = __TurkishCase;

private var __C:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((0 : GoUInt16), (31 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((127 : GoUInt16), (159 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((173 : GoUInt16), (1536 : GoUInt16), (1363 : GoUInt16)) : Range16),
		(new Range16((1537 : GoUInt16), (1541 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1564 : GoUInt16), (1757 : GoUInt16), (193 : GoUInt16)) : Range16),
		(new Range16((1807 : GoUInt16), (2274 : GoUInt16), (467 : GoUInt16)) : Range16),
		(new Range16((6158 : GoUInt16), (8203 : GoUInt16), (2045 : GoUInt16)) : Range16),
		(new Range16((8204 : GoUInt16), (8207 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8234 : GoUInt16), (8238 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8288 : GoUInt16), (8292 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8294 : GoUInt16), (8303 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((55296 : GoUInt16), (63743 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65279 : GoUInt16), (65529 : GoUInt16), (250 : GoUInt16)) : Range16),
		(new Range16((65530 : GoUInt16), (65531 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("69821" : GoUInt32), ("69837" : GoUInt32), ("16" : GoUInt32)) : Range32),
		(new Range32(("78896" : GoUInt32), ("78904" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("113824" : GoUInt32), ("113827" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119155" : GoUInt32), ("119162" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("917505" : GoUInt32), ("917536" : GoUInt32), ("31" : GoUInt32)) : Range32),
		(new Range32(("917537" : GoUInt32), ("917631" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("983040" : GoUInt32), ("1048573" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("1048576" : GoUInt32), ("1114109" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (2 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Cc:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((0 : GoUInt16), (31 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((127 : GoUInt16), (159 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>), latinOffset: (2 : GoInt)} : RangeTable) : Ref<RangeTable>);

private var __Cf:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((173 : GoUInt16), (1536 : GoUInt16), (1363 : GoUInt16)) : Range16),
		(new Range16((1537 : GoUInt16), (1541 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1564 : GoUInt16), (1757 : GoUInt16), (193 : GoUInt16)) : Range16),
		(new Range16((1807 : GoUInt16), (2274 : GoUInt16), (467 : GoUInt16)) : Range16),
		(new Range16((6158 : GoUInt16), (8203 : GoUInt16), (2045 : GoUInt16)) : Range16),
		(new Range16((8204 : GoUInt16), (8207 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8234 : GoUInt16), (8238 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8288 : GoUInt16), (8292 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8294 : GoUInt16), (8303 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65279 : GoUInt16), (65529 : GoUInt16), (250 : GoUInt16)) : Range16),
		(new Range16((65530 : GoUInt16), (65531 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("69821" : GoUInt32), ("69837" : GoUInt32), ("16" : GoUInt32)) : Range32),
		(new Range32(("78896" : GoUInt32), ("78904" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("113824" : GoUInt32), ("113827" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119155" : GoUInt32), ("119162" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("917505" : GoUInt32), ("917536" : GoUInt32), ("31" : GoUInt32)) : Range32),
		(new Range32(("917537" : GoUInt32), ("917631" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Co:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((57344 : GoUInt16), (63743 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("983040" : GoUInt32), ("1048573" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("1048576" : GoUInt32), ("1114109" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Cs:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((55296 : GoUInt16), (57343 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __L:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((65 : GoUInt16), (90 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((97 : GoUInt16), (122 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((170 : GoUInt16), (181 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((186 : GoUInt16), (192 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((193 : GoUInt16), (214 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((216 : GoUInt16), (246 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((248 : GoUInt16), (705 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((710 : GoUInt16), (721 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((736 : GoUInt16), (740 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((748 : GoUInt16), (750 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((880 : GoUInt16), (884 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((886 : GoUInt16), (887 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((890 : GoUInt16), (893 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((895 : GoUInt16), (902 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((904 : GoUInt16), (906 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((908 : GoUInt16), (910 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((911 : GoUInt16), (929 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((931 : GoUInt16), (1013 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1015 : GoUInt16), (1153 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1162 : GoUInt16), (1327 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1329 : GoUInt16), (1366 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1369 : GoUInt16), (1376 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((1377 : GoUInt16), (1416 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1488 : GoUInt16), (1514 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1519 : GoUInt16), (1522 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1568 : GoUInt16), (1610 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1646 : GoUInt16), (1647 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1649 : GoUInt16), (1747 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1749 : GoUInt16), (1765 : GoUInt16), (16 : GoUInt16)) : Range16),
		(new Range16((1766 : GoUInt16), (1774 : GoUInt16), (8 : GoUInt16)) : Range16),
		(new Range16((1775 : GoUInt16), (1786 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((1787 : GoUInt16), (1788 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1791 : GoUInt16), (1808 : GoUInt16), (17 : GoUInt16)) : Range16),
		(new Range16((1810 : GoUInt16), (1839 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1869 : GoUInt16), (1957 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1969 : GoUInt16), (1994 : GoUInt16), (25 : GoUInt16)) : Range16),
		(new Range16((1995 : GoUInt16), (2026 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2036 : GoUInt16), (2037 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2042 : GoUInt16), (2048 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((2049 : GoUInt16), (2069 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2074 : GoUInt16), (2084 : GoUInt16), (10 : GoUInt16)) : Range16),
		(new Range16((2088 : GoUInt16), (2112 : GoUInt16), (24 : GoUInt16)) : Range16),
		(new Range16((2113 : GoUInt16), (2136 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2144 : GoUInt16), (2154 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2208 : GoUInt16), (2228 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2230 : GoUInt16), (2247 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2308 : GoUInt16), (2361 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2365 : GoUInt16), (2384 : GoUInt16), (19 : GoUInt16)) : Range16),
		(new Range16((2392 : GoUInt16), (2401 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2417 : GoUInt16), (2432 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2437 : GoUInt16), (2444 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2447 : GoUInt16), (2448 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2451 : GoUInt16), (2472 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2474 : GoUInt16), (2480 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2482 : GoUInt16), (2486 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((2487 : GoUInt16), (2489 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2493 : GoUInt16), (2510 : GoUInt16), (17 : GoUInt16)) : Range16),
		(new Range16((2524 : GoUInt16), (2525 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2527 : GoUInt16), (2529 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2544 : GoUInt16), (2545 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2556 : GoUInt16), (2565 : GoUInt16), (9 : GoUInt16)) : Range16),
		(new Range16((2566 : GoUInt16), (2570 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2575 : GoUInt16), (2576 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2579 : GoUInt16), (2600 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2602 : GoUInt16), (2608 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2610 : GoUInt16), (2611 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2613 : GoUInt16), (2614 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2616 : GoUInt16), (2617 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2649 : GoUInt16), (2652 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2654 : GoUInt16), (2674 : GoUInt16), (20 : GoUInt16)) : Range16),
		(new Range16((2675 : GoUInt16), (2676 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2693 : GoUInt16), (2701 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2703 : GoUInt16), (2705 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2707 : GoUInt16), (2728 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2730 : GoUInt16), (2736 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2738 : GoUInt16), (2739 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2741 : GoUInt16), (2745 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2749 : GoUInt16), (2768 : GoUInt16), (19 : GoUInt16)) : Range16),
		(new Range16((2784 : GoUInt16), (2785 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2809 : GoUInt16), (2821 : GoUInt16), (12 : GoUInt16)) : Range16),
		(new Range16((2822 : GoUInt16), (2828 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2831 : GoUInt16), (2832 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2835 : GoUInt16), (2856 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2858 : GoUInt16), (2864 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2866 : GoUInt16), (2867 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2869 : GoUInt16), (2873 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2877 : GoUInt16), (2908 : GoUInt16), (31 : GoUInt16)) : Range16),
		(new Range16((2909 : GoUInt16), (2911 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((2912 : GoUInt16), (2913 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2929 : GoUInt16), (2947 : GoUInt16), (18 : GoUInt16)) : Range16),
		(new Range16((2949 : GoUInt16), (2954 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2958 : GoUInt16), (2960 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2962 : GoUInt16), (2965 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2969 : GoUInt16), (2970 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2972 : GoUInt16), (2974 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((2975 : GoUInt16), (2979 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((2980 : GoUInt16), (2984 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((2985 : GoUInt16), (2986 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2990 : GoUInt16), (3001 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3024 : GoUInt16), (3077 : GoUInt16), (53 : GoUInt16)) : Range16),
		(new Range16((3078 : GoUInt16), (3084 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3086 : GoUInt16), (3088 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3090 : GoUInt16), (3112 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3114 : GoUInt16), (3129 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3133 : GoUInt16), (3160 : GoUInt16), (27 : GoUInt16)) : Range16),
		(new Range16((3161 : GoUInt16), (3162 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3168 : GoUInt16), (3169 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3200 : GoUInt16), (3205 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((3206 : GoUInt16), (3212 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3214 : GoUInt16), (3216 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3218 : GoUInt16), (3240 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3242 : GoUInt16), (3251 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3253 : GoUInt16), (3257 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3261 : GoUInt16), (3294 : GoUInt16), (33 : GoUInt16)) : Range16),
		(new Range16((3296 : GoUInt16), (3297 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3313 : GoUInt16), (3314 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3332 : GoUInt16), (3340 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3342 : GoUInt16), (3344 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3346 : GoUInt16), (3386 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3389 : GoUInt16), (3406 : GoUInt16), (17 : GoUInt16)) : Range16),
		(new Range16((3412 : GoUInt16), (3414 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3423 : GoUInt16), (3425 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3450 : GoUInt16), (3455 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3461 : GoUInt16), (3478 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3482 : GoUInt16), (3505 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3507 : GoUInt16), (3515 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3517 : GoUInt16), (3520 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((3521 : GoUInt16), (3526 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3585 : GoUInt16), (3632 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3634 : GoUInt16), (3635 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3648 : GoUInt16), (3654 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3713 : GoUInt16), (3714 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3716 : GoUInt16), (3718 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3719 : GoUInt16), (3722 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3724 : GoUInt16), (3747 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3749 : GoUInt16), (3751 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3752 : GoUInt16), (3760 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3762 : GoUInt16), (3763 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3773 : GoUInt16), (3776 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((3777 : GoUInt16), (3780 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3782 : GoUInt16), (3804 : GoUInt16), (22 : GoUInt16)) : Range16),
		(new Range16((3805 : GoUInt16), (3807 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3840 : GoUInt16), (3904 : GoUInt16), (64 : GoUInt16)) : Range16),
		(new Range16((3905 : GoUInt16), (3911 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3913 : GoUInt16), (3948 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3976 : GoUInt16), (3980 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4096 : GoUInt16), (4138 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4159 : GoUInt16), (4176 : GoUInt16), (17 : GoUInt16)) : Range16),
		(new Range16((4177 : GoUInt16), (4181 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4186 : GoUInt16), (4189 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4193 : GoUInt16), (4197 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((4198 : GoUInt16), (4206 : GoUInt16), (8 : GoUInt16)) : Range16),
		(new Range16((4207 : GoUInt16), (4208 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4213 : GoUInt16), (4225 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4238 : GoUInt16), (4256 : GoUInt16), (18 : GoUInt16)) : Range16),
		(new Range16((4257 : GoUInt16), (4293 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4295 : GoUInt16), (4301 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((4304 : GoUInt16), (4346 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4348 : GoUInt16), (4680 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4682 : GoUInt16), (4685 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4688 : GoUInt16), (4694 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4696 : GoUInt16), (4698 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((4699 : GoUInt16), (4701 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4704 : GoUInt16), (4744 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4746 : GoUInt16), (4749 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4752 : GoUInt16), (4784 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4786 : GoUInt16), (4789 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4792 : GoUInt16), (4798 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4800 : GoUInt16), (4802 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((4803 : GoUInt16), (4805 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4808 : GoUInt16), (4822 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4824 : GoUInt16), (4880 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4882 : GoUInt16), (4885 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4888 : GoUInt16), (4954 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4992 : GoUInt16), (5007 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5024 : GoUInt16), (5109 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5112 : GoUInt16), (5117 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5121 : GoUInt16), (5740 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5743 : GoUInt16), (5759 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5761 : GoUInt16), (5786 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5792 : GoUInt16), (5866 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5873 : GoUInt16), (5880 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5888 : GoUInt16), (5900 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5902 : GoUInt16), (5905 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5920 : GoUInt16), (5937 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5952 : GoUInt16), (5969 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5984 : GoUInt16), (5996 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5998 : GoUInt16), (6000 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6016 : GoUInt16), (6067 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6103 : GoUInt16), (6108 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((6176 : GoUInt16), (6264 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6272 : GoUInt16), (6276 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6279 : GoUInt16), (6312 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6314 : GoUInt16), (6320 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((6321 : GoUInt16), (6389 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6400 : GoUInt16), (6430 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6480 : GoUInt16), (6509 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6512 : GoUInt16), (6516 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6528 : GoUInt16), (6571 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6576 : GoUInt16), (6601 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6656 : GoUInt16), (6678 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6688 : GoUInt16), (6740 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6823 : GoUInt16), (6917 : GoUInt16), (94 : GoUInt16)) : Range16),
		(new Range16((6918 : GoUInt16), (6963 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6981 : GoUInt16), (6987 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7043 : GoUInt16), (7072 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7086 : GoUInt16), (7087 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7098 : GoUInt16), (7141 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7168 : GoUInt16), (7203 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7245 : GoUInt16), (7247 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7258 : GoUInt16), (7293 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7296 : GoUInt16), (7304 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7312 : GoUInt16), (7354 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7357 : GoUInt16), (7359 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7401 : GoUInt16), (7404 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7406 : GoUInt16), (7411 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7413 : GoUInt16), (7414 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7418 : GoUInt16), (7424 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((7425 : GoUInt16), (7615 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7680 : GoUInt16), (7957 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7960 : GoUInt16), (7965 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7968 : GoUInt16), (8005 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8008 : GoUInt16), (8013 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8016 : GoUInt16), (8023 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8025 : GoUInt16), (8031 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8032 : GoUInt16), (8061 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8064 : GoUInt16), (8116 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8118 : GoUInt16), (8124 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8126 : GoUInt16), (8130 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((8131 : GoUInt16), (8132 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8134 : GoUInt16), (8140 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8144 : GoUInt16), (8147 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8150 : GoUInt16), (8155 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8160 : GoUInt16), (8172 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8178 : GoUInt16), (8180 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8182 : GoUInt16), (8188 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8305 : GoUInt16), (8319 : GoUInt16), (14 : GoUInt16)) : Range16),
		(new Range16((8336 : GoUInt16), (8348 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8450 : GoUInt16), (8455 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((8458 : GoUInt16), (8467 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8469 : GoUInt16), (8473 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((8474 : GoUInt16), (8477 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8484 : GoUInt16), (8490 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8491 : GoUInt16), (8493 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8495 : GoUInt16), (8505 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8508 : GoUInt16), (8511 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8517 : GoUInt16), (8521 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8526 : GoUInt16), (8579 : GoUInt16), (53 : GoUInt16)) : Range16),
		(new Range16((8580 : GoUInt16), (11264 : GoUInt16), (2684 : GoUInt16)) : Range16),
		(new Range16((11265 : GoUInt16), (11310 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11312 : GoUInt16), (11358 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11360 : GoUInt16), (11492 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11499 : GoUInt16), (11502 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11506 : GoUInt16), (11507 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11520 : GoUInt16), (11557 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11559 : GoUInt16), (11565 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((11568 : GoUInt16), (11623 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11631 : GoUInt16), (11648 : GoUInt16), (17 : GoUInt16)) : Range16),
		(new Range16((11649 : GoUInt16), (11670 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11680 : GoUInt16), (11686 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11688 : GoUInt16), (11694 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11696 : GoUInt16), (11702 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11704 : GoUInt16), (11710 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11712 : GoUInt16), (11718 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11720 : GoUInt16), (11726 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11728 : GoUInt16), (11734 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11736 : GoUInt16), (11742 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11823 : GoUInt16), (12293 : GoUInt16), (470 : GoUInt16)) : Range16),
		(new Range16((12294 : GoUInt16), (12337 : GoUInt16), (43 : GoUInt16)) : Range16),
		(new Range16((12338 : GoUInt16), (12341 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12347 : GoUInt16), (12348 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12353 : GoUInt16), (12438 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12445 : GoUInt16), (12447 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12449 : GoUInt16), (12538 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12540 : GoUInt16), (12543 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12549 : GoUInt16), (12591 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12593 : GoUInt16), (12686 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12704 : GoUInt16), (12735 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12784 : GoUInt16), (12799 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((13312 : GoUInt16), (19903 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((19968 : GoUInt16), (40956 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((40960 : GoUInt16), (42124 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42192 : GoUInt16), (42237 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42240 : GoUInt16), (42508 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42512 : GoUInt16), (42527 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42538 : GoUInt16), (42539 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42560 : GoUInt16), (42606 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42623 : GoUInt16), (42653 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42656 : GoUInt16), (42725 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42775 : GoUInt16), (42783 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42786 : GoUInt16), (42888 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42891 : GoUInt16), (42943 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42946 : GoUInt16), (42954 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42997 : GoUInt16), (43009 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43011 : GoUInt16), (43013 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43015 : GoUInt16), (43018 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43020 : GoUInt16), (43042 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43072 : GoUInt16), (43123 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43138 : GoUInt16), (43187 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43250 : GoUInt16), (43255 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43259 : GoUInt16), (43261 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((43262 : GoUInt16), (43274 : GoUInt16), (12 : GoUInt16)) : Range16),
		(new Range16((43275 : GoUInt16), (43301 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43312 : GoUInt16), (43334 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43360 : GoUInt16), (43388 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43396 : GoUInt16), (43442 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43471 : GoUInt16), (43488 : GoUInt16), (17 : GoUInt16)) : Range16),
		(new Range16((43489 : GoUInt16), (43492 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43494 : GoUInt16), (43503 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43514 : GoUInt16), (43518 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43520 : GoUInt16), (43560 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43584 : GoUInt16), (43586 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43588 : GoUInt16), (43595 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43616 : GoUInt16), (43638 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43642 : GoUInt16), (43646 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((43647 : GoUInt16), (43695 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43697 : GoUInt16), (43701 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((43702 : GoUInt16), (43705 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((43706 : GoUInt16), (43709 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43712 : GoUInt16), (43714 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((43739 : GoUInt16), (43741 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43744 : GoUInt16), (43754 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43762 : GoUInt16), (43764 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43777 : GoUInt16), (43782 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43785 : GoUInt16), (43790 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43793 : GoUInt16), (43798 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43808 : GoUInt16), (43814 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43816 : GoUInt16), (43822 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43824 : GoUInt16), (43866 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43868 : GoUInt16), (43881 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43888 : GoUInt16), (44002 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((44032 : GoUInt16), (55203 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((55216 : GoUInt16), (55238 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((55243 : GoUInt16), (55291 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((63744 : GoUInt16), (64109 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64112 : GoUInt16), (64217 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64256 : GoUInt16), (64262 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64275 : GoUInt16), (64279 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64285 : GoUInt16), (64287 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((64288 : GoUInt16), (64296 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64298 : GoUInt16), (64310 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64312 : GoUInt16), (64316 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64318 : GoUInt16), (64320 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((64321 : GoUInt16), (64323 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((64324 : GoUInt16), (64326 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((64327 : GoUInt16), (64433 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64467 : GoUInt16), (64829 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64848 : GoUInt16), (64911 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64914 : GoUInt16), (64967 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65008 : GoUInt16), (65019 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65136 : GoUInt16), (65140 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65142 : GoUInt16), (65276 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65313 : GoUInt16), (65338 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65345 : GoUInt16), (65370 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65382 : GoUInt16), (65470 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65474 : GoUInt16), (65479 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65482 : GoUInt16), (65487 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65490 : GoUInt16), (65495 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65498 : GoUInt16), (65500 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("65536" : GoUInt32), ("65547" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65549" : GoUInt32), ("65574" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65576" : GoUInt32), ("65594" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65596" : GoUInt32), ("65597" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65599" : GoUInt32), ("65613" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65616" : GoUInt32), ("65629" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65664" : GoUInt32), ("65786" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66176" : GoUInt32), ("66204" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66208" : GoUInt32), ("66256" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66304" : GoUInt32), ("66335" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66349" : GoUInt32), ("66368" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66370" : GoUInt32), ("66377" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66384" : GoUInt32), ("66421" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66432" : GoUInt32), ("66461" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66464" : GoUInt32), ("66499" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66504" : GoUInt32), ("66511" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66560" : GoUInt32), ("66717" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66736" : GoUInt32), ("66771" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66776" : GoUInt32), ("66811" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66816" : GoUInt32), ("66855" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66864" : GoUInt32), ("66915" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67072" : GoUInt32), ("67382" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67392" : GoUInt32), ("67413" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67424" : GoUInt32), ("67431" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67584" : GoUInt32), ("67589" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67592" : GoUInt32), ("67594" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("67595" : GoUInt32), ("67637" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67639" : GoUInt32), ("67640" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67644" : GoUInt32), ("67647" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("67648" : GoUInt32), ("67669" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67680" : GoUInt32), ("67702" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67712" : GoUInt32), ("67742" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67808" : GoUInt32), ("67826" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67828" : GoUInt32), ("67829" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67840" : GoUInt32), ("67861" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67872" : GoUInt32), ("67897" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67968" : GoUInt32), ("68023" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68030" : GoUInt32), ("68031" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68096" : GoUInt32), ("68112" : GoUInt32), ("16" : GoUInt32)) : Range32),
		(new Range32(("68113" : GoUInt32), ("68115" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68117" : GoUInt32), ("68119" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68121" : GoUInt32), ("68149" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68192" : GoUInt32), ("68220" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68224" : GoUInt32), ("68252" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68288" : GoUInt32), ("68295" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68297" : GoUInt32), ("68324" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68352" : GoUInt32), ("68405" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68416" : GoUInt32), ("68437" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68448" : GoUInt32), ("68466" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68480" : GoUInt32), ("68497" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68608" : GoUInt32), ("68680" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68736" : GoUInt32), ("68786" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68800" : GoUInt32), ("68850" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68864" : GoUInt32), ("68899" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69248" : GoUInt32), ("69289" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69296" : GoUInt32), ("69297" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69376" : GoUInt32), ("69404" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69415" : GoUInt32), ("69424" : GoUInt32), ("9" : GoUInt32)) : Range32),
		(new Range32(("69425" : GoUInt32), ("69445" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69552" : GoUInt32), ("69572" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69600" : GoUInt32), ("69622" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69635" : GoUInt32), ("69687" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69763" : GoUInt32), ("69807" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69840" : GoUInt32), ("69864" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69891" : GoUInt32), ("69926" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69956" : GoUInt32), ("69959" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("69968" : GoUInt32), ("70002" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70006" : GoUInt32), ("70019" : GoUInt32), ("13" : GoUInt32)) : Range32),
		(new Range32(("70020" : GoUInt32), ("70066" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70081" : GoUInt32), ("70084" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70106" : GoUInt32), ("70108" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("70144" : GoUInt32), ("70161" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70163" : GoUInt32), ("70187" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70272" : GoUInt32), ("70278" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70280" : GoUInt32), ("70282" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("70283" : GoUInt32), ("70285" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70287" : GoUInt32), ("70301" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70303" : GoUInt32), ("70312" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70320" : GoUInt32), ("70366" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70405" : GoUInt32), ("70412" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70415" : GoUInt32), ("70416" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70419" : GoUInt32), ("70440" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70442" : GoUInt32), ("70448" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70450" : GoUInt32), ("70451" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70453" : GoUInt32), ("70457" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70461" : GoUInt32), ("70480" : GoUInt32), ("19" : GoUInt32)) : Range32),
		(new Range32(("70493" : GoUInt32), ("70497" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70656" : GoUInt32), ("70708" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70727" : GoUInt32), ("70730" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70751" : GoUInt32), ("70753" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70784" : GoUInt32), ("70831" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70852" : GoUInt32), ("70853" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70855" : GoUInt32), ("71040" : GoUInt32), ("185" : GoUInt32)) : Range32),
		(new Range32(("71041" : GoUInt32), ("71086" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71128" : GoUInt32), ("71131" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71168" : GoUInt32), ("71215" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71236" : GoUInt32), ("71296" : GoUInt32), ("60" : GoUInt32)) : Range32),
		(new Range32(("71297" : GoUInt32), ("71338" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71352" : GoUInt32), ("71424" : GoUInt32), ("72" : GoUInt32)) : Range32),
		(new Range32(("71425" : GoUInt32), ("71450" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71680" : GoUInt32), ("71723" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71840" : GoUInt32), ("71903" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71935" : GoUInt32), ("71942" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71945" : GoUInt32), ("71948" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("71949" : GoUInt32), ("71955" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71957" : GoUInt32), ("71958" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71960" : GoUInt32), ("71983" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71999" : GoUInt32), ("72001" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("72096" : GoUInt32), ("72103" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72106" : GoUInt32), ("72144" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72161" : GoUInt32), ("72163" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("72192" : GoUInt32), ("72203" : GoUInt32), ("11" : GoUInt32)) : Range32),
		(new Range32(("72204" : GoUInt32), ("72242" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72250" : GoUInt32), ("72272" : GoUInt32), ("22" : GoUInt32)) : Range32),
		(new Range32(("72284" : GoUInt32), ("72329" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72349" : GoUInt32), ("72384" : GoUInt32), ("35" : GoUInt32)) : Range32),
		(new Range32(("72385" : GoUInt32), ("72440" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72704" : GoUInt32), ("72712" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72714" : GoUInt32), ("72750" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72768" : GoUInt32), ("72818" : GoUInt32), ("50" : GoUInt32)) : Range32),
		(new Range32(("72819" : GoUInt32), ("72847" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72960" : GoUInt32), ("72966" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72968" : GoUInt32), ("72969" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72971" : GoUInt32), ("73008" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73030" : GoUInt32), ("73056" : GoUInt32), ("26" : GoUInt32)) : Range32),
		(new Range32(("73057" : GoUInt32), ("73061" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73063" : GoUInt32), ("73064" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73066" : GoUInt32), ("73097" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73112" : GoUInt32), ("73440" : GoUInt32), ("328" : GoUInt32)) : Range32),
		(new Range32(("73441" : GoUInt32), ("73458" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73648" : GoUInt32), ("73728" : GoUInt32), ("80" : GoUInt32)) : Range32),
		(new Range32(("73729" : GoUInt32), ("74649" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("74880" : GoUInt32), ("75075" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("77824" : GoUInt32), ("78894" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("82944" : GoUInt32), ("83526" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92160" : GoUInt32), ("92728" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92736" : GoUInt32), ("92766" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92880" : GoUInt32), ("92909" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92928" : GoUInt32), ("92975" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92992" : GoUInt32), ("92995" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93027" : GoUInt32), ("93047" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93053" : GoUInt32), ("93071" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93760" : GoUInt32), ("93823" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93952" : GoUInt32), ("94026" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94032" : GoUInt32), ("94099" : GoUInt32), ("67" : GoUInt32)) : Range32),
		(new Range32(("94100" : GoUInt32), ("94111" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94176" : GoUInt32), ("94177" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94179" : GoUInt32), ("94208" : GoUInt32), ("29" : GoUInt32)) : Range32),
		(new Range32(("94209" : GoUInt32), ("100343" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("100352" : GoUInt32), ("101589" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("101632" : GoUInt32), ("101640" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("110592" : GoUInt32), ("110878" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("110928" : GoUInt32), ("110930" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("110948" : GoUInt32), ("110951" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("110960" : GoUInt32), ("111355" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("113664" : GoUInt32), ("113770" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("113776" : GoUInt32), ("113788" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("113792" : GoUInt32), ("113800" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("113808" : GoUInt32), ("113817" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119808" : GoUInt32), ("119892" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119894" : GoUInt32), ("119964" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119966" : GoUInt32), ("119967" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119970" : GoUInt32), ("119973" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("119974" : GoUInt32), ("119977" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("119978" : GoUInt32), ("119980" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119982" : GoUInt32), ("119993" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119995" : GoUInt32), ("119997" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("119998" : GoUInt32), ("120003" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120005" : GoUInt32), ("120069" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120071" : GoUInt32), ("120074" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120077" : GoUInt32), ("120084" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120086" : GoUInt32), ("120092" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120094" : GoUInt32), ("120121" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120123" : GoUInt32), ("120126" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120128" : GoUInt32), ("120132" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120134" : GoUInt32), ("120138" : GoUInt32), ("4" : GoUInt32)) : Range32),
		(new Range32(("120139" : GoUInt32), ("120144" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120146" : GoUInt32), ("120485" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120488" : GoUInt32), ("120512" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120514" : GoUInt32), ("120538" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120540" : GoUInt32), ("120570" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120572" : GoUInt32), ("120596" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120598" : GoUInt32), ("120628" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120630" : GoUInt32), ("120654" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120656" : GoUInt32), ("120686" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120688" : GoUInt32), ("120712" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120714" : GoUInt32), ("120744" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120746" : GoUInt32), ("120770" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120772" : GoUInt32), ("120779" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123136" : GoUInt32), ("123180" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123191" : GoUInt32), ("123197" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123214" : GoUInt32), ("123584" : GoUInt32), ("370" : GoUInt32)) : Range32),
		(new Range32(("123585" : GoUInt32), ("123627" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("124928" : GoUInt32), ("125124" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125184" : GoUInt32), ("125251" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125259" : GoUInt32), ("126464" : GoUInt32), ("1205" : GoUInt32)) : Range32),
		(new Range32(("126465" : GoUInt32), ("126467" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126469" : GoUInt32), ("126495" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126497" : GoUInt32), ("126498" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126500" : GoUInt32), ("126503" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("126505" : GoUInt32), ("126514" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126516" : GoUInt32), ("126519" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126521" : GoUInt32), ("126523" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126530" : GoUInt32), ("126535" : GoUInt32), ("5" : GoUInt32)) : Range32),
		(new Range32(("126537" : GoUInt32), ("126541" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126542" : GoUInt32), ("126543" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126545" : GoUInt32), ("126546" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126548" : GoUInt32), ("126551" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("126553" : GoUInt32), ("126561" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126562" : GoUInt32), ("126564" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126567" : GoUInt32), ("126570" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126572" : GoUInt32), ("126578" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126580" : GoUInt32), ("126583" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126585" : GoUInt32), ("126588" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126590" : GoUInt32), ("126592" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126593" : GoUInt32), ("126601" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126603" : GoUInt32), ("126619" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126625" : GoUInt32), ("126627" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126629" : GoUInt32), ("126633" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126635" : GoUInt32), ("126651" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("131072" : GoUInt32), ("173789" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("173824" : GoUInt32), ("177972" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("177984" : GoUInt32), ("178205" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("178208" : GoUInt32), ("183969" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("183984" : GoUInt32), ("191456" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("194560" : GoUInt32), ("195101" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("196608" : GoUInt32), ("201546" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (6 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Ll:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((97 : GoUInt16), (122 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((181 : GoUInt16), (223 : GoUInt16), (42 : GoUInt16)) : Range16),
		(new Range16((224 : GoUInt16), (246 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((248 : GoUInt16), (255 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((257 : GoUInt16), (311 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((312 : GoUInt16), (328 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((329 : GoUInt16), (375 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((378 : GoUInt16), (382 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((383 : GoUInt16), (384 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((387 : GoUInt16), (389 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((392 : GoUInt16), (396 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((397 : GoUInt16), (402 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((405 : GoUInt16), (409 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((410 : GoUInt16), (411 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((414 : GoUInt16), (417 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((419 : GoUInt16), (421 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((424 : GoUInt16), (426 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((427 : GoUInt16), (429 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((432 : GoUInt16), (436 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((438 : GoUInt16), (441 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((442 : GoUInt16), (445 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((446 : GoUInt16), (447 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((454 : GoUInt16), (460 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((462 : GoUInt16), (476 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((477 : GoUInt16), (495 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((496 : GoUInt16), (499 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((501 : GoUInt16), (505 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((507 : GoUInt16), (563 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((564 : GoUInt16), (569 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((572 : GoUInt16), (575 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((576 : GoUInt16), (578 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((583 : GoUInt16), (591 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((592 : GoUInt16), (659 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((661 : GoUInt16), (687 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((881 : GoUInt16), (883 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((887 : GoUInt16), (891 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((892 : GoUInt16), (893 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((912 : GoUInt16), (940 : GoUInt16), (28 : GoUInt16)) : Range16),
		(new Range16((941 : GoUInt16), (974 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((976 : GoUInt16), (977 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((981 : GoUInt16), (983 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((985 : GoUInt16), (1007 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1008 : GoUInt16), (1011 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1013 : GoUInt16), (1019 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((1020 : GoUInt16), (1072 : GoUInt16), (52 : GoUInt16)) : Range16),
		(new Range16((1073 : GoUInt16), (1119 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1121 : GoUInt16), (1153 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1163 : GoUInt16), (1215 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1218 : GoUInt16), (1230 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1231 : GoUInt16), (1327 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1376 : GoUInt16), (1416 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4304 : GoUInt16), (4346 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4349 : GoUInt16), (4351 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5112 : GoUInt16), (5117 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7296 : GoUInt16), (7304 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7424 : GoUInt16), (7467 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7531 : GoUInt16), (7543 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7545 : GoUInt16), (7578 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7681 : GoUInt16), (7829 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((7830 : GoUInt16), (7837 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7839 : GoUInt16), (7935 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((7936 : GoUInt16), (7943 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7952 : GoUInt16), (7957 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7968 : GoUInt16), (7975 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7984 : GoUInt16), (7991 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8000 : GoUInt16), (8005 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8016 : GoUInt16), (8023 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8032 : GoUInt16), (8039 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8048 : GoUInt16), (8061 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8064 : GoUInt16), (8071 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8080 : GoUInt16), (8087 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8096 : GoUInt16), (8103 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8112 : GoUInt16), (8116 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8118 : GoUInt16), (8119 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8126 : GoUInt16), (8130 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((8131 : GoUInt16), (8132 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8134 : GoUInt16), (8135 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8144 : GoUInt16), (8147 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8150 : GoUInt16), (8151 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8160 : GoUInt16), (8167 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8178 : GoUInt16), (8180 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8182 : GoUInt16), (8183 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8458 : GoUInt16), (8462 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((8463 : GoUInt16), (8467 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((8495 : GoUInt16), (8505 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((8508 : GoUInt16), (8509 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8518 : GoUInt16), (8521 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8526 : GoUInt16), (8580 : GoUInt16), (54 : GoUInt16)) : Range16),
		(new Range16((11312 : GoUInt16), (11358 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11361 : GoUInt16), (11365 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((11366 : GoUInt16), (11372 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((11377 : GoUInt16), (11379 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((11380 : GoUInt16), (11382 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((11383 : GoUInt16), (11387 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11393 : GoUInt16), (11491 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((11492 : GoUInt16), (11500 : GoUInt16), (8 : GoUInt16)) : Range16),
		(new Range16((11502 : GoUInt16), (11507 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((11520 : GoUInt16), (11557 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11559 : GoUInt16), (11565 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((42561 : GoUInt16), (42605 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42625 : GoUInt16), (42651 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42787 : GoUInt16), (42799 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42800 : GoUInt16), (42801 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42803 : GoUInt16), (42865 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42866 : GoUInt16), (42872 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42874 : GoUInt16), (42876 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42879 : GoUInt16), (42887 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42892 : GoUInt16), (42894 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42897 : GoUInt16), (42899 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42900 : GoUInt16), (42901 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42903 : GoUInt16), (42921 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42927 : GoUInt16), (42933 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((42935 : GoUInt16), (42943 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42947 : GoUInt16), (42952 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((42954 : GoUInt16), (42998 : GoUInt16), (44 : GoUInt16)) : Range16),
		(new Range16((43002 : GoUInt16), (43824 : GoUInt16), (822 : GoUInt16)) : Range16),
		(new Range16((43825 : GoUInt16), (43866 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43872 : GoUInt16), (43880 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43888 : GoUInt16), (43967 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64256 : GoUInt16), (64262 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64275 : GoUInt16), (64279 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65345 : GoUInt16), (65370 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("66600" : GoUInt32), ("66639" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66776" : GoUInt32), ("66811" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68800" : GoUInt32), ("68850" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71872" : GoUInt32), ("71903" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93792" : GoUInt32), ("93823" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119834" : GoUInt32), ("119859" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119886" : GoUInt32), ("119892" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119894" : GoUInt32), ("119911" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119938" : GoUInt32), ("119963" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119990" : GoUInt32), ("119993" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119995" : GoUInt32), ("119997" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("119998" : GoUInt32), ("120003" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120005" : GoUInt32), ("120015" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120042" : GoUInt32), ("120067" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120094" : GoUInt32), ("120119" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120146" : GoUInt32), ("120171" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120198" : GoUInt32), ("120223" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120250" : GoUInt32), ("120275" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120302" : GoUInt32), ("120327" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120354" : GoUInt32), ("120379" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120406" : GoUInt32), ("120431" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120458" : GoUInt32), ("120485" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120514" : GoUInt32), ("120538" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120540" : GoUInt32), ("120545" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120572" : GoUInt32), ("120596" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120598" : GoUInt32), ("120603" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120630" : GoUInt32), ("120654" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120656" : GoUInt32), ("120661" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120688" : GoUInt32), ("120712" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120714" : GoUInt32), ("120719" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120746" : GoUInt32), ("120770" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120772" : GoUInt32), ("120777" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120779" : GoUInt32), ("125218" : GoUInt32), ("4439" : GoUInt32)) : Range32),
		(new Range32(("125219" : GoUInt32), ("125251" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (4 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Lm:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((688 : GoUInt16), (705 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((710 : GoUInt16), (721 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((736 : GoUInt16), (740 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((748 : GoUInt16), (750 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((884 : GoUInt16), (890 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((1369 : GoUInt16), (1600 : GoUInt16), (231 : GoUInt16)) : Range16),
		(new Range16((1765 : GoUInt16), (1766 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2036 : GoUInt16), (2037 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2042 : GoUInt16), (2074 : GoUInt16), (32 : GoUInt16)) : Range16),
		(new Range16((2084 : GoUInt16), (2088 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((2417 : GoUInt16), (3654 : GoUInt16), (1237 : GoUInt16)) : Range16),
		(new Range16((3782 : GoUInt16), (4348 : GoUInt16), (566 : GoUInt16)) : Range16),
		(new Range16((6103 : GoUInt16), (6211 : GoUInt16), (108 : GoUInt16)) : Range16),
		(new Range16((6823 : GoUInt16), (7288 : GoUInt16), (465 : GoUInt16)) : Range16),
		(new Range16((7289 : GoUInt16), (7293 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7468 : GoUInt16), (7530 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7544 : GoUInt16), (7579 : GoUInt16), (35 : GoUInt16)) : Range16),
		(new Range16((7580 : GoUInt16), (7615 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8305 : GoUInt16), (8319 : GoUInt16), (14 : GoUInt16)) : Range16),
		(new Range16((8336 : GoUInt16), (8348 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11388 : GoUInt16), (11389 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11631 : GoUInt16), (11823 : GoUInt16), (192 : GoUInt16)) : Range16),
		(new Range16((12293 : GoUInt16), (12337 : GoUInt16), (44 : GoUInt16)) : Range16),
		(new Range16((12338 : GoUInt16), (12341 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12347 : GoUInt16), (12445 : GoUInt16), (98 : GoUInt16)) : Range16),
		(new Range16((12446 : GoUInt16), (12540 : GoUInt16), (94 : GoUInt16)) : Range16),
		(new Range16((12541 : GoUInt16), (12542 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((40981 : GoUInt16), (42232 : GoUInt16), (1251 : GoUInt16)) : Range16),
		(new Range16((42233 : GoUInt16), (42237 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42508 : GoUInt16), (42623 : GoUInt16), (115 : GoUInt16)) : Range16),
		(new Range16((42652 : GoUInt16), (42653 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42775 : GoUInt16), (42783 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42864 : GoUInt16), (42888 : GoUInt16), (24 : GoUInt16)) : Range16),
		(new Range16((43000 : GoUInt16), (43001 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43471 : GoUInt16), (43494 : GoUInt16), (23 : GoUInt16)) : Range16),
		(new Range16((43632 : GoUInt16), (43741 : GoUInt16), (109 : GoUInt16)) : Range16),
		(new Range16((43763 : GoUInt16), (43764 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43868 : GoUInt16), (43871 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43881 : GoUInt16), (65392 : GoUInt16), (21511 : GoUInt16)) : Range16),
		(new Range16((65438 : GoUInt16), (65439 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("92992" : GoUInt32), ("92995" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94099" : GoUInt32), ("94111" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94176" : GoUInt32), ("94177" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94179" : GoUInt32), ("123191" : GoUInt32), ("29012" : GoUInt32)) : Range32),
		(new Range32(("123192" : GoUInt32), ("123197" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125259" : GoUInt32), ("125259" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Lo:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((170 : GoUInt16), (186 : GoUInt16), (16 : GoUInt16)) : Range16),
		(new Range16((443 : GoUInt16), (448 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((449 : GoUInt16), (451 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((660 : GoUInt16), (1488 : GoUInt16), (828 : GoUInt16)) : Range16),
		(new Range16((1489 : GoUInt16), (1514 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1519 : GoUInt16), (1522 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1568 : GoUInt16), (1599 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1601 : GoUInt16), (1610 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1646 : GoUInt16), (1647 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1649 : GoUInt16), (1747 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1749 : GoUInt16), (1774 : GoUInt16), (25 : GoUInt16)) : Range16),
		(new Range16((1775 : GoUInt16), (1786 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((1787 : GoUInt16), (1788 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1791 : GoUInt16), (1808 : GoUInt16), (17 : GoUInt16)) : Range16),
		(new Range16((1810 : GoUInt16), (1839 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1869 : GoUInt16), (1957 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1969 : GoUInt16), (1994 : GoUInt16), (25 : GoUInt16)) : Range16),
		(new Range16((1995 : GoUInt16), (2026 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2048 : GoUInt16), (2069 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2112 : GoUInt16), (2136 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2144 : GoUInt16), (2154 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2208 : GoUInt16), (2228 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2230 : GoUInt16), (2247 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2308 : GoUInt16), (2361 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2365 : GoUInt16), (2384 : GoUInt16), (19 : GoUInt16)) : Range16),
		(new Range16((2392 : GoUInt16), (2401 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2418 : GoUInt16), (2432 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2437 : GoUInt16), (2444 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2447 : GoUInt16), (2448 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2451 : GoUInt16), (2472 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2474 : GoUInt16), (2480 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2482 : GoUInt16), (2486 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((2487 : GoUInt16), (2489 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2493 : GoUInt16), (2510 : GoUInt16), (17 : GoUInt16)) : Range16),
		(new Range16((2524 : GoUInt16), (2525 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2527 : GoUInt16), (2529 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2544 : GoUInt16), (2545 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2556 : GoUInt16), (2565 : GoUInt16), (9 : GoUInt16)) : Range16),
		(new Range16((2566 : GoUInt16), (2570 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2575 : GoUInt16), (2576 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2579 : GoUInt16), (2600 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2602 : GoUInt16), (2608 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2610 : GoUInt16), (2611 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2613 : GoUInt16), (2614 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2616 : GoUInt16), (2617 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2649 : GoUInt16), (2652 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2654 : GoUInt16), (2674 : GoUInt16), (20 : GoUInt16)) : Range16),
		(new Range16((2675 : GoUInt16), (2676 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2693 : GoUInt16), (2701 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2703 : GoUInt16), (2705 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2707 : GoUInt16), (2728 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2730 : GoUInt16), (2736 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2738 : GoUInt16), (2739 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2741 : GoUInt16), (2745 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2749 : GoUInt16), (2768 : GoUInt16), (19 : GoUInt16)) : Range16),
		(new Range16((2784 : GoUInt16), (2785 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2809 : GoUInt16), (2821 : GoUInt16), (12 : GoUInt16)) : Range16),
		(new Range16((2822 : GoUInt16), (2828 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2831 : GoUInt16), (2832 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2835 : GoUInt16), (2856 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2858 : GoUInt16), (2864 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2866 : GoUInt16), (2867 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2869 : GoUInt16), (2873 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2877 : GoUInt16), (2908 : GoUInt16), (31 : GoUInt16)) : Range16),
		(new Range16((2909 : GoUInt16), (2911 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((2912 : GoUInt16), (2913 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2929 : GoUInt16), (2947 : GoUInt16), (18 : GoUInt16)) : Range16),
		(new Range16((2949 : GoUInt16), (2954 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2958 : GoUInt16), (2960 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2962 : GoUInt16), (2965 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2969 : GoUInt16), (2970 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2972 : GoUInt16), (2974 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((2975 : GoUInt16), (2979 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((2980 : GoUInt16), (2984 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((2985 : GoUInt16), (2986 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2990 : GoUInt16), (3001 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3024 : GoUInt16), (3077 : GoUInt16), (53 : GoUInt16)) : Range16),
		(new Range16((3078 : GoUInt16), (3084 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3086 : GoUInt16), (3088 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3090 : GoUInt16), (3112 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3114 : GoUInt16), (3129 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3133 : GoUInt16), (3160 : GoUInt16), (27 : GoUInt16)) : Range16),
		(new Range16((3161 : GoUInt16), (3162 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3168 : GoUInt16), (3169 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3200 : GoUInt16), (3205 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((3206 : GoUInt16), (3212 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3214 : GoUInt16), (3216 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3218 : GoUInt16), (3240 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3242 : GoUInt16), (3251 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3253 : GoUInt16), (3257 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3261 : GoUInt16), (3294 : GoUInt16), (33 : GoUInt16)) : Range16),
		(new Range16((3296 : GoUInt16), (3297 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3313 : GoUInt16), (3314 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3332 : GoUInt16), (3340 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3342 : GoUInt16), (3344 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3346 : GoUInt16), (3386 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3389 : GoUInt16), (3406 : GoUInt16), (17 : GoUInt16)) : Range16),
		(new Range16((3412 : GoUInt16), (3414 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3423 : GoUInt16), (3425 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3450 : GoUInt16), (3455 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3461 : GoUInt16), (3478 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3482 : GoUInt16), (3505 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3507 : GoUInt16), (3515 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3517 : GoUInt16), (3520 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((3521 : GoUInt16), (3526 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3585 : GoUInt16), (3632 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3634 : GoUInt16), (3635 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3648 : GoUInt16), (3653 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3713 : GoUInt16), (3714 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3716 : GoUInt16), (3718 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3719 : GoUInt16), (3722 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3724 : GoUInt16), (3747 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3749 : GoUInt16), (3751 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3752 : GoUInt16), (3760 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3762 : GoUInt16), (3763 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3773 : GoUInt16), (3776 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((3777 : GoUInt16), (3780 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3804 : GoUInt16), (3807 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3840 : GoUInt16), (3904 : GoUInt16), (64 : GoUInt16)) : Range16),
		(new Range16((3905 : GoUInt16), (3911 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3913 : GoUInt16), (3948 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3976 : GoUInt16), (3980 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4096 : GoUInt16), (4138 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4159 : GoUInt16), (4176 : GoUInt16), (17 : GoUInt16)) : Range16),
		(new Range16((4177 : GoUInt16), (4181 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4186 : GoUInt16), (4189 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4193 : GoUInt16), (4197 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((4198 : GoUInt16), (4206 : GoUInt16), (8 : GoUInt16)) : Range16),
		(new Range16((4207 : GoUInt16), (4208 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4213 : GoUInt16), (4225 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4238 : GoUInt16), (4352 : GoUInt16), (114 : GoUInt16)) : Range16),
		(new Range16((4353 : GoUInt16), (4680 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4682 : GoUInt16), (4685 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4688 : GoUInt16), (4694 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4696 : GoUInt16), (4698 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((4699 : GoUInt16), (4701 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4704 : GoUInt16), (4744 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4746 : GoUInt16), (4749 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4752 : GoUInt16), (4784 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4786 : GoUInt16), (4789 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4792 : GoUInt16), (4798 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4800 : GoUInt16), (4802 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((4803 : GoUInt16), (4805 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4808 : GoUInt16), (4822 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4824 : GoUInt16), (4880 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4882 : GoUInt16), (4885 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4888 : GoUInt16), (4954 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4992 : GoUInt16), (5007 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5121 : GoUInt16), (5740 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5743 : GoUInt16), (5759 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5761 : GoUInt16), (5786 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5792 : GoUInt16), (5866 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5873 : GoUInt16), (5880 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5888 : GoUInt16), (5900 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5902 : GoUInt16), (5905 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5920 : GoUInt16), (5937 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5952 : GoUInt16), (5969 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5984 : GoUInt16), (5996 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5998 : GoUInt16), (6000 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6016 : GoUInt16), (6067 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6108 : GoUInt16), (6176 : GoUInt16), (68 : GoUInt16)) : Range16),
		(new Range16((6177 : GoUInt16), (6210 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6212 : GoUInt16), (6264 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6272 : GoUInt16), (6276 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6279 : GoUInt16), (6312 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6314 : GoUInt16), (6320 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((6321 : GoUInt16), (6389 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6400 : GoUInt16), (6430 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6480 : GoUInt16), (6509 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6512 : GoUInt16), (6516 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6528 : GoUInt16), (6571 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6576 : GoUInt16), (6601 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6656 : GoUInt16), (6678 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6688 : GoUInt16), (6740 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6917 : GoUInt16), (6963 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6981 : GoUInt16), (6987 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7043 : GoUInt16), (7072 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7086 : GoUInt16), (7087 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7098 : GoUInt16), (7141 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7168 : GoUInt16), (7203 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7245 : GoUInt16), (7247 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7258 : GoUInt16), (7287 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7401 : GoUInt16), (7404 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7406 : GoUInt16), (7411 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7413 : GoUInt16), (7414 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7418 : GoUInt16), (8501 : GoUInt16), (1083 : GoUInt16)) : Range16),
		(new Range16((8502 : GoUInt16), (8504 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11568 : GoUInt16), (11623 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11648 : GoUInt16), (11670 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11680 : GoUInt16), (11686 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11688 : GoUInt16), (11694 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11696 : GoUInt16), (11702 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11704 : GoUInt16), (11710 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11712 : GoUInt16), (11718 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11720 : GoUInt16), (11726 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11728 : GoUInt16), (11734 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11736 : GoUInt16), (11742 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12294 : GoUInt16), (12348 : GoUInt16), (54 : GoUInt16)) : Range16),
		(new Range16((12353 : GoUInt16), (12438 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12447 : GoUInt16), (12449 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((12450 : GoUInt16), (12538 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12543 : GoUInt16), (12549 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((12550 : GoUInt16), (12591 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12593 : GoUInt16), (12686 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12704 : GoUInt16), (12735 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12784 : GoUInt16), (12799 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((13312 : GoUInt16), (19903 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((19968 : GoUInt16), (40956 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((40960 : GoUInt16), (40980 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((40982 : GoUInt16), (42124 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42192 : GoUInt16), (42231 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42240 : GoUInt16), (42507 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42512 : GoUInt16), (42527 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42538 : GoUInt16), (42539 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42606 : GoUInt16), (42656 : GoUInt16), (50 : GoUInt16)) : Range16),
		(new Range16((42657 : GoUInt16), (42725 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42895 : GoUInt16), (42999 : GoUInt16), (104 : GoUInt16)) : Range16),
		(new Range16((43003 : GoUInt16), (43009 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43011 : GoUInt16), (43013 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43015 : GoUInt16), (43018 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43020 : GoUInt16), (43042 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43072 : GoUInt16), (43123 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43138 : GoUInt16), (43187 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43250 : GoUInt16), (43255 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43259 : GoUInt16), (43261 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((43262 : GoUInt16), (43274 : GoUInt16), (12 : GoUInt16)) : Range16),
		(new Range16((43275 : GoUInt16), (43301 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43312 : GoUInt16), (43334 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43360 : GoUInt16), (43388 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43396 : GoUInt16), (43442 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43488 : GoUInt16), (43492 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43495 : GoUInt16), (43503 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43514 : GoUInt16), (43518 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43520 : GoUInt16), (43560 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43584 : GoUInt16), (43586 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43588 : GoUInt16), (43595 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43616 : GoUInt16), (43631 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43633 : GoUInt16), (43638 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43642 : GoUInt16), (43646 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((43647 : GoUInt16), (43695 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43697 : GoUInt16), (43701 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((43702 : GoUInt16), (43705 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((43706 : GoUInt16), (43709 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43712 : GoUInt16), (43714 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((43739 : GoUInt16), (43740 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43744 : GoUInt16), (43754 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43762 : GoUInt16), (43777 : GoUInt16), (15 : GoUInt16)) : Range16),
		(new Range16((43778 : GoUInt16), (43782 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43785 : GoUInt16), (43790 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43793 : GoUInt16), (43798 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43808 : GoUInt16), (43814 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43816 : GoUInt16), (43822 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43968 : GoUInt16), (44002 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((44032 : GoUInt16), (55203 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((55216 : GoUInt16), (55238 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((55243 : GoUInt16), (55291 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((63744 : GoUInt16), (64109 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64112 : GoUInt16), (64217 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64285 : GoUInt16), (64287 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((64288 : GoUInt16), (64296 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64298 : GoUInt16), (64310 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64312 : GoUInt16), (64316 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64318 : GoUInt16), (64320 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((64321 : GoUInt16), (64323 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((64324 : GoUInt16), (64326 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((64327 : GoUInt16), (64433 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64467 : GoUInt16), (64829 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64848 : GoUInt16), (64911 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64914 : GoUInt16), (64967 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65008 : GoUInt16), (65019 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65136 : GoUInt16), (65140 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65142 : GoUInt16), (65276 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65382 : GoUInt16), (65391 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65393 : GoUInt16), (65437 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65440 : GoUInt16), (65470 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65474 : GoUInt16), (65479 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65482 : GoUInt16), (65487 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65490 : GoUInt16), (65495 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65498 : GoUInt16), (65500 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("65536" : GoUInt32), ("65547" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65549" : GoUInt32), ("65574" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65576" : GoUInt32), ("65594" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65596" : GoUInt32), ("65597" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65599" : GoUInt32), ("65613" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65616" : GoUInt32), ("65629" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65664" : GoUInt32), ("65786" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66176" : GoUInt32), ("66204" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66208" : GoUInt32), ("66256" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66304" : GoUInt32), ("66335" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66349" : GoUInt32), ("66368" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66370" : GoUInt32), ("66377" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66384" : GoUInt32), ("66421" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66432" : GoUInt32), ("66461" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66464" : GoUInt32), ("66499" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66504" : GoUInt32), ("66511" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66640" : GoUInt32), ("66717" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66816" : GoUInt32), ("66855" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66864" : GoUInt32), ("66915" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67072" : GoUInt32), ("67382" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67392" : GoUInt32), ("67413" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67424" : GoUInt32), ("67431" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67584" : GoUInt32), ("67589" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67592" : GoUInt32), ("67594" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("67595" : GoUInt32), ("67637" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67639" : GoUInt32), ("67640" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67644" : GoUInt32), ("67647" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("67648" : GoUInt32), ("67669" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67680" : GoUInt32), ("67702" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67712" : GoUInt32), ("67742" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67808" : GoUInt32), ("67826" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67828" : GoUInt32), ("67829" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67840" : GoUInt32), ("67861" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67872" : GoUInt32), ("67897" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67968" : GoUInt32), ("68023" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68030" : GoUInt32), ("68031" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68096" : GoUInt32), ("68112" : GoUInt32), ("16" : GoUInt32)) : Range32),
		(new Range32(("68113" : GoUInt32), ("68115" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68117" : GoUInt32), ("68119" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68121" : GoUInt32), ("68149" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68192" : GoUInt32), ("68220" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68224" : GoUInt32), ("68252" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68288" : GoUInt32), ("68295" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68297" : GoUInt32), ("68324" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68352" : GoUInt32), ("68405" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68416" : GoUInt32), ("68437" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68448" : GoUInt32), ("68466" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68480" : GoUInt32), ("68497" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68608" : GoUInt32), ("68680" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68864" : GoUInt32), ("68899" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69248" : GoUInt32), ("69289" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69296" : GoUInt32), ("69297" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69376" : GoUInt32), ("69404" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69415" : GoUInt32), ("69424" : GoUInt32), ("9" : GoUInt32)) : Range32),
		(new Range32(("69425" : GoUInt32), ("69445" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69552" : GoUInt32), ("69572" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69600" : GoUInt32), ("69622" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69635" : GoUInt32), ("69687" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69763" : GoUInt32), ("69807" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69840" : GoUInt32), ("69864" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69891" : GoUInt32), ("69926" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69956" : GoUInt32), ("69959" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("69968" : GoUInt32), ("70002" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70006" : GoUInt32), ("70019" : GoUInt32), ("13" : GoUInt32)) : Range32),
		(new Range32(("70020" : GoUInt32), ("70066" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70081" : GoUInt32), ("70084" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70106" : GoUInt32), ("70108" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("70144" : GoUInt32), ("70161" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70163" : GoUInt32), ("70187" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70272" : GoUInt32), ("70278" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70280" : GoUInt32), ("70282" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("70283" : GoUInt32), ("70285" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70287" : GoUInt32), ("70301" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70303" : GoUInt32), ("70312" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70320" : GoUInt32), ("70366" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70405" : GoUInt32), ("70412" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70415" : GoUInt32), ("70416" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70419" : GoUInt32), ("70440" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70442" : GoUInt32), ("70448" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70450" : GoUInt32), ("70451" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70453" : GoUInt32), ("70457" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70461" : GoUInt32), ("70480" : GoUInt32), ("19" : GoUInt32)) : Range32),
		(new Range32(("70493" : GoUInt32), ("70497" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70656" : GoUInt32), ("70708" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70727" : GoUInt32), ("70730" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70751" : GoUInt32), ("70753" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70784" : GoUInt32), ("70831" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70852" : GoUInt32), ("70853" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70855" : GoUInt32), ("71040" : GoUInt32), ("185" : GoUInt32)) : Range32),
		(new Range32(("71041" : GoUInt32), ("71086" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71128" : GoUInt32), ("71131" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71168" : GoUInt32), ("71215" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71236" : GoUInt32), ("71296" : GoUInt32), ("60" : GoUInt32)) : Range32),
		(new Range32(("71297" : GoUInt32), ("71338" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71352" : GoUInt32), ("71424" : GoUInt32), ("72" : GoUInt32)) : Range32),
		(new Range32(("71425" : GoUInt32), ("71450" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71680" : GoUInt32), ("71723" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71935" : GoUInt32), ("71942" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71945" : GoUInt32), ("71948" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("71949" : GoUInt32), ("71955" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71957" : GoUInt32), ("71958" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71960" : GoUInt32), ("71983" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71999" : GoUInt32), ("72001" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("72096" : GoUInt32), ("72103" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72106" : GoUInt32), ("72144" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72161" : GoUInt32), ("72163" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("72192" : GoUInt32), ("72203" : GoUInt32), ("11" : GoUInt32)) : Range32),
		(new Range32(("72204" : GoUInt32), ("72242" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72250" : GoUInt32), ("72272" : GoUInt32), ("22" : GoUInt32)) : Range32),
		(new Range32(("72284" : GoUInt32), ("72329" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72349" : GoUInt32), ("72384" : GoUInt32), ("35" : GoUInt32)) : Range32),
		(new Range32(("72385" : GoUInt32), ("72440" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72704" : GoUInt32), ("72712" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72714" : GoUInt32), ("72750" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72768" : GoUInt32), ("72818" : GoUInt32), ("50" : GoUInt32)) : Range32),
		(new Range32(("72819" : GoUInt32), ("72847" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72960" : GoUInt32), ("72966" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72968" : GoUInt32), ("72969" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72971" : GoUInt32), ("73008" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73030" : GoUInt32), ("73056" : GoUInt32), ("26" : GoUInt32)) : Range32),
		(new Range32(("73057" : GoUInt32), ("73061" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73063" : GoUInt32), ("73064" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73066" : GoUInt32), ("73097" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73112" : GoUInt32), ("73440" : GoUInt32), ("328" : GoUInt32)) : Range32),
		(new Range32(("73441" : GoUInt32), ("73458" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73648" : GoUInt32), ("73728" : GoUInt32), ("80" : GoUInt32)) : Range32),
		(new Range32(("73729" : GoUInt32), ("74649" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("74880" : GoUInt32), ("75075" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("77824" : GoUInt32), ("78894" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("82944" : GoUInt32), ("83526" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92160" : GoUInt32), ("92728" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92736" : GoUInt32), ("92766" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92880" : GoUInt32), ("92909" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92928" : GoUInt32), ("92975" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93027" : GoUInt32), ("93047" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93053" : GoUInt32), ("93071" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93952" : GoUInt32), ("94026" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94032" : GoUInt32), ("94208" : GoUInt32), ("176" : GoUInt32)) : Range32),
		(new Range32(("94209" : GoUInt32), ("100343" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("100352" : GoUInt32), ("101589" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("101632" : GoUInt32), ("101640" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("110592" : GoUInt32), ("110878" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("110928" : GoUInt32), ("110930" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("110948" : GoUInt32), ("110951" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("110960" : GoUInt32), ("111355" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("113664" : GoUInt32), ("113770" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("113776" : GoUInt32), ("113788" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("113792" : GoUInt32), ("113800" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("113808" : GoUInt32), ("113817" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123136" : GoUInt32), ("123180" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123214" : GoUInt32), ("123584" : GoUInt32), ("370" : GoUInt32)) : Range32),
		(new Range32(("123585" : GoUInt32), ("123627" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("124928" : GoUInt32), ("125124" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126464" : GoUInt32), ("126467" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126469" : GoUInt32), ("126495" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126497" : GoUInt32), ("126498" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126500" : GoUInt32), ("126503" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("126505" : GoUInt32), ("126514" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126516" : GoUInt32), ("126519" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126521" : GoUInt32), ("126523" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126530" : GoUInt32), ("126535" : GoUInt32), ("5" : GoUInt32)) : Range32),
		(new Range32(("126537" : GoUInt32), ("126541" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126542" : GoUInt32), ("126543" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126545" : GoUInt32), ("126546" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126548" : GoUInt32), ("126551" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("126553" : GoUInt32), ("126561" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126562" : GoUInt32), ("126564" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126567" : GoUInt32), ("126570" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126572" : GoUInt32), ("126578" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126580" : GoUInt32), ("126583" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126585" : GoUInt32), ("126588" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126590" : GoUInt32), ("126592" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126593" : GoUInt32), ("126601" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126603" : GoUInt32), ("126619" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126625" : GoUInt32), ("126627" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126629" : GoUInt32), ("126633" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126635" : GoUInt32), ("126651" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("131072" : GoUInt32), ("173789" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("173824" : GoUInt32), ("177972" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("177984" : GoUInt32), ("178205" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("178208" : GoUInt32), ("183969" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("183984" : GoUInt32), ("191456" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("194560" : GoUInt32), ("195101" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("196608" : GoUInt32), ("201546" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (1 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Lt:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((453 : GoUInt16), (459 : GoUInt16), (3 : GoUInt16)) : Range16),
	(new Range16((498 : GoUInt16), (8072 : GoUInt16), (7574 : GoUInt16)) : Range16),
	(new Range16((8073 : GoUInt16), (8079 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((8088 : GoUInt16), (8095 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((8104 : GoUInt16), (8111 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((8124 : GoUInt16), (8140 : GoUInt16), (16 : GoUInt16)) : Range16),
	(new Range16((8188 : GoUInt16), (8188 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Lu:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((65 : GoUInt16), (90 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((192 : GoUInt16), (214 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((216 : GoUInt16), (222 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((256 : GoUInt16), (310 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((313 : GoUInt16), (327 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((330 : GoUInt16), (376 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((377 : GoUInt16), (381 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((385 : GoUInt16), (386 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((388 : GoUInt16), (390 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((391 : GoUInt16), (393 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((394 : GoUInt16), (395 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((398 : GoUInt16), (401 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((403 : GoUInt16), (404 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((406 : GoUInt16), (408 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((412 : GoUInt16), (413 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((415 : GoUInt16), (416 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((418 : GoUInt16), (422 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((423 : GoUInt16), (425 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((428 : GoUInt16), (430 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((431 : GoUInt16), (433 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((434 : GoUInt16), (435 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((437 : GoUInt16), (439 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((440 : GoUInt16), (444 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((452 : GoUInt16), (461 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((463 : GoUInt16), (475 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((478 : GoUInt16), (494 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((497 : GoUInt16), (500 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((502 : GoUInt16), (504 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((506 : GoUInt16), (562 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((570 : GoUInt16), (571 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((573 : GoUInt16), (574 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((577 : GoUInt16), (579 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((580 : GoUInt16), (582 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((584 : GoUInt16), (590 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((880 : GoUInt16), (882 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((886 : GoUInt16), (895 : GoUInt16), (9 : GoUInt16)) : Range16),
		(new Range16((902 : GoUInt16), (904 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((905 : GoUInt16), (906 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((908 : GoUInt16), (910 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((911 : GoUInt16), (913 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((914 : GoUInt16), (929 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((931 : GoUInt16), (939 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((975 : GoUInt16), (978 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((979 : GoUInt16), (980 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((984 : GoUInt16), (1006 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1012 : GoUInt16), (1015 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((1017 : GoUInt16), (1018 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1021 : GoUInt16), (1071 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1120 : GoUInt16), (1152 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1162 : GoUInt16), (1216 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1217 : GoUInt16), (1229 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1232 : GoUInt16), (1326 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1329 : GoUInt16), (1366 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4256 : GoUInt16), (4293 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4295 : GoUInt16), (4301 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((5024 : GoUInt16), (5109 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7312 : GoUInt16), (7354 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7357 : GoUInt16), (7359 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7680 : GoUInt16), (7828 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((7838 : GoUInt16), (7934 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((7944 : GoUInt16), (7951 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7960 : GoUInt16), (7965 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7976 : GoUInt16), (7983 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7992 : GoUInt16), (7999 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8008 : GoUInt16), (8013 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8025 : GoUInt16), (8031 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8040 : GoUInt16), (8047 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8120 : GoUInt16), (8123 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8136 : GoUInt16), (8139 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8152 : GoUInt16), (8155 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8168 : GoUInt16), (8172 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8184 : GoUInt16), (8187 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8450 : GoUInt16), (8455 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((8459 : GoUInt16), (8461 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8464 : GoUInt16), (8466 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8469 : GoUInt16), (8473 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((8474 : GoUInt16), (8477 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8484 : GoUInt16), (8490 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8491 : GoUInt16), (8493 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8496 : GoUInt16), (8499 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8510 : GoUInt16), (8511 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8517 : GoUInt16), (8579 : GoUInt16), (62 : GoUInt16)) : Range16),
		(new Range16((11264 : GoUInt16), (11310 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11360 : GoUInt16), (11362 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((11363 : GoUInt16), (11364 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11367 : GoUInt16), (11373 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((11374 : GoUInt16), (11376 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11378 : GoUInt16), (11381 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((11390 : GoUInt16), (11392 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11394 : GoUInt16), (11490 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((11499 : GoUInt16), (11501 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((11506 : GoUInt16), (42560 : GoUInt16), (31054 : GoUInt16)) : Range16),
		(new Range16((42562 : GoUInt16), (42604 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42624 : GoUInt16), (42650 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42786 : GoUInt16), (42798 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42802 : GoUInt16), (42862 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42873 : GoUInt16), (42877 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42878 : GoUInt16), (42886 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42891 : GoUInt16), (42893 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42896 : GoUInt16), (42898 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42902 : GoUInt16), (42922 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42923 : GoUInt16), (42926 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42928 : GoUInt16), (42932 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42934 : GoUInt16), (42942 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42946 : GoUInt16), (42948 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42949 : GoUInt16), (42951 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42953 : GoUInt16), (42997 : GoUInt16), (44 : GoUInt16)) : Range16),
		(new Range16((65313 : GoUInt16), (65338 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("66560" : GoUInt32), ("66599" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66736" : GoUInt32), ("66771" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68736" : GoUInt32), ("68786" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71840" : GoUInt32), ("71871" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93760" : GoUInt32), ("93791" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119808" : GoUInt32), ("119833" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119860" : GoUInt32), ("119885" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119912" : GoUInt32), ("119937" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119964" : GoUInt32), ("119966" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("119967" : GoUInt32), ("119973" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("119974" : GoUInt32), ("119977" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("119978" : GoUInt32), ("119980" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119982" : GoUInt32), ("119989" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120016" : GoUInt32), ("120041" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120068" : GoUInt32), ("120069" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120071" : GoUInt32), ("120074" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120077" : GoUInt32), ("120084" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120086" : GoUInt32), ("120092" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120120" : GoUInt32), ("120121" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120123" : GoUInt32), ("120126" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120128" : GoUInt32), ("120132" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120134" : GoUInt32), ("120138" : GoUInt32), ("4" : GoUInt32)) : Range32),
		(new Range32(("120139" : GoUInt32), ("120144" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120172" : GoUInt32), ("120197" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120224" : GoUInt32), ("120249" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120276" : GoUInt32), ("120301" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120328" : GoUInt32), ("120353" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120380" : GoUInt32), ("120405" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120432" : GoUInt32), ("120457" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120488" : GoUInt32), ("120512" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120546" : GoUInt32), ("120570" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120604" : GoUInt32), ("120628" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120662" : GoUInt32), ("120686" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120720" : GoUInt32), ("120744" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120778" : GoUInt32), ("125184" : GoUInt32), ("4406" : GoUInt32)) : Range32),
		(new Range32(("125185" : GoUInt32), ("125217" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (3 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __M:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((768 : GoUInt16), (879 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1155 : GoUInt16), (1161 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1425 : GoUInt16), (1469 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1471 : GoUInt16), (1473 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1474 : GoUInt16), (1476 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1477 : GoUInt16), (1479 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1552 : GoUInt16), (1562 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1611 : GoUInt16), (1631 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1648 : GoUInt16), (1750 : GoUInt16), (102 : GoUInt16)) : Range16),
		(new Range16((1751 : GoUInt16), (1756 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1759 : GoUInt16), (1764 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1767 : GoUInt16), (1768 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1770 : GoUInt16), (1773 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1809 : GoUInt16), (1840 : GoUInt16), (31 : GoUInt16)) : Range16),
		(new Range16((1841 : GoUInt16), (1866 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1958 : GoUInt16), (1968 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2027 : GoUInt16), (2035 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2045 : GoUInt16), (2070 : GoUInt16), (25 : GoUInt16)) : Range16),
		(new Range16((2071 : GoUInt16), (2073 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2075 : GoUInt16), (2083 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2085 : GoUInt16), (2087 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2089 : GoUInt16), (2093 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2137 : GoUInt16), (2139 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2259 : GoUInt16), (2273 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2275 : GoUInt16), (2307 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2362 : GoUInt16), (2364 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2366 : GoUInt16), (2383 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2385 : GoUInt16), (2391 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2402 : GoUInt16), (2403 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2433 : GoUInt16), (2435 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2492 : GoUInt16), (2494 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((2495 : GoUInt16), (2500 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2503 : GoUInt16), (2504 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2507 : GoUInt16), (2509 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2519 : GoUInt16), (2530 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((2531 : GoUInt16), (2558 : GoUInt16), (27 : GoUInt16)) : Range16),
		(new Range16((2561 : GoUInt16), (2563 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2620 : GoUInt16), (2622 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((2623 : GoUInt16), (2626 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2631 : GoUInt16), (2632 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2635 : GoUInt16), (2637 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2641 : GoUInt16), (2672 : GoUInt16), (31 : GoUInt16)) : Range16),
		(new Range16((2673 : GoUInt16), (2677 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((2689 : GoUInt16), (2691 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2748 : GoUInt16), (2750 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((2751 : GoUInt16), (2757 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2759 : GoUInt16), (2761 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2763 : GoUInt16), (2765 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2786 : GoUInt16), (2787 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2810 : GoUInt16), (2815 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2817 : GoUInt16), (2819 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2876 : GoUInt16), (2878 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((2879 : GoUInt16), (2884 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2887 : GoUInt16), (2888 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2891 : GoUInt16), (2893 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2901 : GoUInt16), (2903 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2914 : GoUInt16), (2915 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2946 : GoUInt16), (3006 : GoUInt16), (60 : GoUInt16)) : Range16),
		(new Range16((3007 : GoUInt16), (3010 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3014 : GoUInt16), (3016 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3018 : GoUInt16), (3021 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3031 : GoUInt16), (3072 : GoUInt16), (41 : GoUInt16)) : Range16),
		(new Range16((3073 : GoUInt16), (3076 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3134 : GoUInt16), (3140 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3142 : GoUInt16), (3144 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3146 : GoUInt16), (3149 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3157 : GoUInt16), (3158 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3170 : GoUInt16), (3171 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3201 : GoUInt16), (3203 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3260 : GoUInt16), (3262 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3263 : GoUInt16), (3268 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3270 : GoUInt16), (3272 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3274 : GoUInt16), (3277 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3285 : GoUInt16), (3286 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3298 : GoUInt16), (3299 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3328 : GoUInt16), (3331 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3387 : GoUInt16), (3388 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3390 : GoUInt16), (3396 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3398 : GoUInt16), (3400 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3402 : GoUInt16), (3405 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3415 : GoUInt16), (3426 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((3427 : GoUInt16), (3457 : GoUInt16), (30 : GoUInt16)) : Range16),
		(new Range16((3458 : GoUInt16), (3459 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3530 : GoUInt16), (3535 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((3536 : GoUInt16), (3540 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3542 : GoUInt16), (3544 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3545 : GoUInt16), (3551 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3570 : GoUInt16), (3571 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3633 : GoUInt16), (3636 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((3637 : GoUInt16), (3642 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3655 : GoUInt16), (3662 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3761 : GoUInt16), (3764 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((3765 : GoUInt16), (3772 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3784 : GoUInt16), (3789 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3864 : GoUInt16), (3865 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3893 : GoUInt16), (3897 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3902 : GoUInt16), (3903 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3953 : GoUInt16), (3972 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3974 : GoUInt16), (3975 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3981 : GoUInt16), (3991 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3993 : GoUInt16), (4028 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4038 : GoUInt16), (4139 : GoUInt16), (101 : GoUInt16)) : Range16),
		(new Range16((4140 : GoUInt16), (4158 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4182 : GoUInt16), (4185 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4190 : GoUInt16), (4192 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4194 : GoUInt16), (4196 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4199 : GoUInt16), (4205 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4209 : GoUInt16), (4212 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4226 : GoUInt16), (4237 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4239 : GoUInt16), (4250 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((4251 : GoUInt16), (4253 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4957 : GoUInt16), (4959 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5906 : GoUInt16), (5908 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5938 : GoUInt16), (5940 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5970 : GoUInt16), (5971 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6002 : GoUInt16), (6003 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6068 : GoUInt16), (6099 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6109 : GoUInt16), (6155 : GoUInt16), (46 : GoUInt16)) : Range16),
		(new Range16((6156 : GoUInt16), (6157 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6277 : GoUInt16), (6278 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6313 : GoUInt16), (6432 : GoUInt16), (119 : GoUInt16)) : Range16),
		(new Range16((6433 : GoUInt16), (6443 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6448 : GoUInt16), (6459 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6679 : GoUInt16), (6683 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6741 : GoUInt16), (6750 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6752 : GoUInt16), (6780 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6783 : GoUInt16), (6832 : GoUInt16), (49 : GoUInt16)) : Range16),
		(new Range16((6833 : GoUInt16), (6848 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6912 : GoUInt16), (6916 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6964 : GoUInt16), (6980 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7019 : GoUInt16), (7027 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7040 : GoUInt16), (7042 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7073 : GoUInt16), (7085 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7142 : GoUInt16), (7155 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7204 : GoUInt16), (7223 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7376 : GoUInt16), (7378 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7380 : GoUInt16), (7400 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7405 : GoUInt16), (7412 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((7415 : GoUInt16), (7417 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7616 : GoUInt16), (7673 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7675 : GoUInt16), (7679 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8400 : GoUInt16), (8432 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11503 : GoUInt16), (11505 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11647 : GoUInt16), (11744 : GoUInt16), (97 : GoUInt16)) : Range16),
		(new Range16((11745 : GoUInt16), (11775 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12330 : GoUInt16), (12335 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12441 : GoUInt16), (12442 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42607 : GoUInt16), (42610 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42612 : GoUInt16), (42621 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42654 : GoUInt16), (42655 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42736 : GoUInt16), (42737 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43010 : GoUInt16), (43014 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((43019 : GoUInt16), (43043 : GoUInt16), (24 : GoUInt16)) : Range16),
		(new Range16((43044 : GoUInt16), (43047 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43052 : GoUInt16), (43136 : GoUInt16), (84 : GoUInt16)) : Range16),
		(new Range16((43137 : GoUInt16), (43188 : GoUInt16), (51 : GoUInt16)) : Range16),
		(new Range16((43189 : GoUInt16), (43205 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43232 : GoUInt16), (43249 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43263 : GoUInt16), (43302 : GoUInt16), (39 : GoUInt16)) : Range16),
		(new Range16((43303 : GoUInt16), (43309 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43335 : GoUInt16), (43347 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43392 : GoUInt16), (43395 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43443 : GoUInt16), (43456 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43493 : GoUInt16), (43561 : GoUInt16), (68 : GoUInt16)) : Range16),
		(new Range16((43562 : GoUInt16), (43574 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43587 : GoUInt16), (43596 : GoUInt16), (9 : GoUInt16)) : Range16),
		(new Range16((43597 : GoUInt16), (43643 : GoUInt16), (46 : GoUInt16)) : Range16),
		(new Range16((43644 : GoUInt16), (43645 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43696 : GoUInt16), (43698 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((43699 : GoUInt16), (43700 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43703 : GoUInt16), (43704 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43710 : GoUInt16), (43711 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43713 : GoUInt16), (43755 : GoUInt16), (42 : GoUInt16)) : Range16),
		(new Range16((43756 : GoUInt16), (43759 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43765 : GoUInt16), (43766 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((44003 : GoUInt16), (44010 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((44012 : GoUInt16), (44013 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64286 : GoUInt16), (65024 : GoUInt16), (738 : GoUInt16)) : Range16),
		(new Range16((65025 : GoUInt16), (65039 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65056 : GoUInt16), (65071 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("66045" : GoUInt32), ("66272" : GoUInt32), ("227" : GoUInt32)) : Range32),
		(new Range32(("66422" : GoUInt32), ("66426" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68097" : GoUInt32), ("68099" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68101" : GoUInt32), ("68102" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68108" : GoUInt32), ("68111" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68152" : GoUInt32), ("68154" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68159" : GoUInt32), ("68325" : GoUInt32), ("166" : GoUInt32)) : Range32),
		(new Range32(("68326" : GoUInt32), ("68900" : GoUInt32), ("574" : GoUInt32)) : Range32),
		(new Range32(("68901" : GoUInt32), ("68903" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69291" : GoUInt32), ("69292" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69446" : GoUInt32), ("69456" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69632" : GoUInt32), ("69634" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69688" : GoUInt32), ("69702" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69759" : GoUInt32), ("69762" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69808" : GoUInt32), ("69818" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69888" : GoUInt32), ("69890" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69927" : GoUInt32), ("69940" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69957" : GoUInt32), ("69958" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70003" : GoUInt32), ("70016" : GoUInt32), ("13" : GoUInt32)) : Range32),
		(new Range32(("70017" : GoUInt32), ("70018" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70067" : GoUInt32), ("70080" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70089" : GoUInt32), ("70092" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70094" : GoUInt32), ("70095" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70188" : GoUInt32), ("70199" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70206" : GoUInt32), ("70367" : GoUInt32), ("161" : GoUInt32)) : Range32),
		(new Range32(("70368" : GoUInt32), ("70378" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70400" : GoUInt32), ("70403" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70459" : GoUInt32), ("70460" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70462" : GoUInt32), ("70468" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70471" : GoUInt32), ("70472" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70475" : GoUInt32), ("70477" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70487" : GoUInt32), ("70498" : GoUInt32), ("11" : GoUInt32)) : Range32),
		(new Range32(("70499" : GoUInt32), ("70502" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("70503" : GoUInt32), ("70508" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70512" : GoUInt32), ("70516" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70709" : GoUInt32), ("70726" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70750" : GoUInt32), ("70832" : GoUInt32), ("82" : GoUInt32)) : Range32),
		(new Range32(("70833" : GoUInt32), ("70851" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71087" : GoUInt32), ("71093" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71096" : GoUInt32), ("71104" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71132" : GoUInt32), ("71133" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71216" : GoUInt32), ("71232" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71339" : GoUInt32), ("71351" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71453" : GoUInt32), ("71467" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71724" : GoUInt32), ("71738" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71984" : GoUInt32), ("71989" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71991" : GoUInt32), ("71992" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71995" : GoUInt32), ("71998" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72000" : GoUInt32), ("72002" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("72003" : GoUInt32), ("72145" : GoUInt32), ("142" : GoUInt32)) : Range32),
		(new Range32(("72146" : GoUInt32), ("72151" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72154" : GoUInt32), ("72160" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72164" : GoUInt32), ("72193" : GoUInt32), ("29" : GoUInt32)) : Range32),
		(new Range32(("72194" : GoUInt32), ("72202" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72243" : GoUInt32), ("72249" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72251" : GoUInt32), ("72254" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72263" : GoUInt32), ("72273" : GoUInt32), ("10" : GoUInt32)) : Range32),
		(new Range32(("72274" : GoUInt32), ("72283" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72330" : GoUInt32), ("72345" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72751" : GoUInt32), ("72758" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72760" : GoUInt32), ("72767" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72850" : GoUInt32), ("72871" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72873" : GoUInt32), ("72886" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73009" : GoUInt32), ("73014" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73018" : GoUInt32), ("73020" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("73021" : GoUInt32), ("73023" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("73024" : GoUInt32), ("73029" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73031" : GoUInt32), ("73098" : GoUInt32), ("67" : GoUInt32)) : Range32),
		(new Range32(("73099" : GoUInt32), ("73102" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73104" : GoUInt32), ("73105" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73107" : GoUInt32), ("73111" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73459" : GoUInt32), ("73462" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92912" : GoUInt32), ("92916" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92976" : GoUInt32), ("92982" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94031" : GoUInt32), ("94033" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("94034" : GoUInt32), ("94087" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94095" : GoUInt32), ("94098" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94180" : GoUInt32), ("94192" : GoUInt32), ("12" : GoUInt32)) : Range32),
		(new Range32(("94193" : GoUInt32), ("113821" : GoUInt32), ("19628" : GoUInt32)) : Range32),
		(new Range32(("113822" : GoUInt32), ("119141" : GoUInt32), ("5319" : GoUInt32)) : Range32),
		(new Range32(("119142" : GoUInt32), ("119145" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119149" : GoUInt32), ("119154" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119163" : GoUInt32), ("119170" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119173" : GoUInt32), ("119179" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119210" : GoUInt32), ("119213" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119362" : GoUInt32), ("119364" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121344" : GoUInt32), ("121398" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121403" : GoUInt32), ("121452" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121461" : GoUInt32), ("121476" : GoUInt32), ("15" : GoUInt32)) : Range32),
		(new Range32(("121499" : GoUInt32), ("121503" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121505" : GoUInt32), ("121519" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122880" : GoUInt32), ("122886" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122888" : GoUInt32), ("122904" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122907" : GoUInt32), ("122913" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122915" : GoUInt32), ("122916" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122918" : GoUInt32), ("122922" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123184" : GoUInt32), ("123190" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123628" : GoUInt32), ("123631" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125136" : GoUInt32), ("125142" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125252" : GoUInt32), ("125258" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("917760" : GoUInt32), ("917999" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Mc:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((2307 : GoUInt16), (2363 : GoUInt16), (56 : GoUInt16)) : Range16),
		(new Range16((2366 : GoUInt16), (2368 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2377 : GoUInt16), (2380 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2382 : GoUInt16), (2383 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2434 : GoUInt16), (2435 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2494 : GoUInt16), (2496 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2503 : GoUInt16), (2504 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2507 : GoUInt16), (2508 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2519 : GoUInt16), (2563 : GoUInt16), (44 : GoUInt16)) : Range16),
		(new Range16((2622 : GoUInt16), (2624 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2691 : GoUInt16), (2750 : GoUInt16), (59 : GoUInt16)) : Range16),
		(new Range16((2751 : GoUInt16), (2752 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2761 : GoUInt16), (2763 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((2764 : GoUInt16), (2818 : GoUInt16), (54 : GoUInt16)) : Range16),
		(new Range16((2819 : GoUInt16), (2878 : GoUInt16), (59 : GoUInt16)) : Range16),
		(new Range16((2880 : GoUInt16), (2887 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((2888 : GoUInt16), (2891 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((2892 : GoUInt16), (2903 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((3006 : GoUInt16), (3007 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3009 : GoUInt16), (3010 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3014 : GoUInt16), (3016 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3018 : GoUInt16), (3020 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3031 : GoUInt16), (3073 : GoUInt16), (42 : GoUInt16)) : Range16),
		(new Range16((3074 : GoUInt16), (3075 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3137 : GoUInt16), (3140 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3202 : GoUInt16), (3203 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3262 : GoUInt16), (3264 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3265 : GoUInt16), (3268 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3271 : GoUInt16), (3272 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3274 : GoUInt16), (3275 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3285 : GoUInt16), (3286 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3330 : GoUInt16), (3331 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3390 : GoUInt16), (3392 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3398 : GoUInt16), (3400 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3402 : GoUInt16), (3404 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3415 : GoUInt16), (3458 : GoUInt16), (43 : GoUInt16)) : Range16),
		(new Range16((3459 : GoUInt16), (3535 : GoUInt16), (76 : GoUInt16)) : Range16),
		(new Range16((3536 : GoUInt16), (3537 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3544 : GoUInt16), (3551 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3570 : GoUInt16), (3571 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3902 : GoUInt16), (3903 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3967 : GoUInt16), (4139 : GoUInt16), (172 : GoUInt16)) : Range16),
		(new Range16((4140 : GoUInt16), (4145 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((4152 : GoUInt16), (4155 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((4156 : GoUInt16), (4182 : GoUInt16), (26 : GoUInt16)) : Range16),
		(new Range16((4183 : GoUInt16), (4194 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((4195 : GoUInt16), (4196 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4199 : GoUInt16), (4205 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4227 : GoUInt16), (4228 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4231 : GoUInt16), (4236 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4239 : GoUInt16), (4250 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((4251 : GoUInt16), (4252 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6070 : GoUInt16), (6078 : GoUInt16), (8 : GoUInt16)) : Range16),
		(new Range16((6079 : GoUInt16), (6085 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6087 : GoUInt16), (6088 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6435 : GoUInt16), (6438 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6441 : GoUInt16), (6443 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6448 : GoUInt16), (6449 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6451 : GoUInt16), (6456 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6681 : GoUInt16), (6682 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6741 : GoUInt16), (6743 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((6753 : GoUInt16), (6755 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((6756 : GoUInt16), (6765 : GoUInt16), (9 : GoUInt16)) : Range16),
		(new Range16((6766 : GoUInt16), (6770 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6916 : GoUInt16), (6965 : GoUInt16), (49 : GoUInt16)) : Range16),
		(new Range16((6971 : GoUInt16), (6973 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((6974 : GoUInt16), (6977 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6979 : GoUInt16), (6980 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7042 : GoUInt16), (7073 : GoUInt16), (31 : GoUInt16)) : Range16),
		(new Range16((7078 : GoUInt16), (7079 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7082 : GoUInt16), (7143 : GoUInt16), (61 : GoUInt16)) : Range16),
		(new Range16((7146 : GoUInt16), (7148 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7150 : GoUInt16), (7154 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((7155 : GoUInt16), (7204 : GoUInt16), (49 : GoUInt16)) : Range16),
		(new Range16((7205 : GoUInt16), (7211 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7220 : GoUInt16), (7221 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7393 : GoUInt16), (7415 : GoUInt16), (22 : GoUInt16)) : Range16),
		(new Range16((12334 : GoUInt16), (12335 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43043 : GoUInt16), (43044 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43047 : GoUInt16), (43136 : GoUInt16), (89 : GoUInt16)) : Range16),
		(new Range16((43137 : GoUInt16), (43188 : GoUInt16), (51 : GoUInt16)) : Range16),
		(new Range16((43189 : GoUInt16), (43203 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43346 : GoUInt16), (43347 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43395 : GoUInt16), (43444 : GoUInt16), (49 : GoUInt16)) : Range16),
		(new Range16((43445 : GoUInt16), (43450 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((43451 : GoUInt16), (43454 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((43455 : GoUInt16), (43456 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43567 : GoUInt16), (43568 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43571 : GoUInt16), (43572 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43597 : GoUInt16), (43643 : GoUInt16), (46 : GoUInt16)) : Range16),
		(new Range16((43645 : GoUInt16), (43755 : GoUInt16), (110 : GoUInt16)) : Range16),
		(new Range16((43758 : GoUInt16), (43759 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43765 : GoUInt16), (44003 : GoUInt16), (238 : GoUInt16)) : Range16),
		(new Range16((44004 : GoUInt16), (44006 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((44007 : GoUInt16), (44009 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((44010 : GoUInt16), (44012 : GoUInt16), (2 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("69632" : GoUInt32), ("69634" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("69762" : GoUInt32), ("69808" : GoUInt32), ("46" : GoUInt32)) : Range32),
		(new Range32(("69809" : GoUInt32), ("69810" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69815" : GoUInt32), ("69816" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69932" : GoUInt32), ("69957" : GoUInt32), ("25" : GoUInt32)) : Range32),
		(new Range32(("69958" : GoUInt32), ("70018" : GoUInt32), ("60" : GoUInt32)) : Range32),
		(new Range32(("70067" : GoUInt32), ("70069" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70079" : GoUInt32), ("70080" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70094" : GoUInt32), ("70188" : GoUInt32), ("94" : GoUInt32)) : Range32),
		(new Range32(("70189" : GoUInt32), ("70190" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70194" : GoUInt32), ("70195" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70197" : GoUInt32), ("70368" : GoUInt32), ("171" : GoUInt32)) : Range32),
		(new Range32(("70369" : GoUInt32), ("70370" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70402" : GoUInt32), ("70403" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70462" : GoUInt32), ("70463" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70465" : GoUInt32), ("70468" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70471" : GoUInt32), ("70472" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70475" : GoUInt32), ("70477" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70487" : GoUInt32), ("70498" : GoUInt32), ("11" : GoUInt32)) : Range32),
		(new Range32(("70499" : GoUInt32), ("70709" : GoUInt32), ("210" : GoUInt32)) : Range32),
		(new Range32(("70710" : GoUInt32), ("70711" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70720" : GoUInt32), ("70721" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70725" : GoUInt32), ("70832" : GoUInt32), ("107" : GoUInt32)) : Range32),
		(new Range32(("70833" : GoUInt32), ("70834" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70841" : GoUInt32), ("70843" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("70844" : GoUInt32), ("70846" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70849" : GoUInt32), ("71087" : GoUInt32), ("238" : GoUInt32)) : Range32),
		(new Range32(("71088" : GoUInt32), ("71089" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71096" : GoUInt32), ("71099" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71102" : GoUInt32), ("71216" : GoUInt32), ("114" : GoUInt32)) : Range32),
		(new Range32(("71217" : GoUInt32), ("71218" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71227" : GoUInt32), ("71228" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71230" : GoUInt32), ("71340" : GoUInt32), ("110" : GoUInt32)) : Range32),
		(new Range32(("71342" : GoUInt32), ("71343" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71350" : GoUInt32), ("71456" : GoUInt32), ("106" : GoUInt32)) : Range32),
		(new Range32(("71457" : GoUInt32), ("71462" : GoUInt32), ("5" : GoUInt32)) : Range32),
		(new Range32(("71724" : GoUInt32), ("71726" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71736" : GoUInt32), ("71984" : GoUInt32), ("248" : GoUInt32)) : Range32),
		(new Range32(("71985" : GoUInt32), ("71989" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71991" : GoUInt32), ("71992" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71997" : GoUInt32), ("72000" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("72002" : GoUInt32), ("72145" : GoUInt32), ("143" : GoUInt32)) : Range32),
		(new Range32(("72146" : GoUInt32), ("72147" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72156" : GoUInt32), ("72159" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72164" : GoUInt32), ("72249" : GoUInt32), ("85" : GoUInt32)) : Range32),
		(new Range32(("72279" : GoUInt32), ("72280" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72343" : GoUInt32), ("72751" : GoUInt32), ("408" : GoUInt32)) : Range32),
		(new Range32(("72766" : GoUInt32), ("72873" : GoUInt32), ("107" : GoUInt32)) : Range32),
		(new Range32(("72881" : GoUInt32), ("72884" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("73098" : GoUInt32), ("73102" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73107" : GoUInt32), ("73108" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73110" : GoUInt32), ("73461" : GoUInt32), ("351" : GoUInt32)) : Range32),
		(new Range32(("73462" : GoUInt32), ("94033" : GoUInt32), ("20571" : GoUInt32)) : Range32),
		(new Range32(("94034" : GoUInt32), ("94087" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94192" : GoUInt32), ("94193" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119141" : GoUInt32), ("119142" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119149" : GoUInt32), ("119154" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Me:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((1160 : GoUInt16), (1161 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6846 : GoUInt16), (8413 : GoUInt16), (1567 : GoUInt16)) : Range16),
	(new Range16((8414 : GoUInt16), (8416 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((8418 : GoUInt16), (8420 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((42608 : GoUInt16), (42610 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Mn:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((768 : GoUInt16), (879 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1155 : GoUInt16), (1159 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1425 : GoUInt16), (1469 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1471 : GoUInt16), (1473 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1474 : GoUInt16), (1476 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1477 : GoUInt16), (1479 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1552 : GoUInt16), (1562 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1611 : GoUInt16), (1631 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1648 : GoUInt16), (1750 : GoUInt16), (102 : GoUInt16)) : Range16),
		(new Range16((1751 : GoUInt16), (1756 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1759 : GoUInt16), (1764 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1767 : GoUInt16), (1768 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1770 : GoUInt16), (1773 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1809 : GoUInt16), (1840 : GoUInt16), (31 : GoUInt16)) : Range16),
		(new Range16((1841 : GoUInt16), (1866 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1958 : GoUInt16), (1968 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2027 : GoUInt16), (2035 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2045 : GoUInt16), (2070 : GoUInt16), (25 : GoUInt16)) : Range16),
		(new Range16((2071 : GoUInt16), (2073 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2075 : GoUInt16), (2083 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2085 : GoUInt16), (2087 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2089 : GoUInt16), (2093 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2137 : GoUInt16), (2139 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2259 : GoUInt16), (2273 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2275 : GoUInt16), (2306 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2362 : GoUInt16), (2364 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((2369 : GoUInt16), (2376 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2381 : GoUInt16), (2385 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((2386 : GoUInt16), (2391 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2402 : GoUInt16), (2403 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2433 : GoUInt16), (2492 : GoUInt16), (59 : GoUInt16)) : Range16),
		(new Range16((2497 : GoUInt16), (2500 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2509 : GoUInt16), (2530 : GoUInt16), (21 : GoUInt16)) : Range16),
		(new Range16((2531 : GoUInt16), (2558 : GoUInt16), (27 : GoUInt16)) : Range16),
		(new Range16((2561 : GoUInt16), (2562 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2620 : GoUInt16), (2625 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((2626 : GoUInt16), (2631 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((2632 : GoUInt16), (2635 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((2636 : GoUInt16), (2637 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2641 : GoUInt16), (2672 : GoUInt16), (31 : GoUInt16)) : Range16),
		(new Range16((2673 : GoUInt16), (2677 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((2689 : GoUInt16), (2690 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2748 : GoUInt16), (2753 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((2754 : GoUInt16), (2757 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2759 : GoUInt16), (2760 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2765 : GoUInt16), (2786 : GoUInt16), (21 : GoUInt16)) : Range16),
		(new Range16((2787 : GoUInt16), (2810 : GoUInt16), (23 : GoUInt16)) : Range16),
		(new Range16((2811 : GoUInt16), (2815 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2817 : GoUInt16), (2876 : GoUInt16), (59 : GoUInt16)) : Range16),
		(new Range16((2879 : GoUInt16), (2881 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((2882 : GoUInt16), (2884 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2893 : GoUInt16), (2901 : GoUInt16), (8 : GoUInt16)) : Range16),
		(new Range16((2902 : GoUInt16), (2914 : GoUInt16), (12 : GoUInt16)) : Range16),
		(new Range16((2915 : GoUInt16), (2946 : GoUInt16), (31 : GoUInt16)) : Range16),
		(new Range16((3008 : GoUInt16), (3021 : GoUInt16), (13 : GoUInt16)) : Range16),
		(new Range16((3072 : GoUInt16), (3076 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((3134 : GoUInt16), (3136 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3142 : GoUInt16), (3144 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3146 : GoUInt16), (3149 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3157 : GoUInt16), (3158 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3170 : GoUInt16), (3171 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3201 : GoUInt16), (3260 : GoUInt16), (59 : GoUInt16)) : Range16),
		(new Range16((3263 : GoUInt16), (3270 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((3276 : GoUInt16), (3277 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3298 : GoUInt16), (3299 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3328 : GoUInt16), (3329 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3387 : GoUInt16), (3388 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3393 : GoUInt16), (3396 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3405 : GoUInt16), (3426 : GoUInt16), (21 : GoUInt16)) : Range16),
		(new Range16((3427 : GoUInt16), (3457 : GoUInt16), (30 : GoUInt16)) : Range16),
		(new Range16((3530 : GoUInt16), (3538 : GoUInt16), (8 : GoUInt16)) : Range16),
		(new Range16((3539 : GoUInt16), (3540 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3542 : GoUInt16), (3633 : GoUInt16), (91 : GoUInt16)) : Range16),
		(new Range16((3636 : GoUInt16), (3642 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3655 : GoUInt16), (3662 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3761 : GoUInt16), (3764 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((3765 : GoUInt16), (3772 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3784 : GoUInt16), (3789 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3864 : GoUInt16), (3865 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3893 : GoUInt16), (3897 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3953 : GoUInt16), (3966 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3968 : GoUInt16), (3972 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3974 : GoUInt16), (3975 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3981 : GoUInt16), (3991 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3993 : GoUInt16), (4028 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4038 : GoUInt16), (4141 : GoUInt16), (103 : GoUInt16)) : Range16),
		(new Range16((4142 : GoUInt16), (4144 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4146 : GoUInt16), (4151 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4153 : GoUInt16), (4154 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4157 : GoUInt16), (4158 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4184 : GoUInt16), (4185 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4190 : GoUInt16), (4192 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4209 : GoUInt16), (4212 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4226 : GoUInt16), (4229 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((4230 : GoUInt16), (4237 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((4253 : GoUInt16), (4957 : GoUInt16), (704 : GoUInt16)) : Range16),
		(new Range16((4958 : GoUInt16), (4959 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5906 : GoUInt16), (5908 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5938 : GoUInt16), (5940 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5970 : GoUInt16), (5971 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6002 : GoUInt16), (6003 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6068 : GoUInt16), (6069 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6071 : GoUInt16), (6077 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6086 : GoUInt16), (6089 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((6090 : GoUInt16), (6099 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6109 : GoUInt16), (6155 : GoUInt16), (46 : GoUInt16)) : Range16),
		(new Range16((6156 : GoUInt16), (6157 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6277 : GoUInt16), (6278 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6313 : GoUInt16), (6432 : GoUInt16), (119 : GoUInt16)) : Range16),
		(new Range16((6433 : GoUInt16), (6434 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6439 : GoUInt16), (6440 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6450 : GoUInt16), (6457 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((6458 : GoUInt16), (6459 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6679 : GoUInt16), (6680 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6683 : GoUInt16), (6742 : GoUInt16), (59 : GoUInt16)) : Range16),
		(new Range16((6744 : GoUInt16), (6750 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6752 : GoUInt16), (6754 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((6757 : GoUInt16), (6764 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6771 : GoUInt16), (6780 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6783 : GoUInt16), (6832 : GoUInt16), (49 : GoUInt16)) : Range16),
		(new Range16((6833 : GoUInt16), (6845 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6847 : GoUInt16), (6848 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6912 : GoUInt16), (6915 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6964 : GoUInt16), (6966 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((6967 : GoUInt16), (6970 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6972 : GoUInt16), (6978 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((7019 : GoUInt16), (7027 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7040 : GoUInt16), (7041 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7074 : GoUInt16), (7077 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7080 : GoUInt16), (7081 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7083 : GoUInt16), (7085 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7142 : GoUInt16), (7144 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((7145 : GoUInt16), (7149 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((7151 : GoUInt16), (7153 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7212 : GoUInt16), (7219 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7222 : GoUInt16), (7223 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7376 : GoUInt16), (7378 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7380 : GoUInt16), (7392 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7394 : GoUInt16), (7400 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7405 : GoUInt16), (7412 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((7416 : GoUInt16), (7417 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7616 : GoUInt16), (7673 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7675 : GoUInt16), (7679 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8400 : GoUInt16), (8412 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8417 : GoUInt16), (8421 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((8422 : GoUInt16), (8432 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11503 : GoUInt16), (11505 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11647 : GoUInt16), (11744 : GoUInt16), (97 : GoUInt16)) : Range16),
		(new Range16((11745 : GoUInt16), (11775 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12330 : GoUInt16), (12333 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12441 : GoUInt16), (12442 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42607 : GoUInt16), (42612 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((42613 : GoUInt16), (42621 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42654 : GoUInt16), (42655 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42736 : GoUInt16), (42737 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43010 : GoUInt16), (43014 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((43019 : GoUInt16), (43045 : GoUInt16), (26 : GoUInt16)) : Range16),
		(new Range16((43046 : GoUInt16), (43052 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((43204 : GoUInt16), (43205 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43232 : GoUInt16), (43249 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43263 : GoUInt16), (43302 : GoUInt16), (39 : GoUInt16)) : Range16),
		(new Range16((43303 : GoUInt16), (43309 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43335 : GoUInt16), (43345 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43392 : GoUInt16), (43394 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43443 : GoUInt16), (43446 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((43447 : GoUInt16), (43449 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43452 : GoUInt16), (43453 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43493 : GoUInt16), (43561 : GoUInt16), (68 : GoUInt16)) : Range16),
		(new Range16((43562 : GoUInt16), (43566 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43569 : GoUInt16), (43570 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43573 : GoUInt16), (43574 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43587 : GoUInt16), (43596 : GoUInt16), (9 : GoUInt16)) : Range16),
		(new Range16((43644 : GoUInt16), (43696 : GoUInt16), (52 : GoUInt16)) : Range16),
		(new Range16((43698 : GoUInt16), (43700 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43703 : GoUInt16), (43704 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43710 : GoUInt16), (43711 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43713 : GoUInt16), (43756 : GoUInt16), (43 : GoUInt16)) : Range16),
		(new Range16((43757 : GoUInt16), (43766 : GoUInt16), (9 : GoUInt16)) : Range16),
		(new Range16((44005 : GoUInt16), (44008 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((44013 : GoUInt16), (64286 : GoUInt16), (20273 : GoUInt16)) : Range16),
		(new Range16((65024 : GoUInt16), (65039 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65056 : GoUInt16), (65071 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("66045" : GoUInt32), ("66272" : GoUInt32), ("227" : GoUInt32)) : Range32),
		(new Range32(("66422" : GoUInt32), ("66426" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68097" : GoUInt32), ("68099" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68101" : GoUInt32), ("68102" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68108" : GoUInt32), ("68111" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68152" : GoUInt32), ("68154" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68159" : GoUInt32), ("68325" : GoUInt32), ("166" : GoUInt32)) : Range32),
		(new Range32(("68326" : GoUInt32), ("68900" : GoUInt32), ("574" : GoUInt32)) : Range32),
		(new Range32(("68901" : GoUInt32), ("68903" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69291" : GoUInt32), ("69292" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69446" : GoUInt32), ("69456" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69633" : GoUInt32), ("69688" : GoUInt32), ("55" : GoUInt32)) : Range32),
		(new Range32(("69689" : GoUInt32), ("69702" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69759" : GoUInt32), ("69761" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69811" : GoUInt32), ("69814" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69817" : GoUInt32), ("69818" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69888" : GoUInt32), ("69890" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69927" : GoUInt32), ("69931" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69933" : GoUInt32), ("69940" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70003" : GoUInt32), ("70016" : GoUInt32), ("13" : GoUInt32)) : Range32),
		(new Range32(("70017" : GoUInt32), ("70070" : GoUInt32), ("53" : GoUInt32)) : Range32),
		(new Range32(("70071" : GoUInt32), ("70078" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70089" : GoUInt32), ("70092" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70095" : GoUInt32), ("70191" : GoUInt32), ("96" : GoUInt32)) : Range32),
		(new Range32(("70192" : GoUInt32), ("70193" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70196" : GoUInt32), ("70198" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("70199" : GoUInt32), ("70206" : GoUInt32), ("7" : GoUInt32)) : Range32),
		(new Range32(("70367" : GoUInt32), ("70371" : GoUInt32), ("4" : GoUInt32)) : Range32),
		(new Range32(("70372" : GoUInt32), ("70378" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70400" : GoUInt32), ("70401" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70459" : GoUInt32), ("70460" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70464" : GoUInt32), ("70502" : GoUInt32), ("38" : GoUInt32)) : Range32),
		(new Range32(("70503" : GoUInt32), ("70508" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70512" : GoUInt32), ("70516" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70712" : GoUInt32), ("70719" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70722" : GoUInt32), ("70724" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70726" : GoUInt32), ("70750" : GoUInt32), ("24" : GoUInt32)) : Range32),
		(new Range32(("70835" : GoUInt32), ("70840" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70842" : GoUInt32), ("70847" : GoUInt32), ("5" : GoUInt32)) : Range32),
		(new Range32(("70848" : GoUInt32), ("70850" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("70851" : GoUInt32), ("71090" : GoUInt32), ("239" : GoUInt32)) : Range32),
		(new Range32(("71091" : GoUInt32), ("71093" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71100" : GoUInt32), ("71101" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71103" : GoUInt32), ("71104" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71132" : GoUInt32), ("71133" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71219" : GoUInt32), ("71226" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71229" : GoUInt32), ("71231" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("71232" : GoUInt32), ("71339" : GoUInt32), ("107" : GoUInt32)) : Range32),
		(new Range32(("71341" : GoUInt32), ("71344" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("71345" : GoUInt32), ("71349" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71351" : GoUInt32), ("71453" : GoUInt32), ("102" : GoUInt32)) : Range32),
		(new Range32(("71454" : GoUInt32), ("71455" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71458" : GoUInt32), ("71461" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71463" : GoUInt32), ("71467" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71727" : GoUInt32), ("71735" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71737" : GoUInt32), ("71738" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71995" : GoUInt32), ("71996" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71998" : GoUInt32), ("72003" : GoUInt32), ("5" : GoUInt32)) : Range32),
		(new Range32(("72148" : GoUInt32), ("72151" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72154" : GoUInt32), ("72155" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72160" : GoUInt32), ("72193" : GoUInt32), ("33" : GoUInt32)) : Range32),
		(new Range32(("72194" : GoUInt32), ("72202" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72243" : GoUInt32), ("72248" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72251" : GoUInt32), ("72254" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72263" : GoUInt32), ("72273" : GoUInt32), ("10" : GoUInt32)) : Range32),
		(new Range32(("72274" : GoUInt32), ("72278" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72281" : GoUInt32), ("72283" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72330" : GoUInt32), ("72342" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72344" : GoUInt32), ("72345" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72752" : GoUInt32), ("72758" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72760" : GoUInt32), ("72765" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72767" : GoUInt32), ("72850" : GoUInt32), ("83" : GoUInt32)) : Range32),
		(new Range32(("72851" : GoUInt32), ("72871" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72874" : GoUInt32), ("72880" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72882" : GoUInt32), ("72883" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72885" : GoUInt32), ("72886" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73009" : GoUInt32), ("73014" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73018" : GoUInt32), ("73020" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("73021" : GoUInt32), ("73023" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("73024" : GoUInt32), ("73029" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73031" : GoUInt32), ("73104" : GoUInt32), ("73" : GoUInt32)) : Range32),
		(new Range32(("73105" : GoUInt32), ("73109" : GoUInt32), ("4" : GoUInt32)) : Range32),
		(new Range32(("73111" : GoUInt32), ("73459" : GoUInt32), ("348" : GoUInt32)) : Range32),
		(new Range32(("73460" : GoUInt32), ("92912" : GoUInt32), ("19452" : GoUInt32)) : Range32),
		(new Range32(("92913" : GoUInt32), ("92916" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92976" : GoUInt32), ("92982" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94031" : GoUInt32), ("94095" : GoUInt32), ("64" : GoUInt32)) : Range32),
		(new Range32(("94096" : GoUInt32), ("94098" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94180" : GoUInt32), ("113821" : GoUInt32), ("19641" : GoUInt32)) : Range32),
		(new Range32(("113822" : GoUInt32), ("119143" : GoUInt32), ("5321" : GoUInt32)) : Range32),
		(new Range32(("119144" : GoUInt32), ("119145" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119163" : GoUInt32), ("119170" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119173" : GoUInt32), ("119179" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119210" : GoUInt32), ("119213" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119362" : GoUInt32), ("119364" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121344" : GoUInt32), ("121398" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121403" : GoUInt32), ("121452" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121461" : GoUInt32), ("121476" : GoUInt32), ("15" : GoUInt32)) : Range32),
		(new Range32(("121499" : GoUInt32), ("121503" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121505" : GoUInt32), ("121519" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122880" : GoUInt32), ("122886" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122888" : GoUInt32), ("122904" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122907" : GoUInt32), ("122913" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122915" : GoUInt32), ("122916" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122918" : GoUInt32), ("122922" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123184" : GoUInt32), ("123190" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123628" : GoUInt32), ("123631" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125136" : GoUInt32), ("125142" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125252" : GoUInt32), ("125258" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("917760" : GoUInt32), ("917999" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __N:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((48 : GoUInt16), (57 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((178 : GoUInt16), (179 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((185 : GoUInt16), (188 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((189 : GoUInt16), (190 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1632 : GoUInt16), (1641 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1776 : GoUInt16), (1785 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1984 : GoUInt16), (1993 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2406 : GoUInt16), (2415 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2534 : GoUInt16), (2543 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2548 : GoUInt16), (2553 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2662 : GoUInt16), (2671 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2790 : GoUInt16), (2799 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2918 : GoUInt16), (2927 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2930 : GoUInt16), (2935 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3046 : GoUInt16), (3058 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3174 : GoUInt16), (3183 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3192 : GoUInt16), (3198 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3302 : GoUInt16), (3311 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3416 : GoUInt16), (3422 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3430 : GoUInt16), (3448 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3558 : GoUInt16), (3567 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3664 : GoUInt16), (3673 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3792 : GoUInt16), (3801 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3872 : GoUInt16), (3891 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4160 : GoUInt16), (4169 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4240 : GoUInt16), (4249 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4969 : GoUInt16), (4988 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5870 : GoUInt16), (5872 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6112 : GoUInt16), (6121 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6128 : GoUInt16), (6137 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6160 : GoUInt16), (6169 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6470 : GoUInt16), (6479 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6608 : GoUInt16), (6618 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6784 : GoUInt16), (6793 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6800 : GoUInt16), (6809 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6992 : GoUInt16), (7001 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7088 : GoUInt16), (7097 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7232 : GoUInt16), (7241 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7248 : GoUInt16), (7257 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8304 : GoUInt16), (8308 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((8309 : GoUInt16), (8313 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8320 : GoUInt16), (8329 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8528 : GoUInt16), (8578 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8581 : GoUInt16), (8585 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9312 : GoUInt16), (9371 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9450 : GoUInt16), (9471 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10102 : GoUInt16), (10131 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11517 : GoUInt16), (12295 : GoUInt16), (778 : GoUInt16)) : Range16),
		(new Range16((12321 : GoUInt16), (12329 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12344 : GoUInt16), (12346 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12690 : GoUInt16), (12693 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12832 : GoUInt16), (12841 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12872 : GoUInt16), (12879 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12881 : GoUInt16), (12895 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12928 : GoUInt16), (12937 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12977 : GoUInt16), (12991 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42528 : GoUInt16), (42537 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42726 : GoUInt16), (42735 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43056 : GoUInt16), (43061 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43216 : GoUInt16), (43225 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43264 : GoUInt16), (43273 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43472 : GoUInt16), (43481 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43504 : GoUInt16), (43513 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43600 : GoUInt16), (43609 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((44016 : GoUInt16), (44025 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65296 : GoUInt16), (65305 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("65799" : GoUInt32), ("65843" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65856" : GoUInt32), ("65912" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65930" : GoUInt32), ("65931" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66273" : GoUInt32), ("66299" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66336" : GoUInt32), ("66339" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66369" : GoUInt32), ("66378" : GoUInt32), ("9" : GoUInt32)) : Range32),
		(new Range32(("66513" : GoUInt32), ("66517" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66720" : GoUInt32), ("66729" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67672" : GoUInt32), ("67679" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67705" : GoUInt32), ("67711" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67751" : GoUInt32), ("67759" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67835" : GoUInt32), ("67839" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67862" : GoUInt32), ("67867" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68028" : GoUInt32), ("68029" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68032" : GoUInt32), ("68047" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68050" : GoUInt32), ("68095" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68160" : GoUInt32), ("68168" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68221" : GoUInt32), ("68222" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68253" : GoUInt32), ("68255" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68331" : GoUInt32), ("68335" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68440" : GoUInt32), ("68447" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68472" : GoUInt32), ("68479" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68521" : GoUInt32), ("68527" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68858" : GoUInt32), ("68863" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68912" : GoUInt32), ("68921" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69216" : GoUInt32), ("69246" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69405" : GoUInt32), ("69414" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69457" : GoUInt32), ("69460" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69573" : GoUInt32), ("69579" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69714" : GoUInt32), ("69743" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69872" : GoUInt32), ("69881" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69942" : GoUInt32), ("69951" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70096" : GoUInt32), ("70105" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70113" : GoUInt32), ("70132" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70384" : GoUInt32), ("70393" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70736" : GoUInt32), ("70745" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70864" : GoUInt32), ("70873" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71248" : GoUInt32), ("71257" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71360" : GoUInt32), ("71369" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71472" : GoUInt32), ("71483" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71904" : GoUInt32), ("71922" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72016" : GoUInt32), ("72025" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72784" : GoUInt32), ("72812" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73040" : GoUInt32), ("73049" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73120" : GoUInt32), ("73129" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73664" : GoUInt32), ("73684" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("74752" : GoUInt32), ("74862" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92768" : GoUInt32), ("92777" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93008" : GoUInt32), ("93017" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93019" : GoUInt32), ("93025" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93824" : GoUInt32), ("93846" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119520" : GoUInt32), ("119539" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119648" : GoUInt32), ("119672" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120782" : GoUInt32), ("120831" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123200" : GoUInt32), ("123209" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123632" : GoUInt32), ("123641" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125127" : GoUInt32), ("125135" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125264" : GoUInt32), ("125273" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126065" : GoUInt32), ("126123" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126125" : GoUInt32), ("126127" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126129" : GoUInt32), ("126132" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126209" : GoUInt32), ("126253" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126255" : GoUInt32), ("126269" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127232" : GoUInt32), ("127244" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("130032" : GoUInt32), ("130041" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (4 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Nd:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((48 : GoUInt16), (57 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1632 : GoUInt16), (1641 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1776 : GoUInt16), (1785 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1984 : GoUInt16), (1993 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2406 : GoUInt16), (2415 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2534 : GoUInt16), (2543 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2662 : GoUInt16), (2671 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2790 : GoUInt16), (2799 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2918 : GoUInt16), (2927 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3046 : GoUInt16), (3055 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3174 : GoUInt16), (3183 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3302 : GoUInt16), (3311 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3430 : GoUInt16), (3439 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3558 : GoUInt16), (3567 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3664 : GoUInt16), (3673 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3792 : GoUInt16), (3801 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3872 : GoUInt16), (3881 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4160 : GoUInt16), (4169 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4240 : GoUInt16), (4249 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6112 : GoUInt16), (6121 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6160 : GoUInt16), (6169 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6470 : GoUInt16), (6479 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6608 : GoUInt16), (6617 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6784 : GoUInt16), (6793 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6800 : GoUInt16), (6809 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6992 : GoUInt16), (7001 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7088 : GoUInt16), (7097 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7232 : GoUInt16), (7241 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7248 : GoUInt16), (7257 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42528 : GoUInt16), (42537 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43216 : GoUInt16), (43225 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43264 : GoUInt16), (43273 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43472 : GoUInt16), (43481 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43504 : GoUInt16), (43513 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43600 : GoUInt16), (43609 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((44016 : GoUInt16), (44025 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65296 : GoUInt16), (65305 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("66720" : GoUInt32), ("66729" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68912" : GoUInt32), ("68921" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69734" : GoUInt32), ("69743" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69872" : GoUInt32), ("69881" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69942" : GoUInt32), ("69951" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70096" : GoUInt32), ("70105" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70384" : GoUInt32), ("70393" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70736" : GoUInt32), ("70745" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70864" : GoUInt32), ("70873" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71248" : GoUInt32), ("71257" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71360" : GoUInt32), ("71369" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71472" : GoUInt32), ("71481" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71904" : GoUInt32), ("71913" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72016" : GoUInt32), ("72025" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72784" : GoUInt32), ("72793" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73040" : GoUInt32), ("73049" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73120" : GoUInt32), ("73129" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92768" : GoUInt32), ("92777" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93008" : GoUInt32), ("93017" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120782" : GoUInt32), ("120831" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123200" : GoUInt32), ("123209" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123632" : GoUInt32), ("123641" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125264" : GoUInt32), ("125273" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("130032" : GoUInt32), ("130041" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (1 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Nl:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((5870 : GoUInt16), (5872 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((8544 : GoUInt16), (8578 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((8581 : GoUInt16), (8584 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((12295 : GoUInt16), (12321 : GoUInt16), (26 : GoUInt16)) : Range16),
	(new Range16((12322 : GoUInt16), (12329 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((12344 : GoUInt16), (12346 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((42726 : GoUInt16), (42735 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("65856" : GoUInt32), ("65908" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66369" : GoUInt32), ("66378" : GoUInt32), ("9" : GoUInt32)) : Range32),
		(new Range32(("66513" : GoUInt32), ("66517" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("74752" : GoUInt32), ("74862" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __No:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((178 : GoUInt16), (179 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((185 : GoUInt16), (188 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((189 : GoUInt16), (190 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2548 : GoUInt16), (2553 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2930 : GoUInt16), (2935 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3056 : GoUInt16), (3058 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3192 : GoUInt16), (3198 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3416 : GoUInt16), (3422 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3440 : GoUInt16), (3448 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3882 : GoUInt16), (3891 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4969 : GoUInt16), (4988 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6128 : GoUInt16), (6137 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6618 : GoUInt16), (8304 : GoUInt16), (1686 : GoUInt16)) : Range16),
		(new Range16((8308 : GoUInt16), (8313 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8320 : GoUInt16), (8329 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8528 : GoUInt16), (8543 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8585 : GoUInt16), (9312 : GoUInt16), (727 : GoUInt16)) : Range16),
		(new Range16((9313 : GoUInt16), (9371 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9450 : GoUInt16), (9471 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10102 : GoUInt16), (10131 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11517 : GoUInt16), (12690 : GoUInt16), (1173 : GoUInt16)) : Range16),
		(new Range16((12691 : GoUInt16), (12693 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12832 : GoUInt16), (12841 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12872 : GoUInt16), (12879 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12881 : GoUInt16), (12895 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12928 : GoUInt16), (12937 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12977 : GoUInt16), (12991 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43056 : GoUInt16), (43061 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("65799" : GoUInt32), ("65843" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65909" : GoUInt32), ("65912" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65930" : GoUInt32), ("65931" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66273" : GoUInt32), ("66299" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66336" : GoUInt32), ("66339" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67672" : GoUInt32), ("67679" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67705" : GoUInt32), ("67711" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67751" : GoUInt32), ("67759" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67835" : GoUInt32), ("67839" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67862" : GoUInt32), ("67867" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68028" : GoUInt32), ("68029" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68032" : GoUInt32), ("68047" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68050" : GoUInt32), ("68095" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68160" : GoUInt32), ("68168" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68221" : GoUInt32), ("68222" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68253" : GoUInt32), ("68255" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68331" : GoUInt32), ("68335" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68440" : GoUInt32), ("68447" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68472" : GoUInt32), ("68479" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68521" : GoUInt32), ("68527" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68858" : GoUInt32), ("68863" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69216" : GoUInt32), ("69246" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69405" : GoUInt32), ("69414" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69457" : GoUInt32), ("69460" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69573" : GoUInt32), ("69579" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69714" : GoUInt32), ("69733" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70113" : GoUInt32), ("70132" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71482" : GoUInt32), ("71483" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71914" : GoUInt32), ("71922" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72794" : GoUInt32), ("72812" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73664" : GoUInt32), ("73684" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93019" : GoUInt32), ("93025" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93824" : GoUInt32), ("93846" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119520" : GoUInt32), ("119539" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119648" : GoUInt32), ("119672" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125127" : GoUInt32), ("125135" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126065" : GoUInt32), ("126123" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126125" : GoUInt32), ("126127" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126129" : GoUInt32), ("126132" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126209" : GoUInt32), ("126253" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126255" : GoUInt32), ("126269" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127232" : GoUInt32), ("127244" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (3 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __P:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((33 : GoUInt16), (35 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((37 : GoUInt16), (42 : GoUInt16), (1 : GoUInt16)) : Range16), (new Range16((44 : GoUInt16), (47 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((58 : GoUInt16), (59 : GoUInt16), (1 : GoUInt16)) : Range16), (new Range16((63 : GoUInt16), (64 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((91 : GoUInt16), (93 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((95 : GoUInt16), (123 : GoUInt16), (28 : GoUInt16)) : Range16),
		(new Range16((125 : GoUInt16), (161 : GoUInt16), (36 : GoUInt16)) : Range16),
		(new Range16((167 : GoUInt16), (171 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((182 : GoUInt16), (183 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((187 : GoUInt16), (191 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((894 : GoUInt16), (903 : GoUInt16), (9 : GoUInt16)) : Range16),
		(new Range16((1370 : GoUInt16), (1375 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1417 : GoUInt16), (1418 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1470 : GoUInt16), (1472 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1475 : GoUInt16), (1478 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((1523 : GoUInt16), (1524 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1545 : GoUInt16), (1546 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1548 : GoUInt16), (1549 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1563 : GoUInt16), (1566 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((1567 : GoUInt16), (1642 : GoUInt16), (75 : GoUInt16)) : Range16),
		(new Range16((1643 : GoUInt16), (1645 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1748 : GoUInt16), (1792 : GoUInt16), (44 : GoUInt16)) : Range16),
		(new Range16((1793 : GoUInt16), (1805 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2039 : GoUInt16), (2041 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2096 : GoUInt16), (2110 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2142 : GoUInt16), (2404 : GoUInt16), (262 : GoUInt16)) : Range16),
		(new Range16((2405 : GoUInt16), (2416 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((2557 : GoUInt16), (2678 : GoUInt16), (121 : GoUInt16)) : Range16),
		(new Range16((2800 : GoUInt16), (3191 : GoUInt16), (391 : GoUInt16)) : Range16),
		(new Range16((3204 : GoUInt16), (3572 : GoUInt16), (368 : GoUInt16)) : Range16),
		(new Range16((3663 : GoUInt16), (3674 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((3675 : GoUInt16), (3844 : GoUInt16), (169 : GoUInt16)) : Range16),
		(new Range16((3845 : GoUInt16), (3858 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3860 : GoUInt16), (3898 : GoUInt16), (38 : GoUInt16)) : Range16),
		(new Range16((3899 : GoUInt16), (3901 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3973 : GoUInt16), (4048 : GoUInt16), (75 : GoUInt16)) : Range16),
		(new Range16((4049 : GoUInt16), (4052 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4057 : GoUInt16), (4058 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4170 : GoUInt16), (4175 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4347 : GoUInt16), (4960 : GoUInt16), (613 : GoUInt16)) : Range16),
		(new Range16((4961 : GoUInt16), (4968 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5120 : GoUInt16), (5742 : GoUInt16), (622 : GoUInt16)) : Range16),
		(new Range16((5787 : GoUInt16), (5788 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5867 : GoUInt16), (5869 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5941 : GoUInt16), (5942 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6100 : GoUInt16), (6102 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6104 : GoUInt16), (6106 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6144 : GoUInt16), (6154 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6468 : GoUInt16), (6469 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6686 : GoUInt16), (6687 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6816 : GoUInt16), (6822 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6824 : GoUInt16), (6829 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7002 : GoUInt16), (7008 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7164 : GoUInt16), (7167 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7227 : GoUInt16), (7231 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7294 : GoUInt16), (7295 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7360 : GoUInt16), (7367 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7379 : GoUInt16), (8208 : GoUInt16), (829 : GoUInt16)) : Range16),
		(new Range16((8209 : GoUInt16), (8231 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8240 : GoUInt16), (8259 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8261 : GoUInt16), (8273 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8275 : GoUInt16), (8286 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8317 : GoUInt16), (8318 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8333 : GoUInt16), (8334 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8968 : GoUInt16), (8971 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9001 : GoUInt16), (9002 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10088 : GoUInt16), (10101 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10181 : GoUInt16), (10182 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10214 : GoUInt16), (10223 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10627 : GoUInt16), (10648 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10712 : GoUInt16), (10715 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10748 : GoUInt16), (10749 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11513 : GoUInt16), (11516 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11518 : GoUInt16), (11519 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11632 : GoUInt16), (11776 : GoUInt16), (144 : GoUInt16)) : Range16),
		(new Range16((11777 : GoUInt16), (11822 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11824 : GoUInt16), (11855 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11858 : GoUInt16), (12289 : GoUInt16), (431 : GoUInt16)) : Range16),
		(new Range16((12290 : GoUInt16), (12291 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12296 : GoUInt16), (12305 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12308 : GoUInt16), (12319 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12336 : GoUInt16), (12349 : GoUInt16), (13 : GoUInt16)) : Range16),
		(new Range16((12448 : GoUInt16), (12539 : GoUInt16), (91 : GoUInt16)) : Range16),
		(new Range16((42238 : GoUInt16), (42239 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42509 : GoUInt16), (42511 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42611 : GoUInt16), (42622 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((42738 : GoUInt16), (42743 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43124 : GoUInt16), (43127 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43214 : GoUInt16), (43215 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43256 : GoUInt16), (43258 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43260 : GoUInt16), (43310 : GoUInt16), (50 : GoUInt16)) : Range16),
		(new Range16((43311 : GoUInt16), (43359 : GoUInt16), (48 : GoUInt16)) : Range16),
		(new Range16((43457 : GoUInt16), (43469 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43486 : GoUInt16), (43487 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43612 : GoUInt16), (43615 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43742 : GoUInt16), (43743 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43760 : GoUInt16), (43761 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((44011 : GoUInt16), (64830 : GoUInt16), (20819 : GoUInt16)) : Range16),
		(new Range16((64831 : GoUInt16), (65040 : GoUInt16), (209 : GoUInt16)) : Range16),
		(new Range16((65041 : GoUInt16), (65049 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65072 : GoUInt16), (65106 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65108 : GoUInt16), (65121 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65123 : GoUInt16), (65128 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((65130 : GoUInt16), (65131 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65281 : GoUInt16), (65283 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65285 : GoUInt16), (65290 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65292 : GoUInt16), (65295 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65306 : GoUInt16), (65307 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65311 : GoUInt16), (65312 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65339 : GoUInt16), (65341 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65343 : GoUInt16), (65371 : GoUInt16), (28 : GoUInt16)) : Range16),
		(new Range16((65373 : GoUInt16), (65375 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((65376 : GoUInt16), (65381 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("65792" : GoUInt32), ("65794" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66463" : GoUInt32), ("66512" : GoUInt32), ("49" : GoUInt32)) : Range32),
		(new Range32(("66927" : GoUInt32), ("67671" : GoUInt32), ("744" : GoUInt32)) : Range32),
		(new Range32(("67871" : GoUInt32), ("67903" : GoUInt32), ("32" : GoUInt32)) : Range32),
		(new Range32(("68176" : GoUInt32), ("68184" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68223" : GoUInt32), ("68336" : GoUInt32), ("113" : GoUInt32)) : Range32),
		(new Range32(("68337" : GoUInt32), ("68342" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68409" : GoUInt32), ("68415" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68505" : GoUInt32), ("68508" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69293" : GoUInt32), ("69461" : GoUInt32), ("168" : GoUInt32)) : Range32),
		(new Range32(("69462" : GoUInt32), ("69465" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69703" : GoUInt32), ("69709" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69819" : GoUInt32), ("69820" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69822" : GoUInt32), ("69825" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69952" : GoUInt32), ("69955" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70004" : GoUInt32), ("70005" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70085" : GoUInt32), ("70088" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70093" : GoUInt32), ("70107" : GoUInt32), ("14" : GoUInt32)) : Range32),
		(new Range32(("70109" : GoUInt32), ("70111" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70200" : GoUInt32), ("70205" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70313" : GoUInt32), ("70731" : GoUInt32), ("418" : GoUInt32)) : Range32),
		(new Range32(("70732" : GoUInt32), ("70735" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70746" : GoUInt32), ("70747" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70749" : GoUInt32), ("70854" : GoUInt32), ("105" : GoUInt32)) : Range32),
		(new Range32(("71105" : GoUInt32), ("71127" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71233" : GoUInt32), ("71235" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71264" : GoUInt32), ("71276" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71484" : GoUInt32), ("71486" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71739" : GoUInt32), ("72004" : GoUInt32), ("265" : GoUInt32)) : Range32),
		(new Range32(("72005" : GoUInt32), ("72006" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72162" : GoUInt32), ("72255" : GoUInt32), ("93" : GoUInt32)) : Range32),
		(new Range32(("72256" : GoUInt32), ("72262" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72346" : GoUInt32), ("72348" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72350" : GoUInt32), ("72354" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72769" : GoUInt32), ("72773" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72816" : GoUInt32), ("72817" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73463" : GoUInt32), ("73464" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73727" : GoUInt32), ("74864" : GoUInt32), ("1137" : GoUInt32)) : Range32),
		(new Range32(("74865" : GoUInt32), ("74868" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92782" : GoUInt32), ("92783" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92917" : GoUInt32), ("92983" : GoUInt32), ("66" : GoUInt32)) : Range32),
		(new Range32(("92984" : GoUInt32), ("92987" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92996" : GoUInt32), ("93847" : GoUInt32), ("851" : GoUInt32)) : Range32),
		(new Range32(("93848" : GoUInt32), ("93850" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94178" : GoUInt32), ("113823" : GoUInt32), ("19645" : GoUInt32)) : Range32),
		(new Range32(("121479" : GoUInt32), ("121483" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125278" : GoUInt32), ("125279" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (11 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Pc:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((95 : GoUInt16), (8255 : GoUInt16), (8160 : GoUInt16)) : Range16),
	(new Range16((8256 : GoUInt16), (8276 : GoUInt16), (20 : GoUInt16)) : Range16),
	(new Range16((65075 : GoUInt16), (65076 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((65101 : GoUInt16), (65103 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((65343 : GoUInt16), (65343 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Pd:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((45 : GoUInt16), (1418 : GoUInt16), (1373 : GoUInt16)) : Range16),
		(new Range16((1470 : GoUInt16), (5120 : GoUInt16), (3650 : GoUInt16)) : Range16),
		(new Range16((6150 : GoUInt16), (8208 : GoUInt16), (2058 : GoUInt16)) : Range16),
		(new Range16((8209 : GoUInt16), (8213 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11799 : GoUInt16), (11802 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((11834 : GoUInt16), (11835 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11840 : GoUInt16), (12316 : GoUInt16), (476 : GoUInt16)) : Range16),
		(new Range16((12336 : GoUInt16), (12448 : GoUInt16), (112 : GoUInt16)) : Range16),
		(new Range16((65073 : GoUInt16), (65074 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65112 : GoUInt16), (65123 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((65293 : GoUInt16), (65293 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("69293" : GoUInt32), ("69293" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Pe:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((41 : GoUInt16), (93 : GoUInt16), (52 : GoUInt16)) : Range16),
		(new Range16((125 : GoUInt16), (3899 : GoUInt16), (3774 : GoUInt16)) : Range16),
		(new Range16((3901 : GoUInt16), (5788 : GoUInt16), (1887 : GoUInt16)) : Range16),
		(new Range16((8262 : GoUInt16), (8318 : GoUInt16), (56 : GoUInt16)) : Range16),
		(new Range16((8334 : GoUInt16), (8969 : GoUInt16), (635 : GoUInt16)) : Range16),
		(new Range16((8971 : GoUInt16), (9002 : GoUInt16), (31 : GoUInt16)) : Range16),
		(new Range16((10089 : GoUInt16), (10101 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((10182 : GoUInt16), (10215 : GoUInt16), (33 : GoUInt16)) : Range16),
		(new Range16((10217 : GoUInt16), (10223 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((10628 : GoUInt16), (10648 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((10713 : GoUInt16), (10715 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((10749 : GoUInt16), (11811 : GoUInt16), (1062 : GoUInt16)) : Range16),
		(new Range16((11813 : GoUInt16), (11817 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((12297 : GoUInt16), (12305 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((12309 : GoUInt16), (12315 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((12318 : GoUInt16), (12319 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64830 : GoUInt16), (65048 : GoUInt16), (218 : GoUInt16)) : Range16),
		(new Range16((65078 : GoUInt16), (65092 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((65096 : GoUInt16), (65114 : GoUInt16), (18 : GoUInt16)) : Range16),
		(new Range16((65116 : GoUInt16), (65118 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((65289 : GoUInt16), (65341 : GoUInt16), (52 : GoUInt16)) : Range16),
		(new Range16((65373 : GoUInt16), (65379 : GoUInt16), (3 : GoUInt16)) : Range16)) : Slice<Range16>),
	latinOffset: (1 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Pf:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((187 : GoUInt16), (8217 : GoUInt16), (8030 : GoUInt16)) : Range16),
	(new Range16((8221 : GoUInt16), (8250 : GoUInt16), (29 : GoUInt16)) : Range16),
	(new Range16((11779 : GoUInt16), (11781 : GoUInt16), (2 : GoUInt16)) : Range16),
	(new Range16((11786 : GoUInt16), (11789 : GoUInt16), (3 : GoUInt16)) : Range16),
	(new Range16((11805 : GoUInt16), (11809 : GoUInt16), (4 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Pi:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((171 : GoUInt16), (8216 : GoUInt16), (8045 : GoUInt16)) : Range16),
	(new Range16((8219 : GoUInt16), (8220 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((8223 : GoUInt16), (8249 : GoUInt16), (26 : GoUInt16)) : Range16),
	(new Range16((11778 : GoUInt16), (11780 : GoUInt16), (2 : GoUInt16)) : Range16),
	(new Range16((11785 : GoUInt16), (11788 : GoUInt16), (3 : GoUInt16)) : Range16),
	(new Range16((11804 : GoUInt16), (11808 : GoUInt16), (4 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Po:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((33 : GoUInt16), (35 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((37 : GoUInt16), (39 : GoUInt16), (1 : GoUInt16)) : Range16), (new Range16((42 : GoUInt16), (46 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((47 : GoUInt16), (58 : GoUInt16), (11 : GoUInt16)) : Range16), (new Range16((59 : GoUInt16), (63 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((64 : GoUInt16), (92 : GoUInt16), (28 : GoUInt16)) : Range16),
		(new Range16((161 : GoUInt16), (167 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((182 : GoUInt16), (183 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((191 : GoUInt16), (894 : GoUInt16), (703 : GoUInt16)) : Range16),
		(new Range16((903 : GoUInt16), (1370 : GoUInt16), (467 : GoUInt16)) : Range16),
		(new Range16((1371 : GoUInt16), (1375 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1417 : GoUInt16), (1472 : GoUInt16), (55 : GoUInt16)) : Range16),
		(new Range16((1475 : GoUInt16), (1478 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((1523 : GoUInt16), (1524 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1545 : GoUInt16), (1546 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1548 : GoUInt16), (1549 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1563 : GoUInt16), (1566 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((1567 : GoUInt16), (1642 : GoUInt16), (75 : GoUInt16)) : Range16),
		(new Range16((1643 : GoUInt16), (1645 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1748 : GoUInt16), (1792 : GoUInt16), (44 : GoUInt16)) : Range16),
		(new Range16((1793 : GoUInt16), (1805 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2039 : GoUInt16), (2041 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2096 : GoUInt16), (2110 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2142 : GoUInt16), (2404 : GoUInt16), (262 : GoUInt16)) : Range16),
		(new Range16((2405 : GoUInt16), (2416 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((2557 : GoUInt16), (2678 : GoUInt16), (121 : GoUInt16)) : Range16),
		(new Range16((2800 : GoUInt16), (3191 : GoUInt16), (391 : GoUInt16)) : Range16),
		(new Range16((3204 : GoUInt16), (3572 : GoUInt16), (368 : GoUInt16)) : Range16),
		(new Range16((3663 : GoUInt16), (3674 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((3675 : GoUInt16), (3844 : GoUInt16), (169 : GoUInt16)) : Range16),
		(new Range16((3845 : GoUInt16), (3858 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3860 : GoUInt16), (3973 : GoUInt16), (113 : GoUInt16)) : Range16),
		(new Range16((4048 : GoUInt16), (4052 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4057 : GoUInt16), (4058 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4170 : GoUInt16), (4175 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4347 : GoUInt16), (4960 : GoUInt16), (613 : GoUInt16)) : Range16),
		(new Range16((4961 : GoUInt16), (4968 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5742 : GoUInt16), (5867 : GoUInt16), (125 : GoUInt16)) : Range16),
		(new Range16((5868 : GoUInt16), (5869 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5941 : GoUInt16), (5942 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6100 : GoUInt16), (6102 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6104 : GoUInt16), (6106 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6144 : GoUInt16), (6149 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6151 : GoUInt16), (6154 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6468 : GoUInt16), (6469 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6686 : GoUInt16), (6687 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6816 : GoUInt16), (6822 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6824 : GoUInt16), (6829 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7002 : GoUInt16), (7008 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7164 : GoUInt16), (7167 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7227 : GoUInt16), (7231 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7294 : GoUInt16), (7295 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7360 : GoUInt16), (7367 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7379 : GoUInt16), (8214 : GoUInt16), (835 : GoUInt16)) : Range16),
		(new Range16((8215 : GoUInt16), (8224 : GoUInt16), (9 : GoUInt16)) : Range16),
		(new Range16((8225 : GoUInt16), (8231 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8240 : GoUInt16), (8248 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8251 : GoUInt16), (8254 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8257 : GoUInt16), (8259 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8263 : GoUInt16), (8273 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8275 : GoUInt16), (8277 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8278 : GoUInt16), (8286 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11513 : GoUInt16), (11516 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11518 : GoUInt16), (11519 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11632 : GoUInt16), (11776 : GoUInt16), (144 : GoUInt16)) : Range16),
		(new Range16((11777 : GoUInt16), (11782 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((11783 : GoUInt16), (11784 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11787 : GoUInt16), (11790 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((11791 : GoUInt16), (11798 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11800 : GoUInt16), (11801 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11803 : GoUInt16), (11806 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((11807 : GoUInt16), (11818 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((11819 : GoUInt16), (11822 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11824 : GoUInt16), (11833 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11836 : GoUInt16), (11839 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11841 : GoUInt16), (11843 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((11844 : GoUInt16), (11855 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11858 : GoUInt16), (12289 : GoUInt16), (431 : GoUInt16)) : Range16),
		(new Range16((12290 : GoUInt16), (12291 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12349 : GoUInt16), (12539 : GoUInt16), (190 : GoUInt16)) : Range16),
		(new Range16((42238 : GoUInt16), (42239 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42509 : GoUInt16), (42511 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42611 : GoUInt16), (42622 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((42738 : GoUInt16), (42743 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43124 : GoUInt16), (43127 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43214 : GoUInt16), (43215 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43256 : GoUInt16), (43258 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43260 : GoUInt16), (43310 : GoUInt16), (50 : GoUInt16)) : Range16),
		(new Range16((43311 : GoUInt16), (43359 : GoUInt16), (48 : GoUInt16)) : Range16),
		(new Range16((43457 : GoUInt16), (43469 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43486 : GoUInt16), (43487 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43612 : GoUInt16), (43615 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43742 : GoUInt16), (43743 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43760 : GoUInt16), (43761 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((44011 : GoUInt16), (65040 : GoUInt16), (21029 : GoUInt16)) : Range16),
		(new Range16((65041 : GoUInt16), (65046 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65049 : GoUInt16), (65072 : GoUInt16), (23 : GoUInt16)) : Range16),
		(new Range16((65093 : GoUInt16), (65094 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65097 : GoUInt16), (65100 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65104 : GoUInt16), (65106 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65108 : GoUInt16), (65111 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65119 : GoUInt16), (65121 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65128 : GoUInt16), (65130 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((65131 : GoUInt16), (65281 : GoUInt16), (150 : GoUInt16)) : Range16),
		(new Range16((65282 : GoUInt16), (65283 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65285 : GoUInt16), (65287 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65290 : GoUInt16), (65294 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((65295 : GoUInt16), (65306 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((65307 : GoUInt16), (65311 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((65312 : GoUInt16), (65340 : GoUInt16), (28 : GoUInt16)) : Range16),
		(new Range16((65377 : GoUInt16), (65380 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((65381 : GoUInt16), (65381 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("65792" : GoUInt32), ("65794" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66463" : GoUInt32), ("66512" : GoUInt32), ("49" : GoUInt32)) : Range32),
		(new Range32(("66927" : GoUInt32), ("67671" : GoUInt32), ("744" : GoUInt32)) : Range32),
		(new Range32(("67871" : GoUInt32), ("67903" : GoUInt32), ("32" : GoUInt32)) : Range32),
		(new Range32(("68176" : GoUInt32), ("68184" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68223" : GoUInt32), ("68336" : GoUInt32), ("113" : GoUInt32)) : Range32),
		(new Range32(("68337" : GoUInt32), ("68342" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68409" : GoUInt32), ("68415" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68505" : GoUInt32), ("68508" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69461" : GoUInt32), ("69465" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69703" : GoUInt32), ("69709" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69819" : GoUInt32), ("69820" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69822" : GoUInt32), ("69825" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69952" : GoUInt32), ("69955" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70004" : GoUInt32), ("70005" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70085" : GoUInt32), ("70088" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70093" : GoUInt32), ("70107" : GoUInt32), ("14" : GoUInt32)) : Range32),
		(new Range32(("70109" : GoUInt32), ("70111" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70200" : GoUInt32), ("70205" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70313" : GoUInt32), ("70731" : GoUInt32), ("418" : GoUInt32)) : Range32),
		(new Range32(("70732" : GoUInt32), ("70735" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70746" : GoUInt32), ("70747" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70749" : GoUInt32), ("70854" : GoUInt32), ("105" : GoUInt32)) : Range32),
		(new Range32(("71105" : GoUInt32), ("71127" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71233" : GoUInt32), ("71235" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71264" : GoUInt32), ("71276" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71484" : GoUInt32), ("71486" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71739" : GoUInt32), ("72004" : GoUInt32), ("265" : GoUInt32)) : Range32),
		(new Range32(("72005" : GoUInt32), ("72006" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72162" : GoUInt32), ("72255" : GoUInt32), ("93" : GoUInt32)) : Range32),
		(new Range32(("72256" : GoUInt32), ("72262" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72346" : GoUInt32), ("72348" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72350" : GoUInt32), ("72354" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72769" : GoUInt32), ("72773" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72816" : GoUInt32), ("72817" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73463" : GoUInt32), ("73464" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73727" : GoUInt32), ("74864" : GoUInt32), ("1137" : GoUInt32)) : Range32),
		(new Range32(("74865" : GoUInt32), ("74868" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92782" : GoUInt32), ("92783" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92917" : GoUInt32), ("92983" : GoUInt32), ("66" : GoUInt32)) : Range32),
		(new Range32(("92984" : GoUInt32), ("92987" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92996" : GoUInt32), ("93847" : GoUInt32), ("851" : GoUInt32)) : Range32),
		(new Range32(("93848" : GoUInt32), ("93850" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94178" : GoUInt32), ("113823" : GoUInt32), ("19645" : GoUInt32)) : Range32),
		(new Range32(("121479" : GoUInt32), ("121483" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125278" : GoUInt32), ("125279" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (8 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Ps:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((40 : GoUInt16), (91 : GoUInt16), (51 : GoUInt16)) : Range16),
		(new Range16((123 : GoUInt16), (3898 : GoUInt16), (3775 : GoUInt16)) : Range16),
		(new Range16((3900 : GoUInt16), (5787 : GoUInt16), (1887 : GoUInt16)) : Range16),
		(new Range16((8218 : GoUInt16), (8222 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((8261 : GoUInt16), (8317 : GoUInt16), (56 : GoUInt16)) : Range16),
		(new Range16((8333 : GoUInt16), (8968 : GoUInt16), (635 : GoUInt16)) : Range16),
		(new Range16((8970 : GoUInt16), (9001 : GoUInt16), (31 : GoUInt16)) : Range16),
		(new Range16((10088 : GoUInt16), (10100 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((10181 : GoUInt16), (10214 : GoUInt16), (33 : GoUInt16)) : Range16),
		(new Range16((10216 : GoUInt16), (10222 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((10627 : GoUInt16), (10647 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((10712 : GoUInt16), (10714 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((10748 : GoUInt16), (11810 : GoUInt16), (1062 : GoUInt16)) : Range16),
		(new Range16((11812 : GoUInt16), (11816 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((11842 : GoUInt16), (12296 : GoUInt16), (454 : GoUInt16)) : Range16),
		(new Range16((12298 : GoUInt16), (12304 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((12308 : GoUInt16), (12314 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((12317 : GoUInt16), (64831 : GoUInt16), (52514 : GoUInt16)) : Range16),
		(new Range16((65047 : GoUInt16), (65077 : GoUInt16), (30 : GoUInt16)) : Range16),
		(new Range16((65079 : GoUInt16), (65091 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((65095 : GoUInt16), (65113 : GoUInt16), (18 : GoUInt16)) : Range16),
		(new Range16((65115 : GoUInt16), (65117 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((65288 : GoUInt16), (65339 : GoUInt16), (51 : GoUInt16)) : Range16),
		(new Range16((65371 : GoUInt16), (65375 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((65378 : GoUInt16), (65378 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	latinOffset: (1 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __S:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((36 : GoUInt16), (43 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((60 : GoUInt16), (62 : GoUInt16), (1 : GoUInt16)) : Range16), (new Range16((94 : GoUInt16), (96 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((124 : GoUInt16), (126 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((162 : GoUInt16), (166 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((168 : GoUInt16), (169 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((172 : GoUInt16), (174 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((175 : GoUInt16), (177 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((180 : GoUInt16), (184 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((215 : GoUInt16), (247 : GoUInt16), (32 : GoUInt16)) : Range16),
		(new Range16((706 : GoUInt16), (709 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((722 : GoUInt16), (735 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((741 : GoUInt16), (747 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((749 : GoUInt16), (751 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((752 : GoUInt16), (767 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((885 : GoUInt16), (900 : GoUInt16), (15 : GoUInt16)) : Range16),
		(new Range16((901 : GoUInt16), (1014 : GoUInt16), (113 : GoUInt16)) : Range16),
		(new Range16((1154 : GoUInt16), (1421 : GoUInt16), (267 : GoUInt16)) : Range16),
		(new Range16((1422 : GoUInt16), (1423 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1542 : GoUInt16), (1544 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1547 : GoUInt16), (1550 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((1551 : GoUInt16), (1758 : GoUInt16), (207 : GoUInt16)) : Range16),
		(new Range16((1769 : GoUInt16), (1789 : GoUInt16), (20 : GoUInt16)) : Range16),
		(new Range16((1790 : GoUInt16), (2038 : GoUInt16), (248 : GoUInt16)) : Range16),
		(new Range16((2046 : GoUInt16), (2047 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2546 : GoUInt16), (2547 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2554 : GoUInt16), (2555 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2801 : GoUInt16), (2928 : GoUInt16), (127 : GoUInt16)) : Range16),
		(new Range16((3059 : GoUInt16), (3066 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3199 : GoUInt16), (3407 : GoUInt16), (208 : GoUInt16)) : Range16),
		(new Range16((3449 : GoUInt16), (3647 : GoUInt16), (198 : GoUInt16)) : Range16),
		(new Range16((3841 : GoUInt16), (3843 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3859 : GoUInt16), (3861 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3862 : GoUInt16), (3863 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3866 : GoUInt16), (3871 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3892 : GoUInt16), (3896 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((4030 : GoUInt16), (4037 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4039 : GoUInt16), (4044 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4046 : GoUInt16), (4047 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4053 : GoUInt16), (4056 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4254 : GoUInt16), (4255 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5008 : GoUInt16), (5017 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5741 : GoUInt16), (6107 : GoUInt16), (366 : GoUInt16)) : Range16),
		(new Range16((6464 : GoUInt16), (6622 : GoUInt16), (158 : GoUInt16)) : Range16),
		(new Range16((6623 : GoUInt16), (6655 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7009 : GoUInt16), (7018 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7028 : GoUInt16), (7036 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8125 : GoUInt16), (8127 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8128 : GoUInt16), (8129 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8141 : GoUInt16), (8143 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8157 : GoUInt16), (8159 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8173 : GoUInt16), (8175 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8189 : GoUInt16), (8190 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8260 : GoUInt16), (8274 : GoUInt16), (14 : GoUInt16)) : Range16),
		(new Range16((8314 : GoUInt16), (8316 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8330 : GoUInt16), (8332 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8352 : GoUInt16), (8383 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8448 : GoUInt16), (8449 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8451 : GoUInt16), (8454 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8456 : GoUInt16), (8457 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8468 : GoUInt16), (8470 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8471 : GoUInt16), (8472 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8478 : GoUInt16), (8483 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8485 : GoUInt16), (8489 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8494 : GoUInt16), (8506 : GoUInt16), (12 : GoUInt16)) : Range16),
		(new Range16((8507 : GoUInt16), (8512 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((8513 : GoUInt16), (8516 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8522 : GoUInt16), (8525 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8527 : GoUInt16), (8586 : GoUInt16), (59 : GoUInt16)) : Range16),
		(new Range16((8587 : GoUInt16), (8592 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((8593 : GoUInt16), (8967 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8972 : GoUInt16), (9000 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9003 : GoUInt16), (9254 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9280 : GoUInt16), (9290 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9372 : GoUInt16), (9449 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9472 : GoUInt16), (10087 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10132 : GoUInt16), (10180 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10183 : GoUInt16), (10213 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10224 : GoUInt16), (10626 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10649 : GoUInt16), (10711 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10716 : GoUInt16), (10747 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10750 : GoUInt16), (11123 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11126 : GoUInt16), (11157 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11159 : GoUInt16), (11263 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11493 : GoUInt16), (11498 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11856 : GoUInt16), (11857 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11904 : GoUInt16), (11929 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11931 : GoUInt16), (12019 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12032 : GoUInt16), (12245 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12272 : GoUInt16), (12283 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12292 : GoUInt16), (12306 : GoUInt16), (14 : GoUInt16)) : Range16),
		(new Range16((12307 : GoUInt16), (12320 : GoUInt16), (13 : GoUInt16)) : Range16),
		(new Range16((12342 : GoUInt16), (12343 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12350 : GoUInt16), (12351 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12443 : GoUInt16), (12444 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12688 : GoUInt16), (12689 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12694 : GoUInt16), (12703 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12736 : GoUInt16), (12771 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12800 : GoUInt16), (12830 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12842 : GoUInt16), (12871 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12880 : GoUInt16), (12896 : GoUInt16), (16 : GoUInt16)) : Range16),
		(new Range16((12897 : GoUInt16), (12927 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12938 : GoUInt16), (12976 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12992 : GoUInt16), (13311 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((19904 : GoUInt16), (19967 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42128 : GoUInt16), (42182 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42752 : GoUInt16), (42774 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42784 : GoUInt16), (42785 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42889 : GoUInt16), (42890 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43048 : GoUInt16), (43051 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43062 : GoUInt16), (43065 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43639 : GoUInt16), (43641 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43867 : GoUInt16), (43882 : GoUInt16), (15 : GoUInt16)) : Range16),
		(new Range16((43883 : GoUInt16), (64297 : GoUInt16), (20414 : GoUInt16)) : Range16),
		(new Range16((64434 : GoUInt16), (64449 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65020 : GoUInt16), (65021 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65122 : GoUInt16), (65124 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((65125 : GoUInt16), (65126 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65129 : GoUInt16), (65284 : GoUInt16), (155 : GoUInt16)) : Range16),
		(new Range16((65291 : GoUInt16), (65308 : GoUInt16), (17 : GoUInt16)) : Range16),
		(new Range16((65309 : GoUInt16), (65310 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65342 : GoUInt16), (65344 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((65372 : GoUInt16), (65374 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((65504 : GoUInt16), (65510 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65512 : GoUInt16), (65518 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65532 : GoUInt16), (65533 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("65847" : GoUInt32), ("65855" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65913" : GoUInt32), ("65929" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65932" : GoUInt32), ("65934" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65936" : GoUInt32), ("65948" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65952" : GoUInt32), ("66000" : GoUInt32), ("48" : GoUInt32)) : Range32),
		(new Range32(("66001" : GoUInt32), ("66044" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67703" : GoUInt32), ("67704" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68296" : GoUInt32), ("71487" : GoUInt32), ("3191" : GoUInt32)) : Range32),
		(new Range32(("73685" : GoUInt32), ("73713" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92988" : GoUInt32), ("92991" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92997" : GoUInt32), ("113820" : GoUInt32), ("20823" : GoUInt32)) : Range32),
		(new Range32(("118784" : GoUInt32), ("119029" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119040" : GoUInt32), ("119078" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119081" : GoUInt32), ("119140" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119146" : GoUInt32), ("119148" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119171" : GoUInt32), ("119172" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119180" : GoUInt32), ("119209" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119214" : GoUInt32), ("119272" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119296" : GoUInt32), ("119361" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119365" : GoUInt32), ("119552" : GoUInt32), ("187" : GoUInt32)) : Range32),
		(new Range32(("119553" : GoUInt32), ("119638" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120513" : GoUInt32), ("120539" : GoUInt32), ("26" : GoUInt32)) : Range32),
		(new Range32(("120571" : GoUInt32), ("120597" : GoUInt32), ("26" : GoUInt32)) : Range32),
		(new Range32(("120629" : GoUInt32), ("120655" : GoUInt32), ("26" : GoUInt32)) : Range32),
		(new Range32(("120687" : GoUInt32), ("120713" : GoUInt32), ("26" : GoUInt32)) : Range32),
		(new Range32(("120745" : GoUInt32), ("120771" : GoUInt32), ("26" : GoUInt32)) : Range32),
		(new Range32(("120832" : GoUInt32), ("121343" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121399" : GoUInt32), ("121402" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121453" : GoUInt32), ("121460" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121462" : GoUInt32), ("121475" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121477" : GoUInt32), ("121478" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123215" : GoUInt32), ("123647" : GoUInt32), ("432" : GoUInt32)) : Range32),
		(new Range32(("126124" : GoUInt32), ("126128" : GoUInt32), ("4" : GoUInt32)) : Range32),
		(new Range32(("126254" : GoUInt32), ("126704" : GoUInt32), ("450" : GoUInt32)) : Range32),
		(new Range32(("126705" : GoUInt32), ("126976" : GoUInt32), ("271" : GoUInt32)) : Range32),
		(new Range32(("126977" : GoUInt32), ("127019" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127024" : GoUInt32), ("127123" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127136" : GoUInt32), ("127150" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127153" : GoUInt32), ("127167" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127169" : GoUInt32), ("127183" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127185" : GoUInt32), ("127221" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127245" : GoUInt32), ("127405" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127462" : GoUInt32), ("127490" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127504" : GoUInt32), ("127547" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127552" : GoUInt32), ("127560" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127568" : GoUInt32), ("127569" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127584" : GoUInt32), ("127589" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127744" : GoUInt32), ("128727" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("128736" : GoUInt32), ("128748" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("128752" : GoUInt32), ("128764" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("128768" : GoUInt32), ("128883" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("128896" : GoUInt32), ("128984" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("128992" : GoUInt32), ("129003" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129024" : GoUInt32), ("129035" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129040" : GoUInt32), ("129095" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129104" : GoUInt32), ("129113" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129120" : GoUInt32), ("129159" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129168" : GoUInt32), ("129197" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129200" : GoUInt32), ("129201" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129280" : GoUInt32), ("129400" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129402" : GoUInt32), ("129483" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129485" : GoUInt32), ("129619" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129632" : GoUInt32), ("129645" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129648" : GoUInt32), ("129652" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129656" : GoUInt32), ("129658" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129664" : GoUInt32), ("129670" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129680" : GoUInt32), ("129704" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129712" : GoUInt32), ("129718" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129728" : GoUInt32), ("129730" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129744" : GoUInt32), ("129750" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129792" : GoUInt32), ("129938" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129940" : GoUInt32), ("129994" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (10 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Sc:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((36 : GoUInt16), (162 : GoUInt16), (126 : GoUInt16)) : Range16),
		(new Range16((163 : GoUInt16), (165 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1423 : GoUInt16), (1547 : GoUInt16), (124 : GoUInt16)) : Range16),
		(new Range16((2046 : GoUInt16), (2047 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2546 : GoUInt16), (2547 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2555 : GoUInt16), (2801 : GoUInt16), (246 : GoUInt16)) : Range16),
		(new Range16((3065 : GoUInt16), (3647 : GoUInt16), (582 : GoUInt16)) : Range16),
		(new Range16((6107 : GoUInt16), (8352 : GoUInt16), (2245 : GoUInt16)) : Range16),
		(new Range16((8353 : GoUInt16), (8383 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43064 : GoUInt16), (65020 : GoUInt16), (21956 : GoUInt16)) : Range16),
		(new Range16((65129 : GoUInt16), (65284 : GoUInt16), (155 : GoUInt16)) : Range16),
		(new Range16((65504 : GoUInt16), (65505 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65509 : GoUInt16), (65510 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("73693" : GoUInt32), ("73696" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123647" : GoUInt32), ("126128" : GoUInt32), ("2481" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (2 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Sk:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((94 : GoUInt16), (96 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((168 : GoUInt16), (175 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((180 : GoUInt16), (184 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((706 : GoUInt16), (709 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((722 : GoUInt16), (735 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((741 : GoUInt16), (747 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((749 : GoUInt16), (751 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((752 : GoUInt16), (767 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((885 : GoUInt16), (900 : GoUInt16), (15 : GoUInt16)) : Range16),
		(new Range16((901 : GoUInt16), (8125 : GoUInt16), (7224 : GoUInt16)) : Range16),
		(new Range16((8127 : GoUInt16), (8129 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8141 : GoUInt16), (8143 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8157 : GoUInt16), (8159 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8173 : GoUInt16), (8175 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8189 : GoUInt16), (8190 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12443 : GoUInt16), (12444 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42752 : GoUInt16), (42774 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42784 : GoUInt16), (42785 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42889 : GoUInt16), (42890 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43867 : GoUInt16), (43882 : GoUInt16), (15 : GoUInt16)) : Range16),
		(new Range16((43883 : GoUInt16), (64434 : GoUInt16), (20551 : GoUInt16)) : Range16),
		(new Range16((64435 : GoUInt16), (64449 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65342 : GoUInt16), (65344 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((65507 : GoUInt16), (65507 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("127995" : GoUInt32), ("127999" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (3 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Sm:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((43 : GoUInt16), (60 : GoUInt16), (17 : GoUInt16)) : Range16),
		(new Range16((61 : GoUInt16), (62 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((124 : GoUInt16), (126 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((172 : GoUInt16), (177 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((215 : GoUInt16), (247 : GoUInt16), (32 : GoUInt16)) : Range16),
		(new Range16((1014 : GoUInt16), (1542 : GoUInt16), (528 : GoUInt16)) : Range16),
		(new Range16((1543 : GoUInt16), (1544 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8260 : GoUInt16), (8274 : GoUInt16), (14 : GoUInt16)) : Range16),
		(new Range16((8314 : GoUInt16), (8316 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8330 : GoUInt16), (8332 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8472 : GoUInt16), (8512 : GoUInt16), (40 : GoUInt16)) : Range16),
		(new Range16((8513 : GoUInt16), (8516 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8523 : GoUInt16), (8592 : GoUInt16), (69 : GoUInt16)) : Range16),
		(new Range16((8593 : GoUInt16), (8596 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8602 : GoUInt16), (8603 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8608 : GoUInt16), (8614 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((8622 : GoUInt16), (8654 : GoUInt16), (32 : GoUInt16)) : Range16),
		(new Range16((8655 : GoUInt16), (8658 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((8660 : GoUInt16), (8692 : GoUInt16), (32 : GoUInt16)) : Range16),
		(new Range16((8693 : GoUInt16), (8959 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8992 : GoUInt16), (8993 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9084 : GoUInt16), (9115 : GoUInt16), (31 : GoUInt16)) : Range16),
		(new Range16((9116 : GoUInt16), (9139 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9180 : GoUInt16), (9185 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9655 : GoUInt16), (9665 : GoUInt16), (10 : GoUInt16)) : Range16),
		(new Range16((9720 : GoUInt16), (9727 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9839 : GoUInt16), (10176 : GoUInt16), (337 : GoUInt16)) : Range16),
		(new Range16((10177 : GoUInt16), (10180 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10183 : GoUInt16), (10213 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10224 : GoUInt16), (10239 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10496 : GoUInt16), (10626 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10649 : GoUInt16), (10711 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10716 : GoUInt16), (10747 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10750 : GoUInt16), (11007 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11056 : GoUInt16), (11076 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11079 : GoUInt16), (11084 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64297 : GoUInt16), (65122 : GoUInt16), (825 : GoUInt16)) : Range16),
		(new Range16((65124 : GoUInt16), (65126 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65291 : GoUInt16), (65308 : GoUInt16), (17 : GoUInt16)) : Range16),
		(new Range16((65309 : GoUInt16), (65310 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65372 : GoUInt16), (65374 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((65506 : GoUInt16), (65513 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((65514 : GoUInt16), (65516 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("120513" : GoUInt32), ("120539" : GoUInt32), ("26" : GoUInt32)) : Range32),
		(new Range32(("120571" : GoUInt32), ("120597" : GoUInt32), ("26" : GoUInt32)) : Range32),
		(new Range32(("120629" : GoUInt32), ("120655" : GoUInt32), ("26" : GoUInt32)) : Range32),
		(new Range32(("120687" : GoUInt32), ("120713" : GoUInt32), ("26" : GoUInt32)) : Range32),
		(new Range32(("120745" : GoUInt32), ("120771" : GoUInt32), ("26" : GoUInt32)) : Range32),
		(new Range32(("126704" : GoUInt32), ("126705" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (5 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __So:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((166 : GoUInt16), (169 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((174 : GoUInt16), (176 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1154 : GoUInt16), (1421 : GoUInt16), (267 : GoUInt16)) : Range16),
		(new Range16((1422 : GoUInt16), (1550 : GoUInt16), (128 : GoUInt16)) : Range16),
		(new Range16((1551 : GoUInt16), (1758 : GoUInt16), (207 : GoUInt16)) : Range16),
		(new Range16((1769 : GoUInt16), (1789 : GoUInt16), (20 : GoUInt16)) : Range16),
		(new Range16((1790 : GoUInt16), (2038 : GoUInt16), (248 : GoUInt16)) : Range16),
		(new Range16((2554 : GoUInt16), (2928 : GoUInt16), (374 : GoUInt16)) : Range16),
		(new Range16((3059 : GoUInt16), (3064 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3066 : GoUInt16), (3199 : GoUInt16), (133 : GoUInt16)) : Range16),
		(new Range16((3407 : GoUInt16), (3449 : GoUInt16), (42 : GoUInt16)) : Range16),
		(new Range16((3841 : GoUInt16), (3843 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3859 : GoUInt16), (3861 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3862 : GoUInt16), (3863 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3866 : GoUInt16), (3871 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3892 : GoUInt16), (3896 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((4030 : GoUInt16), (4037 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4039 : GoUInt16), (4044 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4046 : GoUInt16), (4047 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4053 : GoUInt16), (4056 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4254 : GoUInt16), (4255 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5008 : GoUInt16), (5017 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5741 : GoUInt16), (6464 : GoUInt16), (723 : GoUInt16)) : Range16),
		(new Range16((6622 : GoUInt16), (6655 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7009 : GoUInt16), (7018 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7028 : GoUInt16), (7036 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8448 : GoUInt16), (8449 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8451 : GoUInt16), (8454 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8456 : GoUInt16), (8457 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8468 : GoUInt16), (8470 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8471 : GoUInt16), (8478 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((8479 : GoUInt16), (8483 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8485 : GoUInt16), (8489 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8494 : GoUInt16), (8506 : GoUInt16), (12 : GoUInt16)) : Range16),
		(new Range16((8507 : GoUInt16), (8522 : GoUInt16), (15 : GoUInt16)) : Range16),
		(new Range16((8524 : GoUInt16), (8525 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8527 : GoUInt16), (8586 : GoUInt16), (59 : GoUInt16)) : Range16),
		(new Range16((8587 : GoUInt16), (8597 : GoUInt16), (10 : GoUInt16)) : Range16),
		(new Range16((8598 : GoUInt16), (8601 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8604 : GoUInt16), (8607 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8609 : GoUInt16), (8610 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8612 : GoUInt16), (8613 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8615 : GoUInt16), (8621 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8623 : GoUInt16), (8653 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8656 : GoUInt16), (8657 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8659 : GoUInt16), (8661 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8662 : GoUInt16), (8691 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8960 : GoUInt16), (8967 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8972 : GoUInt16), (8991 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8994 : GoUInt16), (9000 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9003 : GoUInt16), (9083 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9085 : GoUInt16), (9114 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9140 : GoUInt16), (9179 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9186 : GoUInt16), (9254 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9280 : GoUInt16), (9290 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9372 : GoUInt16), (9449 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9472 : GoUInt16), (9654 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9656 : GoUInt16), (9664 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9666 : GoUInt16), (9719 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9728 : GoUInt16), (9838 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9840 : GoUInt16), (10087 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10132 : GoUInt16), (10175 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10240 : GoUInt16), (10495 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11008 : GoUInt16), (11055 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11077 : GoUInt16), (11078 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11085 : GoUInt16), (11123 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11126 : GoUInt16), (11157 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11159 : GoUInt16), (11263 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11493 : GoUInt16), (11498 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11856 : GoUInt16), (11857 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11904 : GoUInt16), (11929 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11931 : GoUInt16), (12019 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12032 : GoUInt16), (12245 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12272 : GoUInt16), (12283 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12292 : GoUInt16), (12306 : GoUInt16), (14 : GoUInt16)) : Range16),
		(new Range16((12307 : GoUInt16), (12320 : GoUInt16), (13 : GoUInt16)) : Range16),
		(new Range16((12342 : GoUInt16), (12343 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12350 : GoUInt16), (12351 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12688 : GoUInt16), (12689 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12694 : GoUInt16), (12703 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12736 : GoUInt16), (12771 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12800 : GoUInt16), (12830 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12842 : GoUInt16), (12871 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12880 : GoUInt16), (12896 : GoUInt16), (16 : GoUInt16)) : Range16),
		(new Range16((12897 : GoUInt16), (12927 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12938 : GoUInt16), (12976 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12992 : GoUInt16), (13311 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((19904 : GoUInt16), (19967 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42128 : GoUInt16), (42182 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43048 : GoUInt16), (43051 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43062 : GoUInt16), (43063 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43065 : GoUInt16), (43639 : GoUInt16), (574 : GoUInt16)) : Range16),
		(new Range16((43640 : GoUInt16), (43641 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65021 : GoUInt16), (65508 : GoUInt16), (487 : GoUInt16)) : Range16),
		(new Range16((65512 : GoUInt16), (65517 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((65518 : GoUInt16), (65532 : GoUInt16), (14 : GoUInt16)) : Range16),
		(new Range16((65533 : GoUInt16), (65533 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("65847" : GoUInt32), ("65855" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65913" : GoUInt32), ("65929" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65932" : GoUInt32), ("65934" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65936" : GoUInt32), ("65948" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65952" : GoUInt32), ("66000" : GoUInt32), ("48" : GoUInt32)) : Range32),
		(new Range32(("66001" : GoUInt32), ("66044" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67703" : GoUInt32), ("67704" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68296" : GoUInt32), ("71487" : GoUInt32), ("3191" : GoUInt32)) : Range32),
		(new Range32(("73685" : GoUInt32), ("73692" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73697" : GoUInt32), ("73713" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92988" : GoUInt32), ("92991" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92997" : GoUInt32), ("113820" : GoUInt32), ("20823" : GoUInt32)) : Range32),
		(new Range32(("118784" : GoUInt32), ("119029" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119040" : GoUInt32), ("119078" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119081" : GoUInt32), ("119140" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119146" : GoUInt32), ("119148" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119171" : GoUInt32), ("119172" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119180" : GoUInt32), ("119209" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119214" : GoUInt32), ("119272" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119296" : GoUInt32), ("119361" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119365" : GoUInt32), ("119552" : GoUInt32), ("187" : GoUInt32)) : Range32),
		(new Range32(("119553" : GoUInt32), ("119638" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120832" : GoUInt32), ("121343" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121399" : GoUInt32), ("121402" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121453" : GoUInt32), ("121460" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121462" : GoUInt32), ("121475" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121477" : GoUInt32), ("121478" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123215" : GoUInt32), ("126124" : GoUInt32), ("2909" : GoUInt32)) : Range32),
		(new Range32(("126254" : GoUInt32), ("126976" : GoUInt32), ("722" : GoUInt32)) : Range32),
		(new Range32(("126977" : GoUInt32), ("127019" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127024" : GoUInt32), ("127123" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127136" : GoUInt32), ("127150" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127153" : GoUInt32), ("127167" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127169" : GoUInt32), ("127183" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127185" : GoUInt32), ("127221" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127245" : GoUInt32), ("127405" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127462" : GoUInt32), ("127490" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127504" : GoUInt32), ("127547" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127552" : GoUInt32), ("127560" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127568" : GoUInt32), ("127569" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127584" : GoUInt32), ("127589" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127744" : GoUInt32), ("127994" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("128000" : GoUInt32), ("128727" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("128736" : GoUInt32), ("128748" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("128752" : GoUInt32), ("128764" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("128768" : GoUInt32), ("128883" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("128896" : GoUInt32), ("128984" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("128992" : GoUInt32), ("129003" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129024" : GoUInt32), ("129035" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129040" : GoUInt32), ("129095" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129104" : GoUInt32), ("129113" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129120" : GoUInt32), ("129159" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129168" : GoUInt32), ("129197" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129200" : GoUInt32), ("129201" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129280" : GoUInt32), ("129400" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129402" : GoUInt32), ("129483" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129485" : GoUInt32), ("129619" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129632" : GoUInt32), ("129645" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129648" : GoUInt32), ("129652" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129656" : GoUInt32), ("129658" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129664" : GoUInt32), ("129670" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129680" : GoUInt32), ("129704" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129712" : GoUInt32), ("129718" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129728" : GoUInt32), ("129730" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129744" : GoUInt32), ("129750" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129792" : GoUInt32), ("129938" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129940" : GoUInt32), ("129994" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (2 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Z:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((32 : GoUInt16), (160 : GoUInt16), (128 : GoUInt16)) : Range16),
	(new Range16((5760 : GoUInt16), (8192 : GoUInt16), (2432 : GoUInt16)) : Range16),
	(new Range16((8193 : GoUInt16), (8202 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((8232 : GoUInt16), (8233 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((8239 : GoUInt16), (8287 : GoUInt16), (48 : GoUInt16)) : Range16),
	(new Range16((12288 : GoUInt16), (12288 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), latinOffset: (1 : GoInt)} : RangeTable) : Ref<RangeTable>);

private var __Zl:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((8232 : GoUInt16), (8232 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Zp:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((8233 : GoUInt16), (8233 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Zs:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((32 : GoUInt16), (160 : GoUInt16), (128 : GoUInt16)) : Range16),
	(new Range16((5760 : GoUInt16), (8192 : GoUInt16), (2432 : GoUInt16)) : Range16),
	(new Range16((8193 : GoUInt16), (8202 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((8239 : GoUInt16), (8287 : GoUInt16), (48 : GoUInt16)) : Range16),
	(new Range16((12288 : GoUInt16), (12288 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), latinOffset: (1 : GoInt)} : RangeTable) : Ref<RangeTable>);

/**
	// Cc is the set of Unicode characters in category Cc (Other, control).// These variables have type *RangeTable.
**/
var cc:Ref<RangeTable> = __Cc;

/**
	// Cf is the set of Unicode characters in category Cf (Other, format).// These variables have type *RangeTable.
**/
var cf:Ref<RangeTable> = __Cf;

/**
	// Co is the set of Unicode characters in category Co (Other, private use).// These variables have type *RangeTable.
**/
var co:Ref<RangeTable> = __Co;

/**
	// Cs is the set of Unicode characters in category Cs (Other, surrogate).// These variables have type *RangeTable.
**/
var cs:Ref<RangeTable> = __Cs;

/**
	// Digit is the set of Unicode characters with the "decimal digit" property.// These variables have type *RangeTable.
**/
var digit:Ref<RangeTable> = __Nd;

/**
	// Nd is the set of Unicode characters in category Nd (Number, decimal digit).// These variables have type *RangeTable.
**/
var nd:Ref<RangeTable> = __Nd;

/**
	// Letter/L is the set of Unicode letters, category L.// These variables have type *RangeTable.
**/
var letter:Ref<RangeTable> = __L;

/**
	// These variables have type *RangeTable.
**/
var l:Ref<RangeTable> = __L;

/**
	// Lm is the set of Unicode characters in category Lm (Letter, modifier).// These variables have type *RangeTable.
**/
var lm:Ref<RangeTable> = __Lm;

/**
	// Lo is the set of Unicode characters in category Lo (Letter, other).// These variables have type *RangeTable.
**/
var lo:Ref<RangeTable> = __Lo;

/**
	// Lower is the set of Unicode lower case letters.// These variables have type *RangeTable.
**/
var lower:Ref<RangeTable> = __Ll;

/**
	// Ll is the set of Unicode characters in category Ll (Letter, lowercase).// These variables have type *RangeTable.
**/
var ll:Ref<RangeTable> = __Ll;

/**
	// Mark/M is the set of Unicode mark characters, category M.// These variables have type *RangeTable.
**/
var mark:Ref<RangeTable> = __M;

/**
	// These variables have type *RangeTable.
**/
var m:Ref<RangeTable> = __M;

/**
	// Mc is the set of Unicode characters in category Mc (Mark, spacing combining).// These variables have type *RangeTable.
**/
var mc:Ref<RangeTable> = __Mc;

/**
	// Me is the set of Unicode characters in category Me (Mark, enclosing).// These variables have type *RangeTable.
**/
var me:Ref<RangeTable> = __Me;

/**
	// Mn is the set of Unicode characters in category Mn (Mark, nonspacing).// These variables have type *RangeTable.
**/
var mn:Ref<RangeTable> = __Mn;

/**
	// Nl is the set of Unicode characters in category Nl (Number, letter).// These variables have type *RangeTable.
**/
var nl:Ref<RangeTable> = __Nl;

/**
	// No is the set of Unicode characters in category No (Number, other).// These variables have type *RangeTable.
**/
var no:Ref<RangeTable> = __No;

/**
	// Number/N is the set of Unicode number characters, category N.// These variables have type *RangeTable.
**/
var number:Ref<RangeTable> = __N;

/**
	// These variables have type *RangeTable.
**/
var n:Ref<RangeTable> = __N;

/**
	// Other/C is the set of Unicode control and special characters, category C.// These variables have type *RangeTable.
**/
var other:Ref<RangeTable> = __C;

/**
	// These variables have type *RangeTable.
**/
var c:Ref<RangeTable> = __C;

/**
	// Pc is the set of Unicode characters in category Pc (Punctuation, connector).// These variables have type *RangeTable.
**/
var pc:Ref<RangeTable> = __Pc;

/**
	// Pd is the set of Unicode characters in category Pd (Punctuation, dash).// These variables have type *RangeTable.
**/
var pd:Ref<RangeTable> = __Pd;

/**
	// Pe is the set of Unicode characters in category Pe (Punctuation, close).// These variables have type *RangeTable.
**/
var pe:Ref<RangeTable> = __Pe;

/**
	// Pf is the set of Unicode characters in category Pf (Punctuation, final quote).// These variables have type *RangeTable.
**/
var pf:Ref<RangeTable> = __Pf;

/**
	// Pi is the set of Unicode characters in category Pi (Punctuation, initial quote).// These variables have type *RangeTable.
**/
var pi:Ref<RangeTable> = __Pi;

/**
	// Po is the set of Unicode characters in category Po (Punctuation, other).// These variables have type *RangeTable.
**/
var po:Ref<RangeTable> = __Po;

/**
	// Ps is the set of Unicode characters in category Ps (Punctuation, open).// These variables have type *RangeTable.
**/
var ps:Ref<RangeTable> = __Ps;

/**
	// Punct/P is the set of Unicode punctuation characters, category P.// These variables have type *RangeTable.
**/
var punct:Ref<RangeTable> = __P;

/**
	// These variables have type *RangeTable.
**/
var p:Ref<RangeTable> = __P;

/**
	// Sc is the set of Unicode characters in category Sc (Symbol, currency).// These variables have type *RangeTable.
**/
var sc:Ref<RangeTable> = __Sc;

/**
	// Sk is the set of Unicode characters in category Sk (Symbol, modifier).// These variables have type *RangeTable.
**/
var sk:Ref<RangeTable> = __Sk;

/**
	// Sm is the set of Unicode characters in category Sm (Symbol, math).// These variables have type *RangeTable.
**/
var sm:Ref<RangeTable> = __Sm;

/**
	// So is the set of Unicode characters in category So (Symbol, other).// These variables have type *RangeTable.
**/
var so:Ref<RangeTable> = __So;

/**
	// Space/Z is the set of Unicode space characters, category Z.// These variables have type *RangeTable.
**/
var space:Ref<RangeTable> = __Z;

/**
	// These variables have type *RangeTable.
**/
var z:Ref<RangeTable> = __Z;

/**
	// Symbol/S is the set of Unicode symbol characters, category S.// These variables have type *RangeTable.
**/
var symbol:Ref<RangeTable> = __S;

/**
	// These variables have type *RangeTable.
**/
var s:Ref<RangeTable> = __S;

/**
	// PrintRanges defines the set of printable characters according to Go.
	// ASCII space, U+0020, is handled separately.
**/
var printRanges:Slice<Ref<RangeTable>> = (new Slice<Ref<RangeTable>>(0, 0, l, m, n, p, s) : Slice<Ref<RangeTable>>);

/**
	// Title is the set of Unicode title case letters.// These variables have type *RangeTable.
**/
var title:Ref<RangeTable> = __Lt;

/**
	// Lt is the set of Unicode characters in category Lt (Letter, titlecase).// These variables have type *RangeTable.
**/
var lt:Ref<RangeTable> = __Lt;

/**
	// Upper is the set of Unicode upper case letters.// These variables have type *RangeTable.
**/
var upper:Ref<RangeTable> = __Lu;

/**
	// Lu is the set of Unicode characters in category Lu (Letter, uppercase).// These variables have type *RangeTable.
**/
var lu:Ref<RangeTable> = __Lu;

/**
	// Zl is the set of Unicode characters in category Zl (Separator, line).// These variables have type *RangeTable.
**/
var zl:Ref<RangeTable> = __Zl;

/**
	// Zp is the set of Unicode characters in category Zp (Separator, paragraph).// These variables have type *RangeTable.
**/
var zp:Ref<RangeTable> = __Zp;

/**
	// Zs is the set of Unicode characters in category Zs (Separator, space).// These variables have type *RangeTable.
**/
var zs:Ref<RangeTable> = __Zs;

/**
	// GraphicRanges defines the set of graphic characters according to Unicode.
**/
var graphicRanges:Slice<Ref<RangeTable>> = (new Slice<Ref<RangeTable>>(0, 0, l, m, n, p, s, zs) : Slice<Ref<RangeTable>>);

/**
	// Categories is the set of Unicode category tables.
**/
var categories:GoMap<GoString, Ref<RangeTable>> = {
	final x = new stdgo.GoMap.GoObjectMap<GoString, Ref<RangeTable>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType({get: () ->
		stdgo.reflect.Reflect.GoType.basic(string_kind)},
		{get: () -> stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("RangeTable", [], stdgo.reflect.Reflect.GoType.structType([
			{
				name: "r16",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.sliceType({get: () -> stdgo.reflect.Reflect.GoType.named("Range16", [],
					stdgo.reflect.Reflect.GoType.structType([
						{
							name: "lo",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
						},
						{
							name: "hi",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
						},
						{
							name: "stride",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
						}
					]))})
			},
			{
				name: "r32",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.sliceType({get: () -> stdgo.reflect.Reflect.GoType.named("Range32", [],
					stdgo.reflect.Reflect.GoType.structType([
						{
							name: "lo",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
						},
						{
							name: "hi",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
						},
						{
							name: "stride",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
						}
					]))})
			},
			{
				name: "latinOffset",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(int_kind)
			}
		])))})));
	@:privateAccess x._keys = [
		Go.str("C"), Go.str("Cc"), Go.str("Cf"), Go.str("Co"), Go.str("Cs"), Go.str("L"), Go.str("Ll"), Go.str("Lm"), Go.str("Lo"), Go.str("Lt"),
		Go.str("Lu"), Go.str("M"), Go.str("Mc"), Go.str("Me"), Go.str("Mn"), Go.str("N"), Go.str("Nd"), Go.str("Nl"), Go.str("No"), Go.str("P"), Go.str("Pc"),
		Go.str("Pd"), Go.str("Pe"), Go.str("Pf"), Go.str("Pi"), Go.str("Po"), Go.str("Ps"), Go.str("S"), Go.str("Sc"), Go.str("Sk"), Go.str("Sm"),
		Go.str("So"), Go.str("Z"), Go.str("Zl"), Go.str("Zp"), Go.str("Zs")];
	@:privateAccess x._values = [
		c, cc, cf, co, cs, l, ll, lm, lo, lt, lu, m, mc, me, mn, n, nd, nl, no, p, pc, pd, pe, pf, pi, po, ps, s, sc, sk, sm, so, z, zl, zp, zs
	];
	x;
};

private var __Adlam:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("125184" : GoUInt32), ("125259" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125264" : GoUInt32), ("125273" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125278" : GoUInt32), ("125279" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Ahom:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("71424" : GoUInt32), ("71450" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71453" : GoUInt32), ("71467" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71472" : GoUInt32), ("71487" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Anatolian_Hieroglyphs:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("82944" : GoUInt32), ("83526" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Arabic:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((1536 : GoUInt16), (1540 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1542 : GoUInt16), (1547 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1549 : GoUInt16), (1562 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1564 : GoUInt16), (1568 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1569 : GoUInt16), (1599 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1601 : GoUInt16), (1610 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1622 : GoUInt16), (1647 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1649 : GoUInt16), (1756 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1758 : GoUInt16), (1791 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1872 : GoUInt16), (1919 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2208 : GoUInt16), (2228 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2230 : GoUInt16), (2247 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2259 : GoUInt16), (2273 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2275 : GoUInt16), (2303 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64336 : GoUInt16), (64449 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64467 : GoUInt16), (64829 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64848 : GoUInt16), (64911 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64914 : GoUInt16), (64967 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65008 : GoUInt16), (65021 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65136 : GoUInt16), (65140 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65142 : GoUInt16), (65276 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("69216" : GoUInt32), ("69246" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126464" : GoUInt32), ("126467" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126469" : GoUInt32), ("126495" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126497" : GoUInt32), ("126498" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126500" : GoUInt32), ("126503" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("126505" : GoUInt32), ("126514" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126516" : GoUInt32), ("126519" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126521" : GoUInt32), ("126523" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126530" : GoUInt32), ("126535" : GoUInt32), ("5" : GoUInt32)) : Range32),
		(new Range32(("126537" : GoUInt32), ("126541" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126542" : GoUInt32), ("126543" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126545" : GoUInt32), ("126546" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126548" : GoUInt32), ("126551" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("126553" : GoUInt32), ("126561" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126562" : GoUInt32), ("126564" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126567" : GoUInt32), ("126570" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126572" : GoUInt32), ("126578" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126580" : GoUInt32), ("126583" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126585" : GoUInt32), ("126588" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126590" : GoUInt32), ("126592" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126593" : GoUInt32), ("126601" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126603" : GoUInt32), ("126619" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126625" : GoUInt32), ("126627" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126629" : GoUInt32), ("126633" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126635" : GoUInt32), ("126651" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126704" : GoUInt32), ("126705" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Armenian:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((1329 : GoUInt16), (1366 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((1369 : GoUInt16), (1418 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((1421 : GoUInt16), (1423 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((64275 : GoUInt16), (64279 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Avestan:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("68352" : GoUInt32), ("68405" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68409" : GoUInt32), ("68415" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Balinese:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((6912 : GoUInt16), (6987 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6992 : GoUInt16), (7036 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Bamum:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((42656 : GoUInt16), (42743 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("92160" : GoUInt32), ("92728" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Bassa_Vah:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("92880" : GoUInt32), ("92909" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92912" : GoUInt32), ("92917" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Batak:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((7104 : GoUInt16), (7155 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((7164 : GoUInt16), (7167 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Bengali:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((2432 : GoUInt16), (2435 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2437 : GoUInt16), (2444 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2447 : GoUInt16), (2448 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2451 : GoUInt16), (2472 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2474 : GoUInt16), (2480 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2482 : GoUInt16), (2486 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((2487 : GoUInt16), (2489 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2492 : GoUInt16), (2500 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2503 : GoUInt16), (2504 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2507 : GoUInt16), (2510 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2519 : GoUInt16), (2524 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((2525 : GoUInt16), (2527 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((2528 : GoUInt16), (2531 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2534 : GoUInt16), (2558 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)
} : RangeTable) : Ref<RangeTable>);

private var __Bhaiksuki:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("72704" : GoUInt32), ("72712" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72714" : GoUInt32), ("72758" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72760" : GoUInt32), ("72773" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72784" : GoUInt32), ("72812" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Bopomofo:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((746 : GoUInt16), (747 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((12549 : GoUInt16), (12591 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((12704 : GoUInt16), (12735 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Brahmi:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("69632" : GoUInt32), ("69709" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69714" : GoUInt32), ("69743" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69759" : GoUInt32), ("69759" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Braille:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((10240 : GoUInt16), (10495 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Buginese:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((6656 : GoUInt16), (6683 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6686 : GoUInt16), (6687 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Buhid:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((5952 : GoUInt16), (5971 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Canadian_Aboriginal:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((5120 : GoUInt16), (5759 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6320 : GoUInt16), (6389 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Carian:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("66208" : GoUInt32), ("66256" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Caucasian_Albanian:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("66864" : GoUInt32), ("66915" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66927" : GoUInt32), ("66927" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Chakma:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("69888" : GoUInt32), ("69940" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69942" : GoUInt32), ("69959" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Cham:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((43520 : GoUInt16), (43574 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((43584 : GoUInt16), (43597 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((43600 : GoUInt16), (43609 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((43612 : GoUInt16), (43615 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Cherokee:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((5024 : GoUInt16), (5109 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((5112 : GoUInt16), (5117 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((43888 : GoUInt16), (43967 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Chorasmian:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("69552" : GoUInt32), ("69579" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Common:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((0 : GoUInt16), (64 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((91 : GoUInt16), (96 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((123 : GoUInt16), (169 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((171 : GoUInt16), (185 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((187 : GoUInt16), (191 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((215 : GoUInt16), (247 : GoUInt16), (32 : GoUInt16)) : Range16),
		(new Range16((697 : GoUInt16), (735 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((741 : GoUInt16), (745 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((748 : GoUInt16), (767 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((884 : GoUInt16), (894 : GoUInt16), (10 : GoUInt16)) : Range16),
		(new Range16((901 : GoUInt16), (903 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1541 : GoUInt16), (1548 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((1563 : GoUInt16), (1567 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((1600 : GoUInt16), (1757 : GoUInt16), (157 : GoUInt16)) : Range16),
		(new Range16((2274 : GoUInt16), (2404 : GoUInt16), (130 : GoUInt16)) : Range16),
		(new Range16((2405 : GoUInt16), (3647 : GoUInt16), (1242 : GoUInt16)) : Range16),
		(new Range16((4053 : GoUInt16), (4056 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4347 : GoUInt16), (5867 : GoUInt16), (1520 : GoUInt16)) : Range16),
		(new Range16((5868 : GoUInt16), (5869 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5941 : GoUInt16), (5942 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6146 : GoUInt16), (6147 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6149 : GoUInt16), (7379 : GoUInt16), (1230 : GoUInt16)) : Range16),
		(new Range16((7393 : GoUInt16), (7401 : GoUInt16), (8 : GoUInt16)) : Range16),
		(new Range16((7402 : GoUInt16), (7404 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7406 : GoUInt16), (7411 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7413 : GoUInt16), (7415 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7418 : GoUInt16), (8192 : GoUInt16), (774 : GoUInt16)) : Range16),
		(new Range16((8193 : GoUInt16), (8203 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8206 : GoUInt16), (8292 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8294 : GoUInt16), (8304 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8308 : GoUInt16), (8318 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8320 : GoUInt16), (8334 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8352 : GoUInt16), (8383 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8448 : GoUInt16), (8485 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8487 : GoUInt16), (8489 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8492 : GoUInt16), (8497 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8499 : GoUInt16), (8525 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8527 : GoUInt16), (8543 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8585 : GoUInt16), (8587 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8592 : GoUInt16), (9254 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9280 : GoUInt16), (9290 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9312 : GoUInt16), (10239 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10496 : GoUInt16), (11123 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11126 : GoUInt16), (11157 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11159 : GoUInt16), (11263 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11776 : GoUInt16), (11858 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12272 : GoUInt16), (12283 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12288 : GoUInt16), (12292 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12294 : GoUInt16), (12296 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((12297 : GoUInt16), (12320 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12336 : GoUInt16), (12343 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12348 : GoUInt16), (12351 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12443 : GoUInt16), (12444 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12448 : GoUInt16), (12539 : GoUInt16), (91 : GoUInt16)) : Range16),
		(new Range16((12540 : GoUInt16), (12688 : GoUInt16), (148 : GoUInt16)) : Range16),
		(new Range16((12689 : GoUInt16), (12703 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12736 : GoUInt16), (12771 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12832 : GoUInt16), (12895 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12927 : GoUInt16), (13007 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((13055 : GoUInt16), (13144 : GoUInt16), (89 : GoUInt16)) : Range16),
		(new Range16((13145 : GoUInt16), (13311 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((19904 : GoUInt16), (19967 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42752 : GoUInt16), (42785 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42888 : GoUInt16), (42890 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43056 : GoUInt16), (43065 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43310 : GoUInt16), (43471 : GoUInt16), (161 : GoUInt16)) : Range16),
		(new Range16((43867 : GoUInt16), (43882 : GoUInt16), (15 : GoUInt16)) : Range16),
		(new Range16((43883 : GoUInt16), (64830 : GoUInt16), (20947 : GoUInt16)) : Range16),
		(new Range16((64831 : GoUInt16), (65040 : GoUInt16), (209 : GoUInt16)) : Range16),
		(new Range16((65041 : GoUInt16), (65049 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65072 : GoUInt16), (65106 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65108 : GoUInt16), (65126 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65128 : GoUInt16), (65131 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65279 : GoUInt16), (65281 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((65282 : GoUInt16), (65312 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65339 : GoUInt16), (65344 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65371 : GoUInt16), (65381 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65392 : GoUInt16), (65438 : GoUInt16), (46 : GoUInt16)) : Range16),
		(new Range16((65439 : GoUInt16), (65504 : GoUInt16), (65 : GoUInt16)) : Range16),
		(new Range16((65505 : GoUInt16), (65510 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65512 : GoUInt16), (65518 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65529 : GoUInt16), (65533 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("65792" : GoUInt32), ("65794" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65799" : GoUInt32), ("65843" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65847" : GoUInt32), ("65855" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65936" : GoUInt32), ("65948" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66000" : GoUInt32), ("66044" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66273" : GoUInt32), ("66299" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94178" : GoUInt32), ("94179" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("113824" : GoUInt32), ("113827" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("118784" : GoUInt32), ("119029" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119040" : GoUInt32), ("119078" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119081" : GoUInt32), ("119142" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119146" : GoUInt32), ("119162" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119171" : GoUInt32), ("119172" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119180" : GoUInt32), ("119209" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119214" : GoUInt32), ("119272" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119520" : GoUInt32), ("119539" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119552" : GoUInt32), ("119638" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119648" : GoUInt32), ("119672" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119808" : GoUInt32), ("119892" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119894" : GoUInt32), ("119964" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119966" : GoUInt32), ("119967" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119970" : GoUInt32), ("119973" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("119974" : GoUInt32), ("119977" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("119978" : GoUInt32), ("119980" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119982" : GoUInt32), ("119993" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119995" : GoUInt32), ("119997" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("119998" : GoUInt32), ("120003" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120005" : GoUInt32), ("120069" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120071" : GoUInt32), ("120074" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120077" : GoUInt32), ("120084" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120086" : GoUInt32), ("120092" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120094" : GoUInt32), ("120121" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120123" : GoUInt32), ("120126" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120128" : GoUInt32), ("120132" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120134" : GoUInt32), ("120138" : GoUInt32), ("4" : GoUInt32)) : Range32),
		(new Range32(("120139" : GoUInt32), ("120144" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120146" : GoUInt32), ("120485" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120488" : GoUInt32), ("120779" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120782" : GoUInt32), ("120831" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126065" : GoUInt32), ("126132" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126209" : GoUInt32), ("126269" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126976" : GoUInt32), ("127019" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127024" : GoUInt32), ("127123" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127136" : GoUInt32), ("127150" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127153" : GoUInt32), ("127167" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127169" : GoUInt32), ("127183" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127185" : GoUInt32), ("127221" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127232" : GoUInt32), ("127405" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127462" : GoUInt32), ("127487" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127489" : GoUInt32), ("127490" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127504" : GoUInt32), ("127547" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127552" : GoUInt32), ("127560" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127568" : GoUInt32), ("127569" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127584" : GoUInt32), ("127589" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127744" : GoUInt32), ("128727" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("128736" : GoUInt32), ("128748" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("128752" : GoUInt32), ("128764" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("128768" : GoUInt32), ("128883" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("128896" : GoUInt32), ("128984" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("128992" : GoUInt32), ("129003" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129024" : GoUInt32), ("129035" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129040" : GoUInt32), ("129095" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129104" : GoUInt32), ("129113" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129120" : GoUInt32), ("129159" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129168" : GoUInt32), ("129197" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129200" : GoUInt32), ("129201" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129280" : GoUInt32), ("129400" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129402" : GoUInt32), ("129483" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129485" : GoUInt32), ("129619" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129632" : GoUInt32), ("129645" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129648" : GoUInt32), ("129652" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129656" : GoUInt32), ("129658" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129664" : GoUInt32), ("129670" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129680" : GoUInt32), ("129704" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129712" : GoUInt32), ("129718" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129728" : GoUInt32), ("129730" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129744" : GoUInt32), ("129750" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129792" : GoUInt32), ("129938" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("129940" : GoUInt32), ("129994" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("130032" : GoUInt32), ("130041" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("917505" : GoUInt32), ("917536" : GoUInt32), ("31" : GoUInt32)) : Range32),
		(new Range32(("917537" : GoUInt32), ("917631" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (6 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Coptic:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((994 : GoUInt16), (1007 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((11392 : GoUInt16), (11507 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((11513 : GoUInt16), (11519 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Cuneiform:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("73728" : GoUInt32), ("74649" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("74752" : GoUInt32), ("74862" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("74864" : GoUInt32), ("74868" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("74880" : GoUInt32), ("75075" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Cypriot:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("67584" : GoUInt32), ("67589" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67592" : GoUInt32), ("67594" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("67595" : GoUInt32), ("67637" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67639" : GoUInt32), ("67640" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67644" : GoUInt32), ("67647" : GoUInt32), ("3" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Cyrillic:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((1024 : GoUInt16), (1156 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((1159 : GoUInt16), (1327 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((7296 : GoUInt16), (7304 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((7467 : GoUInt16), (7544 : GoUInt16), (77 : GoUInt16)) : Range16),
	(new Range16((11744 : GoUInt16), (11775 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((42560 : GoUInt16), (42655 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((65070 : GoUInt16), (65071 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Deseret:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("66560" : GoUInt32), ("66639" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Devanagari:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((2304 : GoUInt16), (2384 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((2389 : GoUInt16), (2403 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((2406 : GoUInt16), (2431 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((43232 : GoUInt16), (43263 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Dives_Akuru:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("71936" : GoUInt32), ("71942" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71945" : GoUInt32), ("71948" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("71949" : GoUInt32), ("71955" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71957" : GoUInt32), ("71958" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71960" : GoUInt32), ("71989" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71991" : GoUInt32), ("71992" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71995" : GoUInt32), ("72006" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72016" : GoUInt32), ("72025" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Dogra:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("71680" : GoUInt32), ("71739" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Duployan:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("113664" : GoUInt32), ("113770" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("113776" : GoUInt32), ("113788" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("113792" : GoUInt32), ("113800" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("113808" : GoUInt32), ("113817" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("113820" : GoUInt32), ("113823" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Egyptian_Hieroglyphs:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("77824" : GoUInt32), ("78894" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("78896" : GoUInt32), ("78904" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Elbasan:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("66816" : GoUInt32), ("66855" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Elymaic:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("69600" : GoUInt32), ("69622" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Ethiopic:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((4608 : GoUInt16), (4680 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4682 : GoUInt16), (4685 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4688 : GoUInt16), (4694 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4696 : GoUInt16), (4698 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((4699 : GoUInt16), (4701 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4704 : GoUInt16), (4744 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4746 : GoUInt16), (4749 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4752 : GoUInt16), (4784 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4786 : GoUInt16), (4789 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4792 : GoUInt16), (4798 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4800 : GoUInt16), (4802 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((4803 : GoUInt16), (4805 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4808 : GoUInt16), (4822 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4824 : GoUInt16), (4880 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4882 : GoUInt16), (4885 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4888 : GoUInt16), (4954 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4957 : GoUInt16), (4988 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4992 : GoUInt16), (5017 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11648 : GoUInt16), (11670 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11680 : GoUInt16), (11686 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11688 : GoUInt16), (11694 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11696 : GoUInt16), (11702 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11704 : GoUInt16), (11710 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11712 : GoUInt16), (11718 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11720 : GoUInt16), (11726 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11728 : GoUInt16), (11734 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11736 : GoUInt16), (11742 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43777 : GoUInt16), (43782 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43785 : GoUInt16), (43790 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43793 : GoUInt16), (43798 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43808 : GoUInt16), (43814 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43816 : GoUInt16), (43822 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)
} : RangeTable) : Ref<RangeTable>);

private var __Georgian:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((4256 : GoUInt16), (4293 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((4295 : GoUInt16), (4301 : GoUInt16), (6 : GoUInt16)) : Range16),
	(new Range16((4304 : GoUInt16), (4346 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((4348 : GoUInt16), (4351 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((7312 : GoUInt16), (7354 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((7357 : GoUInt16), (7359 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((11520 : GoUInt16), (11557 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((11559 : GoUInt16), (11565 : GoUInt16), (6 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Glagolitic:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((11264 : GoUInt16), (11310 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((11312 : GoUInt16), (11358 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("122880" : GoUInt32), ("122886" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122888" : GoUInt32), ("122904" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122907" : GoUInt32), ("122913" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122915" : GoUInt32), ("122916" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122918" : GoUInt32), ("122922" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Gothic:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("66352" : GoUInt32), ("66378" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Grantha:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("70400" : GoUInt32), ("70403" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70405" : GoUInt32), ("70412" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70415" : GoUInt32), ("70416" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70419" : GoUInt32), ("70440" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70442" : GoUInt32), ("70448" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70450" : GoUInt32), ("70451" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70453" : GoUInt32), ("70457" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70460" : GoUInt32), ("70468" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70471" : GoUInt32), ("70472" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70475" : GoUInt32), ("70477" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70480" : GoUInt32), ("70487" : GoUInt32), ("7" : GoUInt32)) : Range32),
		(new Range32(("70493" : GoUInt32), ("70499" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70502" : GoUInt32), ("70508" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70512" : GoUInt32), ("70516" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Greek:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((880 : GoUInt16), (883 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((885 : GoUInt16), (887 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((890 : GoUInt16), (893 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((895 : GoUInt16), (900 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((902 : GoUInt16), (904 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((905 : GoUInt16), (906 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((908 : GoUInt16), (910 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((911 : GoUInt16), (929 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((931 : GoUInt16), (993 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1008 : GoUInt16), (1023 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7462 : GoUInt16), (7466 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7517 : GoUInt16), (7521 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7526 : GoUInt16), (7530 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7615 : GoUInt16), (7936 : GoUInt16), (321 : GoUInt16)) : Range16),
		(new Range16((7937 : GoUInt16), (7957 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7960 : GoUInt16), (7965 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7968 : GoUInt16), (8005 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8008 : GoUInt16), (8013 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8016 : GoUInt16), (8023 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8025 : GoUInt16), (8031 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8032 : GoUInt16), (8061 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8064 : GoUInt16), (8116 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8118 : GoUInt16), (8132 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8134 : GoUInt16), (8147 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8150 : GoUInt16), (8155 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8157 : GoUInt16), (8175 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8178 : GoUInt16), (8180 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8182 : GoUInt16), (8190 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8486 : GoUInt16), (43877 : GoUInt16), (35391 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("65856" : GoUInt32), ("65934" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65952" : GoUInt32), ("119296" : GoUInt32), ("53344" : GoUInt32)) : Range32),
		(new Range32(("119297" : GoUInt32), ("119365" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Gujarati:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((2689 : GoUInt16), (2691 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2693 : GoUInt16), (2701 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2703 : GoUInt16), (2705 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2707 : GoUInt16), (2728 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2730 : GoUInt16), (2736 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2738 : GoUInt16), (2739 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2741 : GoUInt16), (2745 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2748 : GoUInt16), (2757 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2759 : GoUInt16), (2761 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2763 : GoUInt16), (2765 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2768 : GoUInt16), (2784 : GoUInt16), (16 : GoUInt16)) : Range16),
		(new Range16((2785 : GoUInt16), (2787 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2790 : GoUInt16), (2801 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2809 : GoUInt16), (2815 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)
} : RangeTable) : Ref<RangeTable>);

private var __Gunjala_Gondi:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("73056" : GoUInt32), ("73061" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73063" : GoUInt32), ("73064" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73066" : GoUInt32), ("73102" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73104" : GoUInt32), ("73105" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73107" : GoUInt32), ("73112" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73120" : GoUInt32), ("73129" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Gurmukhi:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((2561 : GoUInt16), (2563 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2565 : GoUInt16), (2570 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2575 : GoUInt16), (2576 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2579 : GoUInt16), (2600 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2602 : GoUInt16), (2608 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2610 : GoUInt16), (2611 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2613 : GoUInt16), (2614 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2616 : GoUInt16), (2617 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2620 : GoUInt16), (2622 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((2623 : GoUInt16), (2626 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2631 : GoUInt16), (2632 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2635 : GoUInt16), (2637 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2641 : GoUInt16), (2649 : GoUInt16), (8 : GoUInt16)) : Range16),
		(new Range16((2650 : GoUInt16), (2652 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2654 : GoUInt16), (2662 : GoUInt16), (8 : GoUInt16)) : Range16),
		(new Range16((2663 : GoUInt16), (2678 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)
} : RangeTable) : Ref<RangeTable>);

private var __Han:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((11904 : GoUInt16), (11929 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11931 : GoUInt16), (12019 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12032 : GoUInt16), (12245 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12293 : GoUInt16), (12295 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((12321 : GoUInt16), (12329 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12344 : GoUInt16), (12347 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((13312 : GoUInt16), (19903 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((19968 : GoUInt16), (40956 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((63744 : GoUInt16), (64109 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64112 : GoUInt16), (64217 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("94192" : GoUInt32), ("94193" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("131072" : GoUInt32), ("173789" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("173824" : GoUInt32), ("177972" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("177984" : GoUInt32), ("178205" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("178208" : GoUInt32), ("183969" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("183984" : GoUInt32), ("191456" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("194560" : GoUInt32), ("195101" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("196608" : GoUInt32), ("201546" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Hangul:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((4352 : GoUInt16), (4607 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12334 : GoUInt16), (12335 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12593 : GoUInt16), (12686 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12800 : GoUInt16), (12830 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12896 : GoUInt16), (12926 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43360 : GoUInt16), (43388 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((44032 : GoUInt16), (55203 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((55216 : GoUInt16), (55238 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((55243 : GoUInt16), (55291 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65440 : GoUInt16), (65470 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65474 : GoUInt16), (65479 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65482 : GoUInt16), (65487 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65490 : GoUInt16), (65495 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65498 : GoUInt16), (65500 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)
} : RangeTable) : Ref<RangeTable>);

private var __Hanifi_Rohingya:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("68864" : GoUInt32), ("68903" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68912" : GoUInt32), ("68921" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Hanunoo:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((5920 : GoUInt16), (5940 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Hatran:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("67808" : GoUInt32), ("67826" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67828" : GoUInt32), ("67829" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67835" : GoUInt32), ("67839" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Hebrew:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((1425 : GoUInt16), (1479 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1488 : GoUInt16), (1514 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1519 : GoUInt16), (1524 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64285 : GoUInt16), (64310 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64312 : GoUInt16), (64316 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64318 : GoUInt16), (64320 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((64321 : GoUInt16), (64323 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((64324 : GoUInt16), (64326 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((64327 : GoUInt16), (64335 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)
} : RangeTable) : Ref<RangeTable>);

private var __Hiragana:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((12353 : GoUInt16), (12438 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((12445 : GoUInt16), (12447 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("110593" : GoUInt32), ("110878" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("110928" : GoUInt32), ("110930" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127488" : GoUInt32), ("127488" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Imperial_Aramaic:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("67648" : GoUInt32), ("67669" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67671" : GoUInt32), ("67679" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Inherited:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((768 : GoUInt16), (879 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1157 : GoUInt16), (1158 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1611 : GoUInt16), (1621 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1648 : GoUInt16), (2385 : GoUInt16), (737 : GoUInt16)) : Range16),
		(new Range16((2386 : GoUInt16), (2388 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6832 : GoUInt16), (6848 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7376 : GoUInt16), (7378 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7380 : GoUInt16), (7392 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7394 : GoUInt16), (7400 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7405 : GoUInt16), (7412 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((7416 : GoUInt16), (7417 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7616 : GoUInt16), (7673 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7675 : GoUInt16), (7679 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8204 : GoUInt16), (8205 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8400 : GoUInt16), (8432 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12330 : GoUInt16), (12333 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12441 : GoUInt16), (12442 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65024 : GoUInt16), (65039 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65056 : GoUInt16), (65069 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("66045" : GoUInt32), ("66272" : GoUInt32), ("227" : GoUInt32)) : Range32),
		(new Range32(("70459" : GoUInt32), ("119143" : GoUInt32), ("48684" : GoUInt32)) : Range32),
		(new Range32(("119144" : GoUInt32), ("119145" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119163" : GoUInt32), ("119170" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119173" : GoUInt32), ("119179" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119210" : GoUInt32), ("119213" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("917760" : GoUInt32), ("917999" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Inscriptional_Pahlavi:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("68448" : GoUInt32), ("68466" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68472" : GoUInt32), ("68479" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Inscriptional_Parthian:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("68416" : GoUInt32), ("68437" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68440" : GoUInt32), ("68447" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Javanese:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((43392 : GoUInt16), (43469 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((43472 : GoUInt16), (43481 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((43486 : GoUInt16), (43487 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Kaithi:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("69760" : GoUInt32), ("69825" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69837" : GoUInt32), ("69837" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Kannada:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((3200 : GoUInt16), (3212 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3214 : GoUInt16), (3216 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3218 : GoUInt16), (3240 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3242 : GoUInt16), (3251 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3253 : GoUInt16), (3257 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3260 : GoUInt16), (3268 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3270 : GoUInt16), (3272 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3274 : GoUInt16), (3277 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3285 : GoUInt16), (3286 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3294 : GoUInt16), (3296 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3297 : GoUInt16), (3299 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3302 : GoUInt16), (3311 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3313 : GoUInt16), (3314 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)
} : RangeTable) : Ref<RangeTable>);

private var __Katakana:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((12449 : GoUInt16), (12538 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((12541 : GoUInt16), (12543 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((12784 : GoUInt16), (12799 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((13008 : GoUInt16), (13054 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((13056 : GoUInt16), (13143 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((65382 : GoUInt16), (65391 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((65393 : GoUInt16), (65437 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("110592" : GoUInt32), ("110948" : GoUInt32), ("356" : GoUInt32)) : Range32),
		(new Range32(("110949" : GoUInt32), ("110951" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Kayah_Li:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((43264 : GoUInt16), (43309 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((43311 : GoUInt16), (43311 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Kharoshthi:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("68096" : GoUInt32), ("68099" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68101" : GoUInt32), ("68102" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68108" : GoUInt32), ("68115" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68117" : GoUInt32), ("68119" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68121" : GoUInt32), ("68149" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68152" : GoUInt32), ("68154" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68159" : GoUInt32), ("68168" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68176" : GoUInt32), ("68184" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Khitan_Small_Script:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("94180" : GoUInt32), ("101120" : GoUInt32), ("6940" : GoUInt32)) : Range32),
		(new Range32(("101121" : GoUInt32), ("101589" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Khmer:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((6016 : GoUInt16), (6109 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6112 : GoUInt16), (6121 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6128 : GoUInt16), (6137 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6624 : GoUInt16), (6655 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Khojki:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("70144" : GoUInt32), ("70161" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70163" : GoUInt32), ("70206" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Khudawadi:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("70320" : GoUInt32), ("70378" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70384" : GoUInt32), ("70393" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Lao:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((3713 : GoUInt16), (3714 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3716 : GoUInt16), (3718 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3719 : GoUInt16), (3722 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3724 : GoUInt16), (3747 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3749 : GoUInt16), (3751 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3752 : GoUInt16), (3773 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3776 : GoUInt16), (3780 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3782 : GoUInt16), (3784 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3785 : GoUInt16), (3789 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3792 : GoUInt16), (3801 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3804 : GoUInt16), (3807 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)
} : RangeTable) : Ref<RangeTable>);

private var __Latin:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((65 : GoUInt16), (90 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((97 : GoUInt16), (122 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((170 : GoUInt16), (186 : GoUInt16), (16 : GoUInt16)) : Range16),
		(new Range16((192 : GoUInt16), (214 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((216 : GoUInt16), (246 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((248 : GoUInt16), (696 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((736 : GoUInt16), (740 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7424 : GoUInt16), (7461 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7468 : GoUInt16), (7516 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7522 : GoUInt16), (7525 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7531 : GoUInt16), (7543 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7545 : GoUInt16), (7614 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7680 : GoUInt16), (7935 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8305 : GoUInt16), (8319 : GoUInt16), (14 : GoUInt16)) : Range16),
		(new Range16((8336 : GoUInt16), (8348 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8490 : GoUInt16), (8491 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8498 : GoUInt16), (8526 : GoUInt16), (28 : GoUInt16)) : Range16),
		(new Range16((8544 : GoUInt16), (8584 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11360 : GoUInt16), (11391 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42786 : GoUInt16), (42887 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42891 : GoUInt16), (42943 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42946 : GoUInt16), (42954 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42997 : GoUInt16), (43007 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43824 : GoUInt16), (43866 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43868 : GoUInt16), (43876 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43878 : GoUInt16), (43881 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64256 : GoUInt16), (64262 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65313 : GoUInt16), (65338 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65345 : GoUInt16), (65370 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	latinOffset: (5 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Lepcha:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((7168 : GoUInt16), (7223 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((7227 : GoUInt16), (7241 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((7245 : GoUInt16), (7247 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Limbu:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((6400 : GoUInt16), (6430 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6432 : GoUInt16), (6443 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6448 : GoUInt16), (6459 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6464 : GoUInt16), (6468 : GoUInt16), (4 : GoUInt16)) : Range16),
	(new Range16((6469 : GoUInt16), (6479 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Linear_A:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("67072" : GoUInt32), ("67382" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67392" : GoUInt32), ("67413" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67424" : GoUInt32), ("67431" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Linear_B:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("65536" : GoUInt32), ("65547" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65549" : GoUInt32), ("65574" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65576" : GoUInt32), ("65594" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65596" : GoUInt32), ("65597" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65599" : GoUInt32), ("65613" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65616" : GoUInt32), ("65629" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("65664" : GoUInt32), ("65786" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Lisu:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((42192 : GoUInt16), (42239 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("73648" : GoUInt32), ("73648" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Lycian:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("66176" : GoUInt32), ("66204" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Lydian:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("67872" : GoUInt32), ("67897" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67903" : GoUInt32), ("67903" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Mahajani:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("69968" : GoUInt32), ("70006" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Makasar:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("73440" : GoUInt32), ("73464" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Malayalam:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((3328 : GoUInt16), (3340 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((3342 : GoUInt16), (3344 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((3346 : GoUInt16), (3396 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((3398 : GoUInt16), (3400 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((3402 : GoUInt16), (3407 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((3412 : GoUInt16), (3427 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((3430 : GoUInt16), (3455 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Mandaic:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((2112 : GoUInt16), (2139 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((2142 : GoUInt16), (2142 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Manichaean:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("68288" : GoUInt32), ("68326" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68331" : GoUInt32), ("68342" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Marchen:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("72816" : GoUInt32), ("72847" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72850" : GoUInt32), ("72871" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72873" : GoUInt32), ("72886" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Masaram_Gondi:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("72960" : GoUInt32), ("72966" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72968" : GoUInt32), ("72969" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72971" : GoUInt32), ("73014" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73018" : GoUInt32), ("73020" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("73021" : GoUInt32), ("73023" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("73024" : GoUInt32), ("73031" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73040" : GoUInt32), ("73049" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Medefaidrin:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("93760" : GoUInt32), ("93850" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Meetei_Mayek:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((43744 : GoUInt16), (43766 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((43968 : GoUInt16), (44013 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((44016 : GoUInt16), (44025 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Mende_Kikakui:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("124928" : GoUInt32), ("125124" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125127" : GoUInt32), ("125142" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Meroitic_Cursive:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("68000" : GoUInt32), ("68023" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68028" : GoUInt32), ("68047" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68050" : GoUInt32), ("68095" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Meroitic_Hieroglyphs:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("67968" : GoUInt32), ("67999" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Miao:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("93952" : GoUInt32), ("94026" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94031" : GoUInt32), ("94087" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94095" : GoUInt32), ("94111" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Modi:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("71168" : GoUInt32), ("71236" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71248" : GoUInt32), ("71257" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Mongolian:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((6144 : GoUInt16), (6145 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6148 : GoUInt16), (6150 : GoUInt16), (2 : GoUInt16)) : Range16),
	(new Range16((6151 : GoUInt16), (6158 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6160 : GoUInt16), (6169 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6176 : GoUInt16), (6264 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6272 : GoUInt16), (6314 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("71264" : GoUInt32), ("71276" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Mro:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("92736" : GoUInt32), ("92766" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92768" : GoUInt32), ("92777" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92782" : GoUInt32), ("92783" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Multani:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("70272" : GoUInt32), ("70278" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70280" : GoUInt32), ("70282" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("70283" : GoUInt32), ("70285" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70287" : GoUInt32), ("70301" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70303" : GoUInt32), ("70313" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Myanmar:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((4096 : GoUInt16), (4255 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((43488 : GoUInt16), (43518 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((43616 : GoUInt16), (43647 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Nabataean:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("67712" : GoUInt32), ("67742" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67751" : GoUInt32), ("67759" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Nandinagari:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("72096" : GoUInt32), ("72103" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72106" : GoUInt32), ("72151" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72154" : GoUInt32), ("72164" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __New_Tai_Lue:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((6528 : GoUInt16), (6571 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6576 : GoUInt16), (6601 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6608 : GoUInt16), (6618 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6622 : GoUInt16), (6623 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Newa:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("70656" : GoUInt32), ("70747" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70749" : GoUInt32), ("70753" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Nko:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((1984 : GoUInt16), (2042 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((2045 : GoUInt16), (2047 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Nushu:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("94177" : GoUInt32), ("110960" : GoUInt32), ("16783" : GoUInt32)) : Range32),
		(new Range32(("110961" : GoUInt32), ("111355" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Nyiakeng_Puachue_Hmong:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("123136" : GoUInt32), ("123180" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123184" : GoUInt32), ("123197" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123200" : GoUInt32), ("123209" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123214" : GoUInt32), ("123215" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Ogham:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((5760 : GoUInt16), (5788 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Ol_Chiki:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((7248 : GoUInt16), (7295 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Old_Hungarian:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("68736" : GoUInt32), ("68786" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68800" : GoUInt32), ("68850" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68858" : GoUInt32), ("68863" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Old_Italic:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("66304" : GoUInt32), ("66339" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66349" : GoUInt32), ("66351" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Old_North_Arabian:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("68224" : GoUInt32), ("68255" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Old_Permic:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("66384" : GoUInt32), ("66426" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Old_Persian:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("66464" : GoUInt32), ("66499" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66504" : GoUInt32), ("66517" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Old_Sogdian:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("69376" : GoUInt32), ("69415" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Old_South_Arabian:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("68192" : GoUInt32), ("68223" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Old_Turkic:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("68608" : GoUInt32), ("68680" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Oriya:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((2817 : GoUInt16), (2819 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2821 : GoUInt16), (2828 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2831 : GoUInt16), (2832 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2835 : GoUInt16), (2856 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2858 : GoUInt16), (2864 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2866 : GoUInt16), (2867 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2869 : GoUInt16), (2873 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2876 : GoUInt16), (2884 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2887 : GoUInt16), (2888 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2891 : GoUInt16), (2893 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2901 : GoUInt16), (2903 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2908 : GoUInt16), (2909 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2911 : GoUInt16), (2915 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2918 : GoUInt16), (2935 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)
} : RangeTable) : Ref<RangeTable>);

private var __Osage:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("66736" : GoUInt32), ("66771" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66776" : GoUInt32), ("66811" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Osmanya:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("66688" : GoUInt32), ("66717" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66720" : GoUInt32), ("66729" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Pahawh_Hmong:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("92928" : GoUInt32), ("92997" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93008" : GoUInt32), ("93017" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93019" : GoUInt32), ("93025" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93027" : GoUInt32), ("93047" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93053" : GoUInt32), ("93071" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Palmyrene:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("67680" : GoUInt32), ("67711" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Pau_Cin_Hau:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("72384" : GoUInt32), ("72440" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Phags_Pa:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((43072 : GoUInt16), (43127 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Phoenician:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("67840" : GoUInt32), ("67867" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("67871" : GoUInt32), ("67871" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Psalter_Pahlavi:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("68480" : GoUInt32), ("68497" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68505" : GoUInt32), ("68508" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68521" : GoUInt32), ("68527" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Rejang:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((43312 : GoUInt16), (43347 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((43359 : GoUInt16), (43359 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Runic:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((5792 : GoUInt16), (5866 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((5870 : GoUInt16), (5880 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Samaritan:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((2048 : GoUInt16), (2093 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((2096 : GoUInt16), (2110 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Saurashtra:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((43136 : GoUInt16), (43205 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((43214 : GoUInt16), (43225 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Sharada:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("70016" : GoUInt32), ("70111" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Shavian:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("66640" : GoUInt32), ("66687" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Siddham:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("71040" : GoUInt32), ("71093" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71096" : GoUInt32), ("71133" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __SignWriting:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("120832" : GoUInt32), ("121483" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121499" : GoUInt32), ("121503" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("121505" : GoUInt32), ("121519" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Sinhala:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((3457 : GoUInt16), (3459 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3461 : GoUInt16), (3478 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3482 : GoUInt16), (3505 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3507 : GoUInt16), (3515 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3517 : GoUInt16), (3520 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((3521 : GoUInt16), (3526 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3530 : GoUInt16), (3535 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((3536 : GoUInt16), (3540 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3542 : GoUInt16), (3544 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3545 : GoUInt16), (3551 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3558 : GoUInt16), (3567 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3570 : GoUInt16), (3572 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("70113" : GoUInt32), ("70132" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Sogdian:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("69424" : GoUInt32), ("69465" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Sora_Sompeng:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("69840" : GoUInt32), ("69864" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69872" : GoUInt32), ("69881" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Soyombo:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("72272" : GoUInt32), ("72354" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Sundanese:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((7040 : GoUInt16), (7103 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((7360 : GoUInt16), (7367 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Syloti_Nagri:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((43008 : GoUInt16), (43052 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Syriac:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((1792 : GoUInt16), (1805 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((1807 : GoUInt16), (1866 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((1869 : GoUInt16), (1871 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((2144 : GoUInt16), (2154 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Tagalog:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((5888 : GoUInt16), (5900 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((5902 : GoUInt16), (5908 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Tagbanwa:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((5984 : GoUInt16), (5996 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((5998 : GoUInt16), (6000 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6002 : GoUInt16), (6003 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Tai_Le:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((6480 : GoUInt16), (6509 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6512 : GoUInt16), (6516 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Tai_Tham:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((6688 : GoUInt16), (6750 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6752 : GoUInt16), (6780 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6783 : GoUInt16), (6793 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6800 : GoUInt16), (6809 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6816 : GoUInt16), (6829 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Tai_Viet:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((43648 : GoUInt16), (43714 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((43739 : GoUInt16), (43743 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Takri:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("71296" : GoUInt32), ("71352" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71360" : GoUInt32), ("71369" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Tamil:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((2946 : GoUInt16), (2947 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2949 : GoUInt16), (2954 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2958 : GoUInt16), (2960 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2962 : GoUInt16), (2965 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2969 : GoUInt16), (2970 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2972 : GoUInt16), (2974 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((2975 : GoUInt16), (2979 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((2980 : GoUInt16), (2984 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((2985 : GoUInt16), (2986 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2990 : GoUInt16), (3001 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3006 : GoUInt16), (3010 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3014 : GoUInt16), (3016 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3018 : GoUInt16), (3021 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3024 : GoUInt16), (3031 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((3046 : GoUInt16), (3066 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("73664" : GoUInt32), ("73713" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73727" : GoUInt32), ("73727" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Tangut:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("94176" : GoUInt32), ("94208" : GoUInt32), ("32" : GoUInt32)) : Range32),
		(new Range32(("94209" : GoUInt32), ("100343" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("100352" : GoUInt32), ("101119" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("101632" : GoUInt32), ("101640" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Telugu:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((3072 : GoUInt16), (3084 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3086 : GoUInt16), (3088 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3090 : GoUInt16), (3112 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3114 : GoUInt16), (3129 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3133 : GoUInt16), (3140 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3142 : GoUInt16), (3144 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3146 : GoUInt16), (3149 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3157 : GoUInt16), (3158 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3160 : GoUInt16), (3162 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3168 : GoUInt16), (3171 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3174 : GoUInt16), (3183 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3191 : GoUInt16), (3199 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)
} : RangeTable) : Ref<RangeTable>);

private var __Thaana:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((1920 : GoUInt16), (1969 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Thai:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((3585 : GoUInt16), (3642 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((3648 : GoUInt16), (3675 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Tibetan:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((3840 : GoUInt16), (3911 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((3913 : GoUInt16), (3948 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((3953 : GoUInt16), (3991 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((3993 : GoUInt16), (4028 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((4030 : GoUInt16), (4044 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((4046 : GoUInt16), (4052 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((4057 : GoUInt16), (4058 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Tifinagh:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((11568 : GoUInt16), (11623 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((11631 : GoUInt16), (11632 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((11647 : GoUInt16), (11647 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Tirhuta:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("70784" : GoUInt32), ("70855" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70864" : GoUInt32), ("70873" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Ugaritic:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("66432" : GoUInt32), ("66461" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66463" : GoUInt32), ("66463" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Vai:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((42240 : GoUInt16), (42539 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Wancho:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("123584" : GoUInt32), ("123641" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123647" : GoUInt32), ("123647" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Warang_Citi:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("71840" : GoUInt32), ("71922" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71935" : GoUInt32), ("71935" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Yezidi:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0, (new Range32(("69248" : GoUInt32), ("69289" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69291" : GoUInt32), ("69293" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69296" : GoUInt32), ("69297" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Yi:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((40960 : GoUInt16), (42124 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((42128 : GoUInt16), (42182 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Zanabazar_Square:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("72192" : GoUInt32), ("72263" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

/**
	// Adlam is the set of Unicode characters in script Adlam.// These variables have type *RangeTable.
**/
var adlam:Ref<RangeTable> = __Adlam;

/**
	// Ahom is the set of Unicode characters in script Ahom.// These variables have type *RangeTable.
**/
var ahom:Ref<RangeTable> = __Ahom;

/**
	// Anatolian_Hieroglyphs is the set of Unicode characters in script Anatolian_Hieroglyphs.// These variables have type *RangeTable.
**/
var anatolian_Hieroglyphs:Ref<RangeTable> = __Anatolian_Hieroglyphs;

/**
	// Arabic is the set of Unicode characters in script Arabic.// These variables have type *RangeTable.
**/
var arabic:Ref<RangeTable> = __Arabic;

/**
	// Armenian is the set of Unicode characters in script Armenian.// These variables have type *RangeTable.
**/
var armenian:Ref<RangeTable> = __Armenian;

/**
	// Avestan is the set of Unicode characters in script Avestan.// These variables have type *RangeTable.
**/
var avestan:Ref<RangeTable> = __Avestan;

/**
	// Balinese is the set of Unicode characters in script Balinese.// These variables have type *RangeTable.
**/
var balinese:Ref<RangeTable> = __Balinese;

/**
	// Bamum is the set of Unicode characters in script Bamum.// These variables have type *RangeTable.
**/
var bamum:Ref<RangeTable> = __Bamum;

/**
	// Bassa_Vah is the set of Unicode characters in script Bassa_Vah.// These variables have type *RangeTable.
**/
var bassa_Vah:Ref<RangeTable> = __Bassa_Vah;

/**
	// Batak is the set of Unicode characters in script Batak.// These variables have type *RangeTable.
**/
var batak:Ref<RangeTable> = __Batak;

/**
	// Bengali is the set of Unicode characters in script Bengali.// These variables have type *RangeTable.
**/
var bengali:Ref<RangeTable> = __Bengali;

/**
	// Bhaiksuki is the set of Unicode characters in script Bhaiksuki.// These variables have type *RangeTable.
**/
var bhaiksuki:Ref<RangeTable> = __Bhaiksuki;

/**
	// Bopomofo is the set of Unicode characters in script Bopomofo.// These variables have type *RangeTable.
**/
var bopomofo:Ref<RangeTable> = __Bopomofo;

/**
	// Brahmi is the set of Unicode characters in script Brahmi.// These variables have type *RangeTable.
**/
var brahmi:Ref<RangeTable> = __Brahmi;

/**
	// Braille is the set of Unicode characters in script Braille.// These variables have type *RangeTable.
**/
var braille:Ref<RangeTable> = __Braille;

/**
	// Buginese is the set of Unicode characters in script Buginese.// These variables have type *RangeTable.
**/
var buginese:Ref<RangeTable> = __Buginese;

/**
	// Buhid is the set of Unicode characters in script Buhid.// These variables have type *RangeTable.
**/
var buhid:Ref<RangeTable> = __Buhid;

/**
	// Canadian_Aboriginal is the set of Unicode characters in script Canadian_Aboriginal.// These variables have type *RangeTable.
**/
var canadian_Aboriginal:Ref<RangeTable> = __Canadian_Aboriginal;

/**
	// Carian is the set of Unicode characters in script Carian.// These variables have type *RangeTable.
**/
var carian:Ref<RangeTable> = __Carian;

/**
	// Caucasian_Albanian is the set of Unicode characters in script Caucasian_Albanian.// These variables have type *RangeTable.
**/
var caucasian_Albanian:Ref<RangeTable> = __Caucasian_Albanian;

/**
	// Chakma is the set of Unicode characters in script Chakma.// These variables have type *RangeTable.
**/
var chakma:Ref<RangeTable> = __Chakma;

/**
	// Cham is the set of Unicode characters in script Cham.// These variables have type *RangeTable.
**/
var cham:Ref<RangeTable> = __Cham;

/**
	// Cherokee is the set of Unicode characters in script Cherokee.// These variables have type *RangeTable.
**/
var cherokee:Ref<RangeTable> = __Cherokee;

/**
	// Chorasmian is the set of Unicode characters in script Chorasmian.// These variables have type *RangeTable.
**/
var chorasmian:Ref<RangeTable> = __Chorasmian;

/**
	// Common is the set of Unicode characters in script Common.// These variables have type *RangeTable.
**/
var common:Ref<RangeTable> = __Common;

/**
	// Coptic is the set of Unicode characters in script Coptic.// These variables have type *RangeTable.
**/
var coptic:Ref<RangeTable> = __Coptic;

/**
	// Cuneiform is the set of Unicode characters in script Cuneiform.// These variables have type *RangeTable.
**/
var cuneiform:Ref<RangeTable> = __Cuneiform;

/**
	// Cypriot is the set of Unicode characters in script Cypriot.// These variables have type *RangeTable.
**/
var cypriot:Ref<RangeTable> = __Cypriot;

/**
	// Cyrillic is the set of Unicode characters in script Cyrillic.// These variables have type *RangeTable.
**/
var cyrillic:Ref<RangeTable> = __Cyrillic;

/**
	// Deseret is the set of Unicode characters in script Deseret.// These variables have type *RangeTable.
**/
var deseret:Ref<RangeTable> = __Deseret;

/**
	// Devanagari is the set of Unicode characters in script Devanagari.// These variables have type *RangeTable.
**/
var devanagari:Ref<RangeTable> = __Devanagari;

/**
	// Dives_Akuru is the set of Unicode characters in script Dives_Akuru.// These variables have type *RangeTable.
**/
var dives_Akuru:Ref<RangeTable> = __Dives_Akuru;

/**
	// Dogra is the set of Unicode characters in script Dogra.// These variables have type *RangeTable.
**/
var dogra:Ref<RangeTable> = __Dogra;

/**
	// Duployan is the set of Unicode characters in script Duployan.// These variables have type *RangeTable.
**/
var duployan:Ref<RangeTable> = __Duployan;

/**
	// Egyptian_Hieroglyphs is the set of Unicode characters in script Egyptian_Hieroglyphs.// These variables have type *RangeTable.
**/
var egyptian_Hieroglyphs:Ref<RangeTable> = __Egyptian_Hieroglyphs;

/**
	// Elbasan is the set of Unicode characters in script Elbasan.// These variables have type *RangeTable.
**/
var elbasan:Ref<RangeTable> = __Elbasan;

/**
	// Elymaic is the set of Unicode characters in script Elymaic.// These variables have type *RangeTable.
**/
var elymaic:Ref<RangeTable> = __Elymaic;

/**
	// Ethiopic is the set of Unicode characters in script Ethiopic.// These variables have type *RangeTable.
**/
var ethiopic:Ref<RangeTable> = __Ethiopic;

/**
	// Georgian is the set of Unicode characters in script Georgian.// These variables have type *RangeTable.
**/
var georgian:Ref<RangeTable> = __Georgian;

/**
	// Glagolitic is the set of Unicode characters in script Glagolitic.// These variables have type *RangeTable.
**/
var glagolitic:Ref<RangeTable> = __Glagolitic;

/**
	// Gothic is the set of Unicode characters in script Gothic.// These variables have type *RangeTable.
**/
var gothic:Ref<RangeTable> = __Gothic;

/**
	// Grantha is the set of Unicode characters in script Grantha.// These variables have type *RangeTable.
**/
var grantha:Ref<RangeTable> = __Grantha;

/**
	// Greek is the set of Unicode characters in script Greek.// These variables have type *RangeTable.
**/
var greek:Ref<RangeTable> = __Greek;

/**
	// Gujarati is the set of Unicode characters in script Gujarati.// These variables have type *RangeTable.
**/
var gujarati:Ref<RangeTable> = __Gujarati;

/**
	// Gunjala_Gondi is the set of Unicode characters in script Gunjala_Gondi.// These variables have type *RangeTable.
**/
var gunjala_Gondi:Ref<RangeTable> = __Gunjala_Gondi;

/**
	// Gurmukhi is the set of Unicode characters in script Gurmukhi.// These variables have type *RangeTable.
**/
var gurmukhi:Ref<RangeTable> = __Gurmukhi;

/**
	// Han is the set of Unicode characters in script Han.// These variables have type *RangeTable.
**/
var han:Ref<RangeTable> = __Han;

/**
	// Hangul is the set of Unicode characters in script Hangul.// These variables have type *RangeTable.
**/
var hangul:Ref<RangeTable> = __Hangul;

/**
	// Hanifi_Rohingya is the set of Unicode characters in script Hanifi_Rohingya.// These variables have type *RangeTable.
**/
var hanifi_Rohingya:Ref<RangeTable> = __Hanifi_Rohingya;

/**
	// Hanunoo is the set of Unicode characters in script Hanunoo.// These variables have type *RangeTable.
**/
var hanunoo:Ref<RangeTable> = __Hanunoo;

/**
	// Hatran is the set of Unicode characters in script Hatran.// These variables have type *RangeTable.
**/
var hatran:Ref<RangeTable> = __Hatran;

/**
	// Hebrew is the set of Unicode characters in script Hebrew.// These variables have type *RangeTable.
**/
var hebrew:Ref<RangeTable> = __Hebrew;

/**
	// Hiragana is the set of Unicode characters in script Hiragana.// These variables have type *RangeTable.
**/
var hiragana:Ref<RangeTable> = __Hiragana;

/**
	// Imperial_Aramaic is the set of Unicode characters in script Imperial_Aramaic.// These variables have type *RangeTable.
**/
var imperial_Aramaic:Ref<RangeTable> = __Imperial_Aramaic;

/**
	// Inherited is the set of Unicode characters in script Inherited.// These variables have type *RangeTable.
**/
var inherited:Ref<RangeTable> = __Inherited;

/**
	// Inscriptional_Pahlavi is the set of Unicode characters in script Inscriptional_Pahlavi.// These variables have type *RangeTable.
**/
var inscriptional_Pahlavi:Ref<RangeTable> = __Inscriptional_Pahlavi;

/**
	// Inscriptional_Parthian is the set of Unicode characters in script Inscriptional_Parthian.// These variables have type *RangeTable.
**/
var inscriptional_Parthian:Ref<RangeTable> = __Inscriptional_Parthian;

/**
	// Javanese is the set of Unicode characters in script Javanese.// These variables have type *RangeTable.
**/
var javanese:Ref<RangeTable> = __Javanese;

/**
	// Kaithi is the set of Unicode characters in script Kaithi.// These variables have type *RangeTable.
**/
var kaithi:Ref<RangeTable> = __Kaithi;

/**
	// Kannada is the set of Unicode characters in script Kannada.// These variables have type *RangeTable.
**/
var kannada:Ref<RangeTable> = __Kannada;

/**
	// Katakana is the set of Unicode characters in script Katakana.// These variables have type *RangeTable.
**/
var katakana:Ref<RangeTable> = __Katakana;

/**
	// Kayah_Li is the set of Unicode characters in script Kayah_Li.// These variables have type *RangeTable.
**/
var kayah_Li:Ref<RangeTable> = __Kayah_Li;

/**
	// Kharoshthi is the set of Unicode characters in script Kharoshthi.// These variables have type *RangeTable.
**/
var kharoshthi:Ref<RangeTable> = __Kharoshthi;

/**
	// Khitan_Small_Script is the set of Unicode characters in script Khitan_Small_Script.// These variables have type *RangeTable.
**/
var khitan_Small_Script:Ref<RangeTable> = __Khitan_Small_Script;

/**
	// Khmer is the set of Unicode characters in script Khmer.// These variables have type *RangeTable.
**/
var khmer:Ref<RangeTable> = __Khmer;

/**
	// Khojki is the set of Unicode characters in script Khojki.// These variables have type *RangeTable.
**/
var khojki:Ref<RangeTable> = __Khojki;

/**
	// Khudawadi is the set of Unicode characters in script Khudawadi.// These variables have type *RangeTable.
**/
var khudawadi:Ref<RangeTable> = __Khudawadi;

/**
	// Lao is the set of Unicode characters in script Lao.// These variables have type *RangeTable.
**/
var lao:Ref<RangeTable> = __Lao;

/**
	// Latin is the set of Unicode characters in script Latin.// These variables have type *RangeTable.
**/
var latin:Ref<RangeTable> = __Latin;

/**
	// Lepcha is the set of Unicode characters in script Lepcha.// These variables have type *RangeTable.
**/
var lepcha:Ref<RangeTable> = __Lepcha;

/**
	// Limbu is the set of Unicode characters in script Limbu.// These variables have type *RangeTable.
**/
var limbu:Ref<RangeTable> = __Limbu;

/**
	// Linear_A is the set of Unicode characters in script Linear_A.// These variables have type *RangeTable.
**/
var linear_A:Ref<RangeTable> = __Linear_A;

/**
	// Linear_B is the set of Unicode characters in script Linear_B.// These variables have type *RangeTable.
**/
var linear_B:Ref<RangeTable> = __Linear_B;

/**
	// Lisu is the set of Unicode characters in script Lisu.// These variables have type *RangeTable.
**/
var lisu:Ref<RangeTable> = __Lisu;

/**
	// Lycian is the set of Unicode characters in script Lycian.// These variables have type *RangeTable.
**/
var lycian:Ref<RangeTable> = __Lycian;

/**
	// Lydian is the set of Unicode characters in script Lydian.// These variables have type *RangeTable.
**/
var lydian:Ref<RangeTable> = __Lydian;

/**
	// Mahajani is the set of Unicode characters in script Mahajani.// These variables have type *RangeTable.
**/
var mahajani:Ref<RangeTable> = __Mahajani;

/**
	// Makasar is the set of Unicode characters in script Makasar.// These variables have type *RangeTable.
**/
var makasar:Ref<RangeTable> = __Makasar;

/**
	// Malayalam is the set of Unicode characters in script Malayalam.// These variables have type *RangeTable.
**/
var malayalam:Ref<RangeTable> = __Malayalam;

/**
	// Mandaic is the set of Unicode characters in script Mandaic.// These variables have type *RangeTable.
**/
var mandaic:Ref<RangeTable> = __Mandaic;

/**
	// Manichaean is the set of Unicode characters in script Manichaean.// These variables have type *RangeTable.
**/
var manichaean:Ref<RangeTable> = __Manichaean;

/**
	// Marchen is the set of Unicode characters in script Marchen.// These variables have type *RangeTable.
**/
var marchen:Ref<RangeTable> = __Marchen;

/**
	// Masaram_Gondi is the set of Unicode characters in script Masaram_Gondi.// These variables have type *RangeTable.
**/
var masaram_Gondi:Ref<RangeTable> = __Masaram_Gondi;

/**
	// Medefaidrin is the set of Unicode characters in script Medefaidrin.// These variables have type *RangeTable.
**/
var medefaidrin:Ref<RangeTable> = __Medefaidrin;

/**
	// Meetei_Mayek is the set of Unicode characters in script Meetei_Mayek.// These variables have type *RangeTable.
**/
var meetei_Mayek:Ref<RangeTable> = __Meetei_Mayek;

/**
	// Mende_Kikakui is the set of Unicode characters in script Mende_Kikakui.// These variables have type *RangeTable.
**/
var mende_Kikakui:Ref<RangeTable> = __Mende_Kikakui;

/**
	// Meroitic_Cursive is the set of Unicode characters in script Meroitic_Cursive.// These variables have type *RangeTable.
**/
var meroitic_Cursive:Ref<RangeTable> = __Meroitic_Cursive;

/**
	// Meroitic_Hieroglyphs is the set of Unicode characters in script Meroitic_Hieroglyphs.// These variables have type *RangeTable.
**/
var meroitic_Hieroglyphs:Ref<RangeTable> = __Meroitic_Hieroglyphs;

/**
	// Miao is the set of Unicode characters in script Miao.// These variables have type *RangeTable.
**/
var miao:Ref<RangeTable> = __Miao;

/**
	// Modi is the set of Unicode characters in script Modi.// These variables have type *RangeTable.
**/
var modi:Ref<RangeTable> = __Modi;

/**
	// Mongolian is the set of Unicode characters in script Mongolian.// These variables have type *RangeTable.
**/
var mongolian:Ref<RangeTable> = __Mongolian;

/**
	// Mro is the set of Unicode characters in script Mro.// These variables have type *RangeTable.
**/
var mro:Ref<RangeTable> = __Mro;

/**
	// Multani is the set of Unicode characters in script Multani.// These variables have type *RangeTable.
**/
var multani:Ref<RangeTable> = __Multani;

/**
	// Myanmar is the set of Unicode characters in script Myanmar.// These variables have type *RangeTable.
**/
var myanmar:Ref<RangeTable> = __Myanmar;

/**
	// Nabataean is the set of Unicode characters in script Nabataean.// These variables have type *RangeTable.
**/
var nabataean:Ref<RangeTable> = __Nabataean;

/**
	// Nandinagari is the set of Unicode characters in script Nandinagari.// These variables have type *RangeTable.
**/
var nandinagari:Ref<RangeTable> = __Nandinagari;

/**
	// New_Tai_Lue is the set of Unicode characters in script New_Tai_Lue.// These variables have type *RangeTable.
**/
var new_Tai_Lue:Ref<RangeTable> = __New_Tai_Lue;

/**
	// Newa is the set of Unicode characters in script Newa.// These variables have type *RangeTable.
**/
var newa:Ref<RangeTable> = __Newa;

/**
	// Nko is the set of Unicode characters in script Nko.// These variables have type *RangeTable.
**/
var nko:Ref<RangeTable> = __Nko;

/**
	// Nushu is the set of Unicode characters in script Nushu.// These variables have type *RangeTable.
**/
var nushu:Ref<RangeTable> = __Nushu;

/**
	// Nyiakeng_Puachue_Hmong is the set of Unicode characters in script Nyiakeng_Puachue_Hmong.// These variables have type *RangeTable.
**/
var nyiakeng_Puachue_Hmong:Ref<RangeTable> = __Nyiakeng_Puachue_Hmong;

/**
	// Ogham is the set of Unicode characters in script Ogham.// These variables have type *RangeTable.
**/
var ogham:Ref<RangeTable> = __Ogham;

/**
	// Ol_Chiki is the set of Unicode characters in script Ol_Chiki.// These variables have type *RangeTable.
**/
var ol_Chiki:Ref<RangeTable> = __Ol_Chiki;

/**
	// Old_Hungarian is the set of Unicode characters in script Old_Hungarian.// These variables have type *RangeTable.
**/
var old_Hungarian:Ref<RangeTable> = __Old_Hungarian;

/**
	// Old_Italic is the set of Unicode characters in script Old_Italic.// These variables have type *RangeTable.
**/
var old_Italic:Ref<RangeTable> = __Old_Italic;

/**
	// Old_North_Arabian is the set of Unicode characters in script Old_North_Arabian.// These variables have type *RangeTable.
**/
var old_North_Arabian:Ref<RangeTable> = __Old_North_Arabian;

/**
	// Old_Permic is the set of Unicode characters in script Old_Permic.// These variables have type *RangeTable.
**/
var old_Permic:Ref<RangeTable> = __Old_Permic;

/**
	// Old_Persian is the set of Unicode characters in script Old_Persian.// These variables have type *RangeTable.
**/
var old_Persian:Ref<RangeTable> = __Old_Persian;

/**
	// Old_Sogdian is the set of Unicode characters in script Old_Sogdian.// These variables have type *RangeTable.
**/
var old_Sogdian:Ref<RangeTable> = __Old_Sogdian;

/**
	// Old_South_Arabian is the set of Unicode characters in script Old_South_Arabian.// These variables have type *RangeTable.
**/
var old_South_Arabian:Ref<RangeTable> = __Old_South_Arabian;

/**
	// Old_Turkic is the set of Unicode characters in script Old_Turkic.// These variables have type *RangeTable.
**/
var old_Turkic:Ref<RangeTable> = __Old_Turkic;

/**
	// Oriya is the set of Unicode characters in script Oriya.// These variables have type *RangeTable.
**/
var oriya:Ref<RangeTable> = __Oriya;

/**
	// Osage is the set of Unicode characters in script Osage.// These variables have type *RangeTable.
**/
var osage:Ref<RangeTable> = __Osage;

/**
	// Osmanya is the set of Unicode characters in script Osmanya.// These variables have type *RangeTable.
**/
var osmanya:Ref<RangeTable> = __Osmanya;

/**
	// Pahawh_Hmong is the set of Unicode characters in script Pahawh_Hmong.// These variables have type *RangeTable.
**/
var pahawh_Hmong:Ref<RangeTable> = __Pahawh_Hmong;

/**
	// Palmyrene is the set of Unicode characters in script Palmyrene.// These variables have type *RangeTable.
**/
var palmyrene:Ref<RangeTable> = __Palmyrene;

/**
	// Pau_Cin_Hau is the set of Unicode characters in script Pau_Cin_Hau.// These variables have type *RangeTable.
**/
var pau_Cin_Hau:Ref<RangeTable> = __Pau_Cin_Hau;

/**
	// Phags_Pa is the set of Unicode characters in script Phags_Pa.// These variables have type *RangeTable.
**/
var phags_Pa:Ref<RangeTable> = __Phags_Pa;

/**
	// Phoenician is the set of Unicode characters in script Phoenician.// These variables have type *RangeTable.
**/
var phoenician:Ref<RangeTable> = __Phoenician;

/**
	// Psalter_Pahlavi is the set of Unicode characters in script Psalter_Pahlavi.// These variables have type *RangeTable.
**/
var psalter_Pahlavi:Ref<RangeTable> = __Psalter_Pahlavi;

/**
	// Rejang is the set of Unicode characters in script Rejang.// These variables have type *RangeTable.
**/
var rejang:Ref<RangeTable> = __Rejang;

/**
	// Runic is the set of Unicode characters in script Runic.// These variables have type *RangeTable.
**/
var runic:Ref<RangeTable> = __Runic;

/**
	// Samaritan is the set of Unicode characters in script Samaritan.// These variables have type *RangeTable.
**/
var samaritan:Ref<RangeTable> = __Samaritan;

/**
	// Saurashtra is the set of Unicode characters in script Saurashtra.// These variables have type *RangeTable.
**/
var saurashtra:Ref<RangeTable> = __Saurashtra;

/**
	// Sharada is the set of Unicode characters in script Sharada.// These variables have type *RangeTable.
**/
var sharada:Ref<RangeTable> = __Sharada;

/**
	// Shavian is the set of Unicode characters in script Shavian.// These variables have type *RangeTable.
**/
var shavian:Ref<RangeTable> = __Shavian;

/**
	// Siddham is the set of Unicode characters in script Siddham.// These variables have type *RangeTable.
**/
var siddham:Ref<RangeTable> = __Siddham;

/**
	// SignWriting is the set of Unicode characters in script SignWriting.// These variables have type *RangeTable.
**/
var signWriting:Ref<RangeTable> = __SignWriting;

/**
	// Sinhala is the set of Unicode characters in script Sinhala.// These variables have type *RangeTable.
**/
var sinhala:Ref<RangeTable> = __Sinhala;

/**
	// Sogdian is the set of Unicode characters in script Sogdian.// These variables have type *RangeTable.
**/
var sogdian:Ref<RangeTable> = __Sogdian;

/**
	// Sora_Sompeng is the set of Unicode characters in script Sora_Sompeng.// These variables have type *RangeTable.
**/
var sora_Sompeng:Ref<RangeTable> = __Sora_Sompeng;

/**
	// Soyombo is the set of Unicode characters in script Soyombo.// These variables have type *RangeTable.
**/
var soyombo:Ref<RangeTable> = __Soyombo;

/**
	// Sundanese is the set of Unicode characters in script Sundanese.// These variables have type *RangeTable.
**/
var sundanese:Ref<RangeTable> = __Sundanese;

/**
	// Syloti_Nagri is the set of Unicode characters in script Syloti_Nagri.// These variables have type *RangeTable.
**/
var syloti_Nagri:Ref<RangeTable> = __Syloti_Nagri;

/**
	// Syriac is the set of Unicode characters in script Syriac.// These variables have type *RangeTable.
**/
var syriac:Ref<RangeTable> = __Syriac;

/**
	// Tagalog is the set of Unicode characters in script Tagalog.// These variables have type *RangeTable.
**/
var tagalog:Ref<RangeTable> = __Tagalog;

/**
	// Tagbanwa is the set of Unicode characters in script Tagbanwa.// These variables have type *RangeTable.
**/
var tagbanwa:Ref<RangeTable> = __Tagbanwa;

/**
	// Tai_Le is the set of Unicode characters in script Tai_Le.// These variables have type *RangeTable.
**/
var tai_Le:Ref<RangeTable> = __Tai_Le;

/**
	// Tai_Tham is the set of Unicode characters in script Tai_Tham.// These variables have type *RangeTable.
**/
var tai_Tham:Ref<RangeTable> = __Tai_Tham;

/**
	// Tai_Viet is the set of Unicode characters in script Tai_Viet.// These variables have type *RangeTable.
**/
var tai_Viet:Ref<RangeTable> = __Tai_Viet;

/**
	// Takri is the set of Unicode characters in script Takri.// These variables have type *RangeTable.
**/
var takri:Ref<RangeTable> = __Takri;

/**
	// Tamil is the set of Unicode characters in script Tamil.// These variables have type *RangeTable.
**/
var tamil:Ref<RangeTable> = __Tamil;

/**
	// Tangut is the set of Unicode characters in script Tangut.// These variables have type *RangeTable.
**/
var tangut:Ref<RangeTable> = __Tangut;

/**
	// Telugu is the set of Unicode characters in script Telugu.// These variables have type *RangeTable.
**/
var telugu:Ref<RangeTable> = __Telugu;

/**
	// Thaana is the set of Unicode characters in script Thaana.// These variables have type *RangeTable.
**/
var thaana:Ref<RangeTable> = __Thaana;

/**
	// Thai is the set of Unicode characters in script Thai.// These variables have type *RangeTable.
**/
var thai:Ref<RangeTable> = __Thai;

/**
	// Tibetan is the set of Unicode characters in script Tibetan.// These variables have type *RangeTable.
**/
var tibetan:Ref<RangeTable> = __Tibetan;

/**
	// Tifinagh is the set of Unicode characters in script Tifinagh.// These variables have type *RangeTable.
**/
var tifinagh:Ref<RangeTable> = __Tifinagh;

/**
	// Tirhuta is the set of Unicode characters in script Tirhuta.// These variables have type *RangeTable.
**/
var tirhuta:Ref<RangeTable> = __Tirhuta;

/**
	// Ugaritic is the set of Unicode characters in script Ugaritic.// These variables have type *RangeTable.
**/
var ugaritic:Ref<RangeTable> = __Ugaritic;

/**
	// Vai is the set of Unicode characters in script Vai.// These variables have type *RangeTable.
**/
var vai:Ref<RangeTable> = __Vai;

/**
	// Wancho is the set of Unicode characters in script Wancho.// These variables have type *RangeTable.
**/
var wancho:Ref<RangeTable> = __Wancho;

/**
	// Warang_Citi is the set of Unicode characters in script Warang_Citi.// These variables have type *RangeTable.
**/
var warang_Citi:Ref<RangeTable> = __Warang_Citi;

/**
	// Yezidi is the set of Unicode characters in script Yezidi.// These variables have type *RangeTable.
**/
var yezidi:Ref<RangeTable> = __Yezidi;

/**
	// Yi is the set of Unicode characters in script Yi.// These variables have type *RangeTable.
**/
var yi:Ref<RangeTable> = __Yi;

/**
	// Zanabazar_Square is the set of Unicode characters in script Zanabazar_Square.// These variables have type *RangeTable.
**/
var zanabazar_Square:Ref<RangeTable> = __Zanabazar_Square;

/**
	// Scripts is the set of Unicode script tables.
**/
var scripts:GoMap<GoString, Ref<RangeTable>> = {
	final x = new stdgo.GoMap.GoObjectMap<GoString, Ref<RangeTable>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType({get: () ->
		stdgo.reflect.Reflect.GoType.basic(string_kind)},
		{get: () -> stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("RangeTable", [], stdgo.reflect.Reflect.GoType.structType([
			{
				name: "r16",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.sliceType({get: () -> stdgo.reflect.Reflect.GoType.named("Range16", [],
					stdgo.reflect.Reflect.GoType.structType([
						{
							name: "lo",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
						},
						{
							name: "hi",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
						},
						{
							name: "stride",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
						}
					]))})
			},
			{
				name: "r32",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.sliceType({get: () -> stdgo.reflect.Reflect.GoType.named("Range32", [],
					stdgo.reflect.Reflect.GoType.structType([
						{
							name: "lo",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
						},
						{
							name: "hi",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
						},
						{
							name: "stride",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
						}
					]))})
			},
			{
				name: "latinOffset",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(int_kind)
			}
		])))})));
	@:privateAccess x._keys = [
		Go.str("Adlam"),
		Go.str("Ahom"),
		Go.str("Anatolian_Hieroglyphs"),
		Go.str("Arabic"),
		Go.str("Armenian"),
		Go.str("Avestan"),
		Go.str("Balinese"),
		Go.str("Bamum"),
		Go.str("Bassa_Vah"),
		Go.str("Batak"),
		Go.str("Bengali"),
		Go.str("Bhaiksuki"),
		Go.str("Bopomofo"),
		Go.str("Brahmi"),
		Go.str("Braille"),
		Go.str("Buginese"),
		Go.str("Buhid"),
		Go.str("Canadian_Aboriginal"),
		Go.str("Carian"),
		Go.str("Caucasian_Albanian"),
		Go.str("Chakma"),
		Go.str("Cham"),
		Go.str("Cherokee"),
		Go.str("Chorasmian"),
		Go.str("Common"),
		Go.str("Coptic"),
		Go.str("Cuneiform"),
		Go.str("Cypriot"),
		Go.str("Cyrillic"),
		Go.str("Deseret"),
		Go.str("Devanagari"),
		Go.str("Dives_Akuru"),
		Go.str("Dogra"),
		Go.str("Duployan"),
		Go.str("Egyptian_Hieroglyphs"),
		Go.str("Elbasan"),
		Go.str("Elymaic"),
		Go.str("Ethiopic"),
		Go.str("Georgian"),
		Go.str("Glagolitic"),
		Go.str("Gothic"),
		Go.str("Grantha"),
		Go.str("Greek"),
		Go.str("Gujarati"),
		Go.str("Gunjala_Gondi"),
		Go.str("Gurmukhi"),
		Go.str("Han"),
		Go.str("Hangul"),
		Go.str("Hanifi_Rohingya"),
		Go.str("Hanunoo"),
		Go.str("Hatran"),
		Go.str("Hebrew"),
		Go.str("Hiragana"),
		Go.str("Imperial_Aramaic"),
		Go.str("Inherited"),
		Go.str("Inscriptional_Pahlavi"),
		Go.str("Inscriptional_Parthian"),
		Go.str("Javanese"),
		Go.str("Kaithi"),
		Go.str("Kannada"),
		Go.str("Katakana"),
		Go.str("Kayah_Li"),
		Go.str("Kharoshthi"),
		Go.str("Khitan_Small_Script"),
		Go.str("Khmer"),
		Go.str("Khojki"),
		Go.str("Khudawadi"),
		Go.str("Lao"),
		Go.str("Latin"),
		Go.str("Lepcha"),
		Go.str("Limbu"),
		Go.str("Linear_A"),
		Go.str("Linear_B"),
		Go.str("Lisu"),
		Go.str("Lycian"),
		Go.str("Lydian"),
		Go.str("Mahajani"),
		Go.str("Makasar"),
		Go.str("Malayalam"),
		Go.str("Mandaic"),
		Go.str("Manichaean"),
		Go.str("Marchen"),
		Go.str("Masaram_Gondi"),
		Go.str("Medefaidrin"),
		Go.str("Meetei_Mayek"),
		Go.str("Mende_Kikakui"),
		Go.str("Meroitic_Cursive"),
		Go.str("Meroitic_Hieroglyphs"),
		Go.str("Miao"),
		Go.str("Modi"),
		Go.str("Mongolian"),
		Go.str("Mro"),
		Go.str("Multani"),
		Go.str("Myanmar"),
		Go.str("Nabataean"),
		Go.str("Nandinagari"),
		Go.str("New_Tai_Lue"),
		Go.str("Newa"),
		Go.str("Nko"),
		Go.str("Nushu"),
		Go.str("Nyiakeng_Puachue_Hmong"),
		Go.str("Ogham"),
		Go.str("Ol_Chiki"),
		Go.str("Old_Hungarian"),
		Go.str("Old_Italic"),
		Go.str("Old_North_Arabian"),
		Go.str("Old_Permic"),
		Go.str("Old_Persian"),
		Go.str("Old_Sogdian"),
		Go.str("Old_South_Arabian"),
		Go.str("Old_Turkic"),
		Go.str("Oriya"),
		Go.str("Osage"),
		Go.str("Osmanya"),
		Go.str("Pahawh_Hmong"),
		Go.str("Palmyrene"),
		Go.str("Pau_Cin_Hau"),
		Go.str("Phags_Pa"),
		Go.str("Phoenician"),
		Go.str("Psalter_Pahlavi"),
		Go.str("Rejang"),
		Go.str("Runic"),
		Go.str("Samaritan"),
		Go.str("Saurashtra"),
		Go.str("Sharada"),
		Go.str("Shavian"),
		Go.str("Siddham"),
		Go.str("SignWriting"),
		Go.str("Sinhala"),
		Go.str("Sogdian"),
		Go.str("Sora_Sompeng"),
		Go.str("Soyombo"),
		Go.str("Sundanese"),
		Go.str("Syloti_Nagri"),
		Go.str("Syriac"),
		Go.str("Tagalog"),
		Go.str("Tagbanwa"),
		Go.str("Tai_Le"),
		Go.str("Tai_Tham"),
		Go.str("Tai_Viet"),
		Go.str("Takri"),
		Go.str("Tamil"),
		Go.str("Tangut"),
		Go.str("Telugu"),
		Go.str("Thaana"),
		Go.str("Thai"),
		Go.str("Tibetan"),
		Go.str("Tifinagh"),
		Go.str("Tirhuta"),
		Go.str("Ugaritic"),
		Go.str("Vai"),
		Go.str("Wancho"),
		Go.str("Warang_Citi"),
		Go.str("Yezidi"),
		Go.str("Yi"),
		Go.str("Zanabazar_Square")
	];
	@:privateAccess x._values = [
		adlam, ahom, anatolian_Hieroglyphs, arabic, armenian, avestan, balinese, bamum, bassa_Vah, batak, bengali, bhaiksuki, bopomofo, brahmi, braille,
		buginese, buhid, canadian_Aboriginal, carian, caucasian_Albanian, chakma, cham, cherokee, chorasmian, common, coptic, cuneiform, cypriot, cyrillic,
		deseret, devanagari, dives_Akuru, dogra, duployan, egyptian_Hieroglyphs, elbasan, elymaic, ethiopic, georgian, glagolitic, gothic, grantha, greek,
		gujarati, gunjala_Gondi, gurmukhi, han, hangul, hanifi_Rohingya, hanunoo, hatran, hebrew, hiragana, imperial_Aramaic, inherited,
		inscriptional_Pahlavi, inscriptional_Parthian, javanese, kaithi, kannada, katakana, kayah_Li, kharoshthi, khitan_Small_Script, khmer, khojki,
		khudawadi, lao, latin, lepcha, limbu, linear_A, linear_B, lisu, lycian, lydian, mahajani, makasar, malayalam, mandaic, manichaean, marchen,
		masaram_Gondi, medefaidrin, meetei_Mayek, mende_Kikakui, meroitic_Cursive, meroitic_Hieroglyphs, miao, modi, mongolian, mro, multani, myanmar,
		nabataean, nandinagari, new_Tai_Lue, newa, nko, nushu, nyiakeng_Puachue_Hmong, ogham, ol_Chiki, old_Hungarian, old_Italic, old_North_Arabian,
		old_Permic, old_Persian, old_Sogdian, old_South_Arabian, old_Turkic, oriya, osage, osmanya, pahawh_Hmong, palmyrene, pau_Cin_Hau, phags_Pa,
		phoenician, psalter_Pahlavi, rejang, runic, samaritan, saurashtra, sharada, shavian, siddham, signWriting, sinhala, sogdian, sora_Sompeng, soyombo,
		sundanese, syloti_Nagri, syriac, tagalog, tagbanwa, tai_Le, tai_Tham, tai_Viet, takri, tamil, tangut, telugu, thaana, thai, tibetan, tifinagh,
		tirhuta, ugaritic, vai, wancho, warang_Citi, yezidi, yi, zanabazar_Square
	];
	x;
};

private var __ASCII_Hex_Digit:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((48 : GoUInt16), (57 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((65 : GoUInt16), (70 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((97 : GoUInt16), (102 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>), latinOffset: (3 : GoInt)} : RangeTable) : Ref<RangeTable>);

private var __Bidi_Control:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((1564 : GoUInt16), (8206 : GoUInt16), (6642 : GoUInt16)) : Range16),
	(new Range16((8207 : GoUInt16), (8234 : GoUInt16), (27 : GoUInt16)) : Range16),
	(new Range16((8235 : GoUInt16), (8238 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((8294 : GoUInt16), (8297 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Dash:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((45 : GoUInt16), (1418 : GoUInt16), (1373 : GoUInt16)) : Range16),
		(new Range16((1470 : GoUInt16), (5120 : GoUInt16), (3650 : GoUInt16)) : Range16),
		(new Range16((6150 : GoUInt16), (8208 : GoUInt16), (2058 : GoUInt16)) : Range16),
		(new Range16((8209 : GoUInt16), (8213 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8275 : GoUInt16), (8315 : GoUInt16), (40 : GoUInt16)) : Range16),
		(new Range16((8331 : GoUInt16), (8722 : GoUInt16), (391 : GoUInt16)) : Range16),
		(new Range16((11799 : GoUInt16), (11802 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((11834 : GoUInt16), (11835 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11840 : GoUInt16), (12316 : GoUInt16), (476 : GoUInt16)) : Range16),
		(new Range16((12336 : GoUInt16), (12448 : GoUInt16), (112 : GoUInt16)) : Range16),
		(new Range16((65073 : GoUInt16), (65074 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65112 : GoUInt16), (65123 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((65293 : GoUInt16), (65293 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("69293" : GoUInt32), ("69293" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Deprecated:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((329 : GoUInt16), (1651 : GoUInt16), (1322 : GoUInt16)) : Range16),
	(new Range16((3959 : GoUInt16), (3961 : GoUInt16), (2 : GoUInt16)) : Range16),
	(new Range16((6051 : GoUInt16), (6052 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((8298 : GoUInt16), (8303 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((9001 : GoUInt16), (9002 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("917505" : GoUInt32), ("917505" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Diacritic:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((94 : GoUInt16), (96 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((168 : GoUInt16), (175 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((180 : GoUInt16), (183 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((184 : GoUInt16), (688 : GoUInt16), (504 : GoUInt16)) : Range16),
		(new Range16((689 : GoUInt16), (846 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((848 : GoUInt16), (855 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((861 : GoUInt16), (866 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((884 : GoUInt16), (885 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((890 : GoUInt16), (900 : GoUInt16), (10 : GoUInt16)) : Range16),
		(new Range16((901 : GoUInt16), (1155 : GoUInt16), (254 : GoUInt16)) : Range16),
		(new Range16((1156 : GoUInt16), (1159 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1369 : GoUInt16), (1425 : GoUInt16), (56 : GoUInt16)) : Range16),
		(new Range16((1426 : GoUInt16), (1441 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1443 : GoUInt16), (1469 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1471 : GoUInt16), (1473 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1474 : GoUInt16), (1476 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1611 : GoUInt16), (1618 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1623 : GoUInt16), (1624 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1759 : GoUInt16), (1760 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1765 : GoUInt16), (1766 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1770 : GoUInt16), (1772 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1840 : GoUInt16), (1866 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1958 : GoUInt16), (1968 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2027 : GoUInt16), (2037 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2072 : GoUInt16), (2073 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2275 : GoUInt16), (2302 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2364 : GoUInt16), (2381 : GoUInt16), (17 : GoUInt16)) : Range16),
		(new Range16((2385 : GoUInt16), (2388 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2417 : GoUInt16), (2492 : GoUInt16), (75 : GoUInt16)) : Range16),
		(new Range16((2509 : GoUInt16), (2620 : GoUInt16), (111 : GoUInt16)) : Range16),
		(new Range16((2637 : GoUInt16), (2748 : GoUInt16), (111 : GoUInt16)) : Range16),
		(new Range16((2765 : GoUInt16), (2813 : GoUInt16), (48 : GoUInt16)) : Range16),
		(new Range16((2814 : GoUInt16), (2815 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2876 : GoUInt16), (2893 : GoUInt16), (17 : GoUInt16)) : Range16),
		(new Range16((2901 : GoUInt16), (3021 : GoUInt16), (120 : GoUInt16)) : Range16),
		(new Range16((3149 : GoUInt16), (3260 : GoUInt16), (111 : GoUInt16)) : Range16),
		(new Range16((3277 : GoUInt16), (3387 : GoUInt16), (110 : GoUInt16)) : Range16),
		(new Range16((3388 : GoUInt16), (3405 : GoUInt16), (17 : GoUInt16)) : Range16),
		(new Range16((3530 : GoUInt16), (3655 : GoUInt16), (125 : GoUInt16)) : Range16),
		(new Range16((3656 : GoUInt16), (3660 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3662 : GoUInt16), (3770 : GoUInt16), (108 : GoUInt16)) : Range16),
		(new Range16((3784 : GoUInt16), (3788 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3864 : GoUInt16), (3865 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3893 : GoUInt16), (3897 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3902 : GoUInt16), (3903 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3970 : GoUInt16), (3972 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3974 : GoUInt16), (3975 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4038 : GoUInt16), (4151 : GoUInt16), (113 : GoUInt16)) : Range16),
		(new Range16((4153 : GoUInt16), (4154 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4195 : GoUInt16), (4196 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4201 : GoUInt16), (4205 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4231 : GoUInt16), (4237 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4239 : GoUInt16), (4250 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((4251 : GoUInt16), (4957 : GoUInt16), (706 : GoUInt16)) : Range16),
		(new Range16((4958 : GoUInt16), (4959 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6089 : GoUInt16), (6099 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6109 : GoUInt16), (6457 : GoUInt16), (348 : GoUInt16)) : Range16),
		(new Range16((6458 : GoUInt16), (6459 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6773 : GoUInt16), (6780 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6783 : GoUInt16), (6832 : GoUInt16), (49 : GoUInt16)) : Range16),
		(new Range16((6833 : GoUInt16), (6845 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6964 : GoUInt16), (6980 : GoUInt16), (16 : GoUInt16)) : Range16),
		(new Range16((7019 : GoUInt16), (7027 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7082 : GoUInt16), (7083 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7222 : GoUInt16), (7223 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7288 : GoUInt16), (7293 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7376 : GoUInt16), (7400 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7405 : GoUInt16), (7412 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((7415 : GoUInt16), (7417 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7468 : GoUInt16), (7530 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7620 : GoUInt16), (7631 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7669 : GoUInt16), (7673 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7677 : GoUInt16), (7679 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8125 : GoUInt16), (8127 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8128 : GoUInt16), (8129 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8141 : GoUInt16), (8143 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8157 : GoUInt16), (8159 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8173 : GoUInt16), (8175 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8189 : GoUInt16), (8190 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11503 : GoUInt16), (11505 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11823 : GoUInt16), (12330 : GoUInt16), (507 : GoUInt16)) : Range16),
		(new Range16((12331 : GoUInt16), (12335 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12441 : GoUInt16), (12444 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12540 : GoUInt16), (42607 : GoUInt16), (30067 : GoUInt16)) : Range16),
		(new Range16((42620 : GoUInt16), (42621 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42623 : GoUInt16), (42652 : GoUInt16), (29 : GoUInt16)) : Range16),
		(new Range16((42653 : GoUInt16), (42736 : GoUInt16), (83 : GoUInt16)) : Range16),
		(new Range16((42737 : GoUInt16), (42752 : GoUInt16), (15 : GoUInt16)) : Range16),
		(new Range16((42753 : GoUInt16), (42785 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42888 : GoUInt16), (42890 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43000 : GoUInt16), (43001 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43204 : GoUInt16), (43232 : GoUInt16), (28 : GoUInt16)) : Range16),
		(new Range16((43233 : GoUInt16), (43249 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43307 : GoUInt16), (43310 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43347 : GoUInt16), (43443 : GoUInt16), (96 : GoUInt16)) : Range16),
		(new Range16((43456 : GoUInt16), (43493 : GoUInt16), (37 : GoUInt16)) : Range16),
		(new Range16((43643 : GoUInt16), (43645 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43711 : GoUInt16), (43714 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43766 : GoUInt16), (43867 : GoUInt16), (101 : GoUInt16)) : Range16),
		(new Range16((43868 : GoUInt16), (43871 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43881 : GoUInt16), (43883 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((44012 : GoUInt16), (44013 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64286 : GoUInt16), (65056 : GoUInt16), (770 : GoUInt16)) : Range16),
		(new Range16((65057 : GoUInt16), (65071 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65342 : GoUInt16), (65344 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((65392 : GoUInt16), (65438 : GoUInt16), (46 : GoUInt16)) : Range16),
		(new Range16((65439 : GoUInt16), (65507 : GoUInt16), (68 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("66272" : GoUInt32), ("68325" : GoUInt32), ("2053" : GoUInt32)) : Range32),
		(new Range32(("68326" : GoUInt32), ("68898" : GoUInt32), ("572" : GoUInt32)) : Range32),
		(new Range32(("68899" : GoUInt32), ("68903" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69446" : GoUInt32), ("69456" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69817" : GoUInt32), ("69818" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69939" : GoUInt32), ("69940" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70003" : GoUInt32), ("70080" : GoUInt32), ("77" : GoUInt32)) : Range32),
		(new Range32(("70090" : GoUInt32), ("70092" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70197" : GoUInt32), ("70198" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70377" : GoUInt32), ("70378" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70460" : GoUInt32), ("70477" : GoUInt32), ("17" : GoUInt32)) : Range32),
		(new Range32(("70502" : GoUInt32), ("70508" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70512" : GoUInt32), ("70516" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70722" : GoUInt32), ("70726" : GoUInt32), ("4" : GoUInt32)) : Range32),
		(new Range32(("70850" : GoUInt32), ("70851" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71103" : GoUInt32), ("71104" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71231" : GoUInt32), ("71350" : GoUInt32), ("119" : GoUInt32)) : Range32),
		(new Range32(("71351" : GoUInt32), ("71467" : GoUInt32), ("116" : GoUInt32)) : Range32),
		(new Range32(("71737" : GoUInt32), ("71738" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71997" : GoUInt32), ("71998" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72003" : GoUInt32), ("72160" : GoUInt32), ("157" : GoUInt32)) : Range32),
		(new Range32(("72244" : GoUInt32), ("72263" : GoUInt32), ("19" : GoUInt32)) : Range32),
		(new Range32(("72345" : GoUInt32), ("72767" : GoUInt32), ("422" : GoUInt32)) : Range32),
		(new Range32(("73026" : GoUInt32), ("73028" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("73029" : GoUInt32), ("73111" : GoUInt32), ("82" : GoUInt32)) : Range32),
		(new Range32(("92912" : GoUInt32), ("92916" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92976" : GoUInt32), ("92982" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94095" : GoUInt32), ("94111" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94192" : GoUInt32), ("94193" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119143" : GoUInt32), ("119145" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119149" : GoUInt32), ("119154" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119163" : GoUInt32), ("119170" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119173" : GoUInt32), ("119179" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119210" : GoUInt32), ("119213" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123184" : GoUInt32), ("123190" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("123628" : GoUInt32), ("123631" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125136" : GoUInt32), ("125142" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125252" : GoUInt32), ("125254" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125256" : GoUInt32), ("125258" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (3 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Extender:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((183 : GoUInt16), (720 : GoUInt16), (537 : GoUInt16)) : Range16),
		(new Range16((721 : GoUInt16), (1600 : GoUInt16), (879 : GoUInt16)) : Range16),
		(new Range16((2042 : GoUInt16), (2901 : GoUInt16), (859 : GoUInt16)) : Range16),
		(new Range16((3654 : GoUInt16), (3782 : GoUInt16), (128 : GoUInt16)) : Range16),
		(new Range16((6154 : GoUInt16), (6211 : GoUInt16), (57 : GoUInt16)) : Range16),
		(new Range16((6823 : GoUInt16), (7222 : GoUInt16), (399 : GoUInt16)) : Range16),
		(new Range16((7291 : GoUInt16), (12293 : GoUInt16), (5002 : GoUInt16)) : Range16),
		(new Range16((12337 : GoUInt16), (12341 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12445 : GoUInt16), (12446 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12540 : GoUInt16), (12542 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((40981 : GoUInt16), (42508 : GoUInt16), (1527 : GoUInt16)) : Range16),
		(new Range16((43471 : GoUInt16), (43494 : GoUInt16), (23 : GoUInt16)) : Range16),
		(new Range16((43632 : GoUInt16), (43741 : GoUInt16), (109 : GoUInt16)) : Range16),
		(new Range16((43763 : GoUInt16), (43764 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65392 : GoUInt16), (65392 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("70493" : GoUInt32), ("71110" : GoUInt32), ("617" : GoUInt32)) : Range32),
		(new Range32(("71111" : GoUInt32), ("71112" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72344" : GoUInt32), ("92994" : GoUInt32), ("20650" : GoUInt32)) : Range32),
		(new Range32(("92995" : GoUInt32), ("94176" : GoUInt32), ("1181" : GoUInt32)) : Range32),
		(new Range32(("94177" : GoUInt32), ("94179" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("123196" : GoUInt32), ("123197" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125252" : GoUInt32), ("125254" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Hex_Digit:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((48 : GoUInt16), (57 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((65 : GoUInt16), (70 : GoUInt16), (1 : GoUInt16)) : Range16), (new Range16((97 : GoUInt16), (102 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((65296 : GoUInt16), (65305 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((65313 : GoUInt16), (65318 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((65345 : GoUInt16), (65350 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), latinOffset: (3 : GoInt)} : RangeTable) : Ref<RangeTable>);

private var __Hyphen:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((45 : GoUInt16), (173 : GoUInt16), (128 : GoUInt16)) : Range16),
	(new Range16((1418 : GoUInt16), (6150 : GoUInt16), (4732 : GoUInt16)) : Range16),
	(new Range16((8208 : GoUInt16), (8209 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((11799 : GoUInt16), (12539 : GoUInt16), (740 : GoUInt16)) : Range16),
	(new Range16((65123 : GoUInt16), (65293 : GoUInt16), (170 : GoUInt16)) : Range16),
	(new Range16((65381 : GoUInt16), (65381 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), latinOffset: (1 : GoInt)} : RangeTable) : Ref<RangeTable>);

private var __IDS_Binary_Operator:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((12272 : GoUInt16), (12273 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((12276 : GoUInt16), (12283 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __IDS_Trinary_Operator:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((12274 : GoUInt16), (12275 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Ideographic:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((12294 : GoUInt16), (12295 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12321 : GoUInt16), (12329 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12344 : GoUInt16), (12346 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((13312 : GoUInt16), (19903 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((19968 : GoUInt16), (40956 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((63744 : GoUInt16), (64109 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64112 : GoUInt16), (64217 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("94180" : GoUInt32), ("94208" : GoUInt32), ("28" : GoUInt32)) : Range32),
		(new Range32(("94209" : GoUInt32), ("100343" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("100352" : GoUInt32), ("101589" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("101632" : GoUInt32), ("101640" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("110960" : GoUInt32), ("111355" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("131072" : GoUInt32), ("173789" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("173824" : GoUInt32), ("177972" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("177984" : GoUInt32), ("178205" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("178208" : GoUInt32), ("183969" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("183984" : GoUInt32), ("191456" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("194560" : GoUInt32), ("195101" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("196608" : GoUInt32), ("201546" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Join_Control:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((8204 : GoUInt16), (8205 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Logical_Order_Exception:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((3648 : GoUInt16), (3652 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((3776 : GoUInt16), (3780 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6581 : GoUInt16), (6583 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6586 : GoUInt16), (43701 : GoUInt16), (37115 : GoUInt16)) : Range16),
	(new Range16((43702 : GoUInt16), (43705 : GoUInt16), (3 : GoUInt16)) : Range16),
	(new Range16((43707 : GoUInt16), (43708 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Noncharacter_Code_Point:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((64976 : GoUInt16), (65007 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65534 : GoUInt16), (65535 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("131070" : GoUInt32), ("131071" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("196606" : GoUInt32), ("196607" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("262142" : GoUInt32), ("262143" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("327678" : GoUInt32), ("327679" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("393214" : GoUInt32), ("393215" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("458750" : GoUInt32), ("458751" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("524286" : GoUInt32), ("524287" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("589822" : GoUInt32), ("589823" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("655358" : GoUInt32), ("655359" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("720894" : GoUInt32), ("720895" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("786430" : GoUInt32), ("786431" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("851966" : GoUInt32), ("851967" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("917502" : GoUInt32), ("917503" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("983038" : GoUInt32), ("983039" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("1048574" : GoUInt32), ("1048575" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("1114110" : GoUInt32), ("1114111" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Other_Alphabetic:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((837 : GoUInt16), (1456 : GoUInt16), (619 : GoUInt16)) : Range16),
		(new Range16((1457 : GoUInt16), (1469 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1471 : GoUInt16), (1473 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1474 : GoUInt16), (1476 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1477 : GoUInt16), (1479 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1552 : GoUInt16), (1562 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1611 : GoUInt16), (1623 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1625 : GoUInt16), (1631 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1648 : GoUInt16), (1750 : GoUInt16), (102 : GoUInt16)) : Range16),
		(new Range16((1751 : GoUInt16), (1756 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1761 : GoUInt16), (1764 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1767 : GoUInt16), (1768 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1773 : GoUInt16), (1809 : GoUInt16), (36 : GoUInt16)) : Range16),
		(new Range16((1840 : GoUInt16), (1855 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1958 : GoUInt16), (1968 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2070 : GoUInt16), (2071 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2075 : GoUInt16), (2083 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2085 : GoUInt16), (2087 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2089 : GoUInt16), (2092 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2260 : GoUInt16), (2271 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2275 : GoUInt16), (2281 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2288 : GoUInt16), (2307 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2362 : GoUInt16), (2363 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2366 : GoUInt16), (2380 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2382 : GoUInt16), (2383 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2389 : GoUInt16), (2391 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2402 : GoUInt16), (2403 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2433 : GoUInt16), (2435 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2494 : GoUInt16), (2500 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2503 : GoUInt16), (2504 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2507 : GoUInt16), (2508 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2519 : GoUInt16), (2530 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((2531 : GoUInt16), (2561 : GoUInt16), (30 : GoUInt16)) : Range16),
		(new Range16((2562 : GoUInt16), (2563 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2622 : GoUInt16), (2626 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2631 : GoUInt16), (2632 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2635 : GoUInt16), (2636 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2641 : GoUInt16), (2672 : GoUInt16), (31 : GoUInt16)) : Range16),
		(new Range16((2673 : GoUInt16), (2677 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((2689 : GoUInt16), (2691 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2750 : GoUInt16), (2757 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2759 : GoUInt16), (2761 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2763 : GoUInt16), (2764 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2786 : GoUInt16), (2787 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2810 : GoUInt16), (2812 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2817 : GoUInt16), (2819 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2878 : GoUInt16), (2884 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2887 : GoUInt16), (2888 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2891 : GoUInt16), (2892 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2902 : GoUInt16), (2903 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2914 : GoUInt16), (2915 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2946 : GoUInt16), (3006 : GoUInt16), (60 : GoUInt16)) : Range16),
		(new Range16((3007 : GoUInt16), (3010 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3014 : GoUInt16), (3016 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3018 : GoUInt16), (3020 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3031 : GoUInt16), (3072 : GoUInt16), (41 : GoUInt16)) : Range16),
		(new Range16((3073 : GoUInt16), (3075 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3134 : GoUInt16), (3140 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3142 : GoUInt16), (3144 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3146 : GoUInt16), (3148 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3157 : GoUInt16), (3158 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3170 : GoUInt16), (3171 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3201 : GoUInt16), (3203 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3262 : GoUInt16), (3268 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3270 : GoUInt16), (3272 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3274 : GoUInt16), (3276 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3285 : GoUInt16), (3286 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3298 : GoUInt16), (3299 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3328 : GoUInt16), (3331 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3390 : GoUInt16), (3396 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3398 : GoUInt16), (3400 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3402 : GoUInt16), (3404 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3415 : GoUInt16), (3426 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((3427 : GoUInt16), (3457 : GoUInt16), (30 : GoUInt16)) : Range16),
		(new Range16((3458 : GoUInt16), (3459 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3535 : GoUInt16), (3540 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3542 : GoUInt16), (3544 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((3545 : GoUInt16), (3551 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3570 : GoUInt16), (3571 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3633 : GoUInt16), (3636 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((3637 : GoUInt16), (3642 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3661 : GoUInt16), (3761 : GoUInt16), (100 : GoUInt16)) : Range16),
		(new Range16((3764 : GoUInt16), (3769 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3771 : GoUInt16), (3772 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3789 : GoUInt16), (3953 : GoUInt16), (164 : GoUInt16)) : Range16),
		(new Range16((3954 : GoUInt16), (3969 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3981 : GoUInt16), (3991 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((3993 : GoUInt16), (4028 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4139 : GoUInt16), (4150 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4152 : GoUInt16), (4155 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((4156 : GoUInt16), (4158 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4182 : GoUInt16), (4185 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4190 : GoUInt16), (4192 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4194 : GoUInt16), (4196 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4199 : GoUInt16), (4205 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4209 : GoUInt16), (4212 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4226 : GoUInt16), (4237 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4239 : GoUInt16), (4250 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((4251 : GoUInt16), (4253 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5906 : GoUInt16), (5907 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5938 : GoUInt16), (5939 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5970 : GoUInt16), (5971 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6002 : GoUInt16), (6003 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6070 : GoUInt16), (6088 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6277 : GoUInt16), (6278 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6313 : GoUInt16), (6432 : GoUInt16), (119 : GoUInt16)) : Range16),
		(new Range16((6433 : GoUInt16), (6443 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6448 : GoUInt16), (6456 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6679 : GoUInt16), (6683 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6741 : GoUInt16), (6750 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6753 : GoUInt16), (6772 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6847 : GoUInt16), (6848 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6912 : GoUInt16), (6916 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6965 : GoUInt16), (6979 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7040 : GoUInt16), (7042 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7073 : GoUInt16), (7081 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7084 : GoUInt16), (7085 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7143 : GoUInt16), (7153 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7204 : GoUInt16), (7222 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7655 : GoUInt16), (7668 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9398 : GoUInt16), (9449 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11744 : GoUInt16), (11775 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42612 : GoUInt16), (42619 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42654 : GoUInt16), (42655 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43010 : GoUInt16), (43019 : GoUInt16), (9 : GoUInt16)) : Range16),
		(new Range16((43043 : GoUInt16), (43047 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43136 : GoUInt16), (43137 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43188 : GoUInt16), (43203 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43205 : GoUInt16), (43263 : GoUInt16), (58 : GoUInt16)) : Range16),
		(new Range16((43302 : GoUInt16), (43306 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43335 : GoUInt16), (43346 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43392 : GoUInt16), (43395 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43444 : GoUInt16), (43455 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43493 : GoUInt16), (43561 : GoUInt16), (68 : GoUInt16)) : Range16),
		(new Range16((43562 : GoUInt16), (43574 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43587 : GoUInt16), (43596 : GoUInt16), (9 : GoUInt16)) : Range16),
		(new Range16((43597 : GoUInt16), (43643 : GoUInt16), (46 : GoUInt16)) : Range16),
		(new Range16((43644 : GoUInt16), (43645 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43696 : GoUInt16), (43698 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((43699 : GoUInt16), (43700 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43703 : GoUInt16), (43704 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43710 : GoUInt16), (43755 : GoUInt16), (45 : GoUInt16)) : Range16),
		(new Range16((43756 : GoUInt16), (43759 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43765 : GoUInt16), (44003 : GoUInt16), (238 : GoUInt16)) : Range16),
		(new Range16((44004 : GoUInt16), (44010 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((64286 : GoUInt16), (64286 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("66422" : GoUInt32), ("66426" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68097" : GoUInt32), ("68099" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68101" : GoUInt32), ("68102" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68108" : GoUInt32), ("68111" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68900" : GoUInt32), ("68903" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69291" : GoUInt32), ("69292" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69632" : GoUInt32), ("69634" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69688" : GoUInt32), ("69701" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69762" : GoUInt32), ("69808" : GoUInt32), ("46" : GoUInt32)) : Range32),
		(new Range32(("69809" : GoUInt32), ("69816" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69888" : GoUInt32), ("69890" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69927" : GoUInt32), ("69938" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69957" : GoUInt32), ("69958" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70016" : GoUInt32), ("70018" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70067" : GoUInt32), ("70079" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70094" : GoUInt32), ("70095" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70188" : GoUInt32), ("70196" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70199" : GoUInt32), ("70206" : GoUInt32), ("7" : GoUInt32)) : Range32),
		(new Range32(("70367" : GoUInt32), ("70376" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70400" : GoUInt32), ("70403" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70462" : GoUInt32), ("70468" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70471" : GoUInt32), ("70472" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70475" : GoUInt32), ("70476" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70487" : GoUInt32), ("70498" : GoUInt32), ("11" : GoUInt32)) : Range32),
		(new Range32(("70499" : GoUInt32), ("70709" : GoUInt32), ("210" : GoUInt32)) : Range32),
		(new Range32(("70710" : GoUInt32), ("70721" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70723" : GoUInt32), ("70725" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70832" : GoUInt32), ("70849" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71087" : GoUInt32), ("71093" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71096" : GoUInt32), ("71102" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71132" : GoUInt32), ("71133" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71216" : GoUInt32), ("71230" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71232" : GoUInt32), ("71339" : GoUInt32), ("107" : GoUInt32)) : Range32),
		(new Range32(("71340" : GoUInt32), ("71349" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71453" : GoUInt32), ("71466" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71724" : GoUInt32), ("71736" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71984" : GoUInt32), ("71989" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71991" : GoUInt32), ("71992" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71995" : GoUInt32), ("71996" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72000" : GoUInt32), ("72002" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("72145" : GoUInt32), ("72151" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72154" : GoUInt32), ("72159" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72164" : GoUInt32), ("72193" : GoUInt32), ("29" : GoUInt32)) : Range32),
		(new Range32(("72194" : GoUInt32), ("72202" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72245" : GoUInt32), ("72249" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72251" : GoUInt32), ("72254" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72273" : GoUInt32), ("72283" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72330" : GoUInt32), ("72343" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72751" : GoUInt32), ("72758" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72760" : GoUInt32), ("72766" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72850" : GoUInt32), ("72871" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72873" : GoUInt32), ("72886" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73009" : GoUInt32), ("73014" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73018" : GoUInt32), ("73020" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("73021" : GoUInt32), ("73023" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("73024" : GoUInt32), ("73025" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73027" : GoUInt32), ("73031" : GoUInt32), ("4" : GoUInt32)) : Range32),
		(new Range32(("73098" : GoUInt32), ("73102" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73104" : GoUInt32), ("73105" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73107" : GoUInt32), ("73110" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73459" : GoUInt32), ("73462" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94031" : GoUInt32), ("94033" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("94034" : GoUInt32), ("94087" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94095" : GoUInt32), ("94098" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("94192" : GoUInt32), ("94193" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("113822" : GoUInt32), ("122880" : GoUInt32), ("9058" : GoUInt32)) : Range32),
		(new Range32(("122881" : GoUInt32), ("122886" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122888" : GoUInt32), ("122904" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122907" : GoUInt32), ("122913" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122915" : GoUInt32), ("122916" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("122918" : GoUInt32), ("122922" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125255" : GoUInt32), ("127280" : GoUInt32), ("2025" : GoUInt32)) : Range32),
		(new Range32(("127281" : GoUInt32), ("127305" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127312" : GoUInt32), ("127337" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127344" : GoUInt32), ("127369" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Other_Default_Ignorable_Code_Point:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((847 : GoUInt16), (4447 : GoUInt16), (3600 : GoUInt16)) : Range16),
	(new Range16((4448 : GoUInt16), (6068 : GoUInt16), (1620 : GoUInt16)) : Range16),
	(new Range16((6069 : GoUInt16), (8293 : GoUInt16), (2224 : GoUInt16)) : Range16),
	(new Range16((12644 : GoUInt16), (65440 : GoUInt16), (52796 : GoUInt16)) : Range16),
	(new Range16((65520 : GoUInt16), (65528 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("917504" : GoUInt32), ("917506" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("917507" : GoUInt32), ("917535" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("917632" : GoUInt32), ("917759" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("918000" : GoUInt32), ("921599" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Other_Grapheme_Extend:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((2494 : GoUInt16), (2519 : GoUInt16), (25 : GoUInt16)) : Range16),
		(new Range16((2878 : GoUInt16), (2903 : GoUInt16), (25 : GoUInt16)) : Range16),
		(new Range16((3006 : GoUInt16), (3031 : GoUInt16), (25 : GoUInt16)) : Range16),
		(new Range16((3266 : GoUInt16), (3285 : GoUInt16), (19 : GoUInt16)) : Range16),
		(new Range16((3286 : GoUInt16), (3390 : GoUInt16), (104 : GoUInt16)) : Range16),
		(new Range16((3415 : GoUInt16), (3535 : GoUInt16), (120 : GoUInt16)) : Range16),
		(new Range16((3551 : GoUInt16), (6965 : GoUInt16), (3414 : GoUInt16)) : Range16),
		(new Range16((8204 : GoUInt16), (12334 : GoUInt16), (4130 : GoUInt16)) : Range16),
		(new Range16((12335 : GoUInt16), (65438 : GoUInt16), (53103 : GoUInt16)) : Range16),
		(new Range16((65439 : GoUInt16), (65439 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("70462" : GoUInt32), ("70487" : GoUInt32), ("25" : GoUInt32)) : Range32),
		(new Range32(("70832" : GoUInt32), ("70845" : GoUInt32), ("13" : GoUInt32)) : Range32),
		(new Range32(("71087" : GoUInt32), ("71984" : GoUInt32), ("897" : GoUInt32)) : Range32),
		(new Range32(("119141" : GoUInt32), ("119150" : GoUInt32), ("9" : GoUInt32)) : Range32),
		(new Range32(("119151" : GoUInt32), ("119154" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("917536" : GoUInt32), ("917631" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Other_ID_Continue:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((183 : GoUInt16), (903 : GoUInt16), (720 : GoUInt16)) : Range16),
	(new Range16((4969 : GoUInt16), (4977 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((6618 : GoUInt16), (6618 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Other_ID_Start:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((6277 : GoUInt16), (6278 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((8472 : GoUInt16), (8494 : GoUInt16), (22 : GoUInt16)) : Range16),
	(new Range16((12443 : GoUInt16), (12444 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Other_Lowercase:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((170 : GoUInt16), (186 : GoUInt16), (16 : GoUInt16)) : Range16),
		(new Range16((688 : GoUInt16), (696 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((704 : GoUInt16), (705 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((736 : GoUInt16), (740 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((837 : GoUInt16), (890 : GoUInt16), (53 : GoUInt16)) : Range16),
		(new Range16((7468 : GoUInt16), (7530 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7544 : GoUInt16), (7579 : GoUInt16), (35 : GoUInt16)) : Range16),
		(new Range16((7580 : GoUInt16), (7615 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8305 : GoUInt16), (8319 : GoUInt16), (14 : GoUInt16)) : Range16),
		(new Range16((8336 : GoUInt16), (8348 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8560 : GoUInt16), (8575 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9424 : GoUInt16), (9449 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11388 : GoUInt16), (11389 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42652 : GoUInt16), (42653 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42864 : GoUInt16), (43000 : GoUInt16), (136 : GoUInt16)) : Range16),
		(new Range16((43001 : GoUInt16), (43868 : GoUInt16), (867 : GoUInt16)) : Range16),
		(new Range16((43869 : GoUInt16), (43871 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	latinOffset: (1 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Other_Math:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((94 : GoUInt16), (976 : GoUInt16), (882 : GoUInt16)) : Range16),
		(new Range16((977 : GoUInt16), (978 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((981 : GoUInt16), (1008 : GoUInt16), (27 : GoUInt16)) : Range16),
		(new Range16((1009 : GoUInt16), (1012 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((1013 : GoUInt16), (8214 : GoUInt16), (7201 : GoUInt16)) : Range16),
		(new Range16((8242 : GoUInt16), (8244 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8256 : GoUInt16), (8289 : GoUInt16), (33 : GoUInt16)) : Range16),
		(new Range16((8290 : GoUInt16), (8292 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8317 : GoUInt16), (8318 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8333 : GoUInt16), (8334 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8400 : GoUInt16), (8412 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8417 : GoUInt16), (8421 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((8422 : GoUInt16), (8427 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((8428 : GoUInt16), (8431 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8450 : GoUInt16), (8455 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((8458 : GoUInt16), (8467 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8469 : GoUInt16), (8473 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((8474 : GoUInt16), (8477 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8484 : GoUInt16), (8488 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((8489 : GoUInt16), (8492 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((8493 : GoUInt16), (8495 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8496 : GoUInt16), (8497 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8499 : GoUInt16), (8504 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8508 : GoUInt16), (8511 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8517 : GoUInt16), (8521 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8597 : GoUInt16), (8601 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8604 : GoUInt16), (8607 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8609 : GoUInt16), (8610 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8612 : GoUInt16), (8613 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8615 : GoUInt16), (8617 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8618 : GoUInt16), (8621 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8624 : GoUInt16), (8625 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8630 : GoUInt16), (8631 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8636 : GoUInt16), (8653 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8656 : GoUInt16), (8657 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8659 : GoUInt16), (8661 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8662 : GoUInt16), (8667 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8669 : GoUInt16), (8676 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((8677 : GoUInt16), (8968 : GoUInt16), (291 : GoUInt16)) : Range16),
		(new Range16((8969 : GoUInt16), (8971 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9140 : GoUInt16), (9141 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9143 : GoUInt16), (9168 : GoUInt16), (25 : GoUInt16)) : Range16),
		(new Range16((9186 : GoUInt16), (9632 : GoUInt16), (446 : GoUInt16)) : Range16),
		(new Range16((9633 : GoUInt16), (9646 : GoUInt16), (13 : GoUInt16)) : Range16),
		(new Range16((9647 : GoUInt16), (9654 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9660 : GoUInt16), (9664 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9670 : GoUInt16), (9671 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9674 : GoUInt16), (9675 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9679 : GoUInt16), (9683 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9698 : GoUInt16), (9700 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((9703 : GoUInt16), (9708 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9733 : GoUInt16), (9734 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9792 : GoUInt16), (9794 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((9824 : GoUInt16), (9827 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9837 : GoUInt16), (9838 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10181 : GoUInt16), (10182 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10214 : GoUInt16), (10223 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10627 : GoUInt16), (10648 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10712 : GoUInt16), (10715 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10748 : GoUInt16), (10749 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65121 : GoUInt16), (65123 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((65128 : GoUInt16), (65340 : GoUInt16), (212 : GoUInt16)) : Range16),
		(new Range16((65342 : GoUInt16), (65342 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("119808" : GoUInt32), ("119892" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119894" : GoUInt32), ("119964" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119966" : GoUInt32), ("119967" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119970" : GoUInt32), ("119973" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("119974" : GoUInt32), ("119977" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("119978" : GoUInt32), ("119980" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119982" : GoUInt32), ("119993" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119995" : GoUInt32), ("119997" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("119998" : GoUInt32), ("120003" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120005" : GoUInt32), ("120069" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120071" : GoUInt32), ("120074" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120077" : GoUInt32), ("120084" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120086" : GoUInt32), ("120092" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120094" : GoUInt32), ("120121" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120123" : GoUInt32), ("120126" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120128" : GoUInt32), ("120132" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120134" : GoUInt32), ("120138" : GoUInt32), ("4" : GoUInt32)) : Range32),
		(new Range32(("120139" : GoUInt32), ("120144" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120146" : GoUInt32), ("120485" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120488" : GoUInt32), ("120512" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120514" : GoUInt32), ("120538" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120540" : GoUInt32), ("120570" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120572" : GoUInt32), ("120596" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120598" : GoUInt32), ("120628" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120630" : GoUInt32), ("120654" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120656" : GoUInt32), ("120686" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120688" : GoUInt32), ("120712" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120714" : GoUInt32), ("120744" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120746" : GoUInt32), ("120770" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120772" : GoUInt32), ("120779" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120782" : GoUInt32), ("120831" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126464" : GoUInt32), ("126467" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126469" : GoUInt32), ("126495" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126497" : GoUInt32), ("126498" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126500" : GoUInt32), ("126503" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("126505" : GoUInt32), ("126514" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126516" : GoUInt32), ("126519" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126521" : GoUInt32), ("126523" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126530" : GoUInt32), ("126535" : GoUInt32), ("5" : GoUInt32)) : Range32),
		(new Range32(("126537" : GoUInt32), ("126541" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126542" : GoUInt32), ("126543" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126545" : GoUInt32), ("126546" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126548" : GoUInt32), ("126551" : GoUInt32), ("3" : GoUInt32)) : Range32),
		(new Range32(("126553" : GoUInt32), ("126561" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126562" : GoUInt32), ("126564" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126567" : GoUInt32), ("126570" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126572" : GoUInt32), ("126578" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126580" : GoUInt32), ("126583" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126585" : GoUInt32), ("126588" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126590" : GoUInt32), ("126592" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("126593" : GoUInt32), ("126601" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126603" : GoUInt32), ("126619" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126625" : GoUInt32), ("126627" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126629" : GoUInt32), ("126633" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("126635" : GoUInt32), ("126651" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)
} : RangeTable) : Ref<RangeTable>);

private var __Other_Uppercase:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((8544 : GoUInt16), (8559 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((9398 : GoUInt16), (9423 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("127280" : GoUInt32), ("127305" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127312" : GoUInt32), ("127337" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("127344" : GoUInt32), ("127369" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Pattern_Syntax:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((33 : GoUInt16), (47 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((58 : GoUInt16), (64 : GoUInt16), (1 : GoUInt16)) : Range16), (new Range16((91 : GoUInt16), (94 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((96 : GoUInt16), (123 : GoUInt16), (27 : GoUInt16)) : Range16),
		(new Range16((124 : GoUInt16), (126 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((161 : GoUInt16), (167 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((169 : GoUInt16), (171 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((172 : GoUInt16), (176 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((177 : GoUInt16), (187 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((191 : GoUInt16), (215 : GoUInt16), (24 : GoUInt16)) : Range16),
		(new Range16((247 : GoUInt16), (8208 : GoUInt16), (7961 : GoUInt16)) : Range16),
		(new Range16((8209 : GoUInt16), (8231 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8240 : GoUInt16), (8254 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8257 : GoUInt16), (8275 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8277 : GoUInt16), (8286 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8592 : GoUInt16), (9311 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((9472 : GoUInt16), (10101 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((10132 : GoUInt16), (11263 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11776 : GoUInt16), (11903 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12289 : GoUInt16), (12291 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12296 : GoUInt16), (12320 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12336 : GoUInt16), (64830 : GoUInt16), (52494 : GoUInt16)) : Range16),
		(new Range16((64831 : GoUInt16), (65093 : GoUInt16), (262 : GoUInt16)) : Range16),
		(new Range16((65094 : GoUInt16), (65094 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	latinOffset: (10 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Pattern_White_Space:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((9 : GoUInt16), (13 : GoUInt16), (1 : GoUInt16)) : Range16), (new Range16((32 : GoUInt16), (133 : GoUInt16), (101 : GoUInt16)) : Range16),
	(new Range16((8206 : GoUInt16), (8207 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((8232 : GoUInt16), (8233 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), latinOffset: (2 : GoInt)} : RangeTable) : Ref<RangeTable>);

private var __Prepended_Concatenation_Mark:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((1536 : GoUInt16), (1541 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((1757 : GoUInt16), (1807 : GoUInt16), (50 : GoUInt16)) : Range16),
	(new Range16((2274 : GoUInt16), (2274 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("69821" : GoUInt32), ("69837" : GoUInt32), ("16" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Quotation_Mark:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((34 : GoUInt16), (39 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((171 : GoUInt16), (187 : GoUInt16), (16 : GoUInt16)) : Range16),
		(new Range16((8216 : GoUInt16), (8223 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8249 : GoUInt16), (8250 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11842 : GoUInt16), (12300 : GoUInt16), (458 : GoUInt16)) : Range16),
		(new Range16((12301 : GoUInt16), (12303 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12317 : GoUInt16), (12319 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65089 : GoUInt16), (65092 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65282 : GoUInt16), (65287 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((65378 : GoUInt16), (65379 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	latinOffset: (2 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Radical:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((11904 : GoUInt16), (11929 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((11931 : GoUInt16), (12019 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((12032 : GoUInt16), (12245 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var __Regional_Indicator:Ref<RangeTable> = (({r16: (new Slice<Range16>(0,
	0) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("127462" : GoUInt32), ("127487" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Sentence_Terminal:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((33 : GoUInt16), (46 : GoUInt16), (13 : GoUInt16)) : Range16),
		(new Range16((63 : GoUInt16), (1417 : GoUInt16), (1354 : GoUInt16)) : Range16),
		(new Range16((1566 : GoUInt16), (1567 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1748 : GoUInt16), (1792 : GoUInt16), (44 : GoUInt16)) : Range16),
		(new Range16((1793 : GoUInt16), (1794 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2041 : GoUInt16), (2103 : GoUInt16), (62 : GoUInt16)) : Range16),
		(new Range16((2105 : GoUInt16), (2109 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((2110 : GoUInt16), (2404 : GoUInt16), (294 : GoUInt16)) : Range16),
		(new Range16((2405 : GoUInt16), (4170 : GoUInt16), (1765 : GoUInt16)) : Range16),
		(new Range16((4171 : GoUInt16), (4962 : GoUInt16), (791 : GoUInt16)) : Range16),
		(new Range16((4967 : GoUInt16), (4968 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5742 : GoUInt16), (5941 : GoUInt16), (199 : GoUInt16)) : Range16),
		(new Range16((5942 : GoUInt16), (6147 : GoUInt16), (205 : GoUInt16)) : Range16),
		(new Range16((6153 : GoUInt16), (6468 : GoUInt16), (315 : GoUInt16)) : Range16),
		(new Range16((6469 : GoUInt16), (6824 : GoUInt16), (355 : GoUInt16)) : Range16),
		(new Range16((6825 : GoUInt16), (6827 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7002 : GoUInt16), (7003 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7006 : GoUInt16), (7007 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7227 : GoUInt16), (7228 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7294 : GoUInt16), (7295 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8252 : GoUInt16), (8253 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8263 : GoUInt16), (8265 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11822 : GoUInt16), (11836 : GoUInt16), (14 : GoUInt16)) : Range16),
		(new Range16((12290 : GoUInt16), (42239 : GoUInt16), (29949 : GoUInt16)) : Range16),
		(new Range16((42510 : GoUInt16), (42511 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42739 : GoUInt16), (42743 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((43126 : GoUInt16), (43127 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43214 : GoUInt16), (43215 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43311 : GoUInt16), (43464 : GoUInt16), (153 : GoUInt16)) : Range16),
		(new Range16((43465 : GoUInt16), (43613 : GoUInt16), (148 : GoUInt16)) : Range16),
		(new Range16((43614 : GoUInt16), (43615 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43760 : GoUInt16), (43761 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((44011 : GoUInt16), (65106 : GoUInt16), (21095 : GoUInt16)) : Range16),
		(new Range16((65110 : GoUInt16), (65111 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65281 : GoUInt16), (65294 : GoUInt16), (13 : GoUInt16)) : Range16),
		(new Range16((65311 : GoUInt16), (65377 : GoUInt16), (66 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("68182" : GoUInt32), ("68183" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69461" : GoUInt32), ("69465" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69703" : GoUInt32), ("69704" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69822" : GoUInt32), ("69825" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69953" : GoUInt32), ("69955" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70085" : GoUInt32), ("70086" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70093" : GoUInt32), ("70110" : GoUInt32), ("17" : GoUInt32)) : Range32),
		(new Range32(("70111" : GoUInt32), ("70200" : GoUInt32), ("89" : GoUInt32)) : Range32),
		(new Range32(("70201" : GoUInt32), ("70203" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("70204" : GoUInt32), ("70313" : GoUInt32), ("109" : GoUInt32)) : Range32),
		(new Range32(("70731" : GoUInt32), ("70732" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71106" : GoUInt32), ("71107" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71113" : GoUInt32), ("71127" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71233" : GoUInt32), ("71234" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71484" : GoUInt32), ("71486" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72004" : GoUInt32), ("72006" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("72258" : GoUInt32), ("72259" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72347" : GoUInt32), ("72348" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72769" : GoUInt32), ("72770" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("73463" : GoUInt32), ("73464" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92782" : GoUInt32), ("92783" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92917" : GoUInt32), ("92983" : GoUInt32), ("66" : GoUInt32)) : Range32),
		(new Range32(("92984" : GoUInt32), ("92996" : GoUInt32), ("12" : GoUInt32)) : Range32),
		(new Range32(("93848" : GoUInt32), ("113823" : GoUInt32), ("19975" : GoUInt32)) : Range32),
		(new Range32(("121480" : GoUInt32), ("121480" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (1 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Soft_Dotted:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((105 : GoUInt16), (106 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((303 : GoUInt16), (585 : GoUInt16), (282 : GoUInt16)) : Range16),
		(new Range16((616 : GoUInt16), (669 : GoUInt16), (53 : GoUInt16)) : Range16),
		(new Range16((690 : GoUInt16), (1011 : GoUInt16), (321 : GoUInt16)) : Range16),
		(new Range16((1110 : GoUInt16), (1112 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((7522 : GoUInt16), (7574 : GoUInt16), (52 : GoUInt16)) : Range16),
		(new Range16((7588 : GoUInt16), (7592 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((7725 : GoUInt16), (7883 : GoUInt16), (158 : GoUInt16)) : Range16),
		(new Range16((8305 : GoUInt16), (8520 : GoUInt16), (215 : GoUInt16)) : Range16),
		(new Range16((8521 : GoUInt16), (11388 : GoUInt16), (2867 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("119842" : GoUInt32), ("119843" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119894" : GoUInt32), ("119895" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119946" : GoUInt32), ("119947" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("119998" : GoUInt32), ("119999" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120050" : GoUInt32), ("120051" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120102" : GoUInt32), ("120103" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120154" : GoUInt32), ("120155" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120206" : GoUInt32), ("120207" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120258" : GoUInt32), ("120259" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120310" : GoUInt32), ("120311" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120362" : GoUInt32), ("120363" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120414" : GoUInt32), ("120415" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("120466" : GoUInt32), ("120467" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (1 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Terminal_Punctuation:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((33 : GoUInt16), (44 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((46 : GoUInt16), (58 : GoUInt16), (12 : GoUInt16)) : Range16), (new Range16((59 : GoUInt16), (63 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((894 : GoUInt16), (903 : GoUInt16), (9 : GoUInt16)) : Range16),
		(new Range16((1417 : GoUInt16), (1475 : GoUInt16), (58 : GoUInt16)) : Range16),
		(new Range16((1548 : GoUInt16), (1563 : GoUInt16), (15 : GoUInt16)) : Range16),
		(new Range16((1566 : GoUInt16), (1567 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1748 : GoUInt16), (1792 : GoUInt16), (44 : GoUInt16)) : Range16),
		(new Range16((1793 : GoUInt16), (1802 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1804 : GoUInt16), (2040 : GoUInt16), (236 : GoUInt16)) : Range16),
		(new Range16((2041 : GoUInt16), (2096 : GoUInt16), (55 : GoUInt16)) : Range16),
		(new Range16((2097 : GoUInt16), (2110 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((2142 : GoUInt16), (2404 : GoUInt16), (262 : GoUInt16)) : Range16),
		(new Range16((2405 : GoUInt16), (3674 : GoUInt16), (1269 : GoUInt16)) : Range16),
		(new Range16((3675 : GoUInt16), (3848 : GoUInt16), (173 : GoUInt16)) : Range16),
		(new Range16((3853 : GoUInt16), (3858 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4170 : GoUInt16), (4171 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4961 : GoUInt16), (4968 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5742 : GoUInt16), (5867 : GoUInt16), (125 : GoUInt16)) : Range16),
		(new Range16((5868 : GoUInt16), (5869 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5941 : GoUInt16), (5942 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6100 : GoUInt16), (6102 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6106 : GoUInt16), (6146 : GoUInt16), (40 : GoUInt16)) : Range16),
		(new Range16((6147 : GoUInt16), (6149 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6152 : GoUInt16), (6153 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6468 : GoUInt16), (6469 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((6824 : GoUInt16), (6827 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7002 : GoUInt16), (7003 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7005 : GoUInt16), (7007 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7227 : GoUInt16), (7231 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7294 : GoUInt16), (7295 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8252 : GoUInt16), (8253 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8263 : GoUInt16), (8265 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11822 : GoUInt16), (11836 : GoUInt16), (14 : GoUInt16)) : Range16),
		(new Range16((11841 : GoUInt16), (11852 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((11854 : GoUInt16), (11855 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((12289 : GoUInt16), (12290 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42238 : GoUInt16), (42239 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42509 : GoUInt16), (42511 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42739 : GoUInt16), (42743 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43126 : GoUInt16), (43127 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43214 : GoUInt16), (43215 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43311 : GoUInt16), (43463 : GoUInt16), (152 : GoUInt16)) : Range16),
		(new Range16((43464 : GoUInt16), (43465 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43613 : GoUInt16), (43615 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((43743 : GoUInt16), (43760 : GoUInt16), (17 : GoUInt16)) : Range16),
		(new Range16((43761 : GoUInt16), (44011 : GoUInt16), (250 : GoUInt16)) : Range16),
		(new Range16((65104 : GoUInt16), (65106 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65108 : GoUInt16), (65111 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65281 : GoUInt16), (65292 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((65294 : GoUInt16), (65306 : GoUInt16), (12 : GoUInt16)) : Range16),
		(new Range16((65307 : GoUInt16), (65311 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((65377 : GoUInt16), (65380 : GoUInt16), (3 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("66463" : GoUInt32), ("66512" : GoUInt32), ("49" : GoUInt32)) : Range32),
		(new Range32(("67671" : GoUInt32), ("67871" : GoUInt32), ("200" : GoUInt32)) : Range32),
		(new Range32(("68182" : GoUInt32), ("68183" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68336" : GoUInt32), ("68341" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68410" : GoUInt32), ("68415" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68505" : GoUInt32), ("68508" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69461" : GoUInt32), ("69465" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69703" : GoUInt32), ("69709" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69822" : GoUInt32), ("69825" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("69953" : GoUInt32), ("69955" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70085" : GoUInt32), ("70086" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70093" : GoUInt32), ("70110" : GoUInt32), ("17" : GoUInt32)) : Range32),
		(new Range32(("70111" : GoUInt32), ("70200" : GoUInt32), ("89" : GoUInt32)) : Range32),
		(new Range32(("70201" : GoUInt32), ("70204" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70313" : GoUInt32), ("70731" : GoUInt32), ("418" : GoUInt32)) : Range32),
		(new Range32(("70732" : GoUInt32), ("70733" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("70746" : GoUInt32), ("70747" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71106" : GoUInt32), ("71109" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71113" : GoUInt32), ("71127" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71233" : GoUInt32), ("71234" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71484" : GoUInt32), ("71486" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72004" : GoUInt32), ("72006" : GoUInt32), ("2" : GoUInt32)) : Range32),
		(new Range32(("72258" : GoUInt32), ("72259" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72347" : GoUInt32), ("72348" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72353" : GoUInt32), ("72354" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72769" : GoUInt32), ("72771" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("72817" : GoUInt32), ("73463" : GoUInt32), ("646" : GoUInt32)) : Range32),
		(new Range32(("73464" : GoUInt32), ("74864" : GoUInt32), ("1400" : GoUInt32)) : Range32),
		(new Range32(("74865" : GoUInt32), ("74868" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92782" : GoUInt32), ("92783" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92917" : GoUInt32), ("92983" : GoUInt32), ("66" : GoUInt32)) : Range32),
		(new Range32(("92984" : GoUInt32), ("92985" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("92996" : GoUInt32), ("93847" : GoUInt32), ("851" : GoUInt32)) : Range32),
		(new Range32(("93848" : GoUInt32), ("113823" : GoUInt32), ("19975" : GoUInt32)) : Range32),
		(new Range32(("121479" : GoUInt32), ("121482" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (3 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var __Unified_Ideograph:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((13312 : GoUInt16), (19903 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((19968 : GoUInt16), (40956 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((64014 : GoUInt16), (64015 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((64017 : GoUInt16), (64019 : GoUInt16), (2 : GoUInt16)) : Range16),
	(new Range16((64020 : GoUInt16), (64031 : GoUInt16), (11 : GoUInt16)) : Range16),
	(new Range16((64033 : GoUInt16), (64035 : GoUInt16), (2 : GoUInt16)) : Range16),
	(new Range16((64036 : GoUInt16), (64039 : GoUInt16), (3 : GoUInt16)) : Range16),
	(new Range16((64040 : GoUInt16), (64041 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("131072" : GoUInt32), ("173789" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("173824" : GoUInt32), ("177972" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("177984" : GoUInt32), ("178205" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("178208" : GoUInt32), ("183969" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("183984" : GoUInt32), ("191456" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("196608" : GoUInt32), ("201546" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __Variation_Selector:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((6155 : GoUInt16), (6157 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((65024 : GoUInt16), (65039 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), r32: (new Slice<Range32>(0, 0,
		(new Range32(("917760" : GoUInt32), ("917999" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>)} : RangeTable) : Ref<RangeTable>);

private var __White_Space:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((9 : GoUInt16), (13 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((32 : GoUInt16), (133 : GoUInt16), (101 : GoUInt16)) : Range16),
	(new Range16((160 : GoUInt16), (5760 : GoUInt16), (5600 : GoUInt16)) : Range16),
	(new Range16((8192 : GoUInt16), (8202 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((8232 : GoUInt16), (8233 : GoUInt16), (1 : GoUInt16)) : Range16),
	(new Range16((8239 : GoUInt16), (8287 : GoUInt16), (48 : GoUInt16)) : Range16),
	(new Range16((12288 : GoUInt16), (12288 : GoUInt16),
		(1 : GoUInt16)) : Range16)) : Slice<Range16>), latinOffset: (2 : GoInt)} : RangeTable) : Ref<RangeTable>);

/**
	// ASCII_Hex_Digit is the set of Unicode characters with property ASCII_Hex_Digit.// These variables have type *RangeTable.
**/
var ascii_Hex_Digit:Ref<RangeTable> = __ASCII_Hex_Digit;

/**
	// Bidi_Control is the set of Unicode characters with property Bidi_Control.// These variables have type *RangeTable.
**/
var bidi_Control:Ref<RangeTable> = __Bidi_Control;

/**
	// Dash is the set of Unicode characters with property Dash.// These variables have type *RangeTable.
**/
var dash:Ref<RangeTable> = __Dash;

/**
	// Deprecated is the set of Unicode characters with property Deprecated.// These variables have type *RangeTable.
**/
var deprecated:Ref<RangeTable> = __Deprecated;

/**
	// Diacritic is the set of Unicode characters with property Diacritic.// These variables have type *RangeTable.
**/
var diacritic:Ref<RangeTable> = __Diacritic;

/**
	// Extender is the set of Unicode characters with property Extender.// These variables have type *RangeTable.
**/
var extender:Ref<RangeTable> = __Extender;

/**
	// Hex_Digit is the set of Unicode characters with property Hex_Digit.// These variables have type *RangeTable.
**/
var hex_Digit:Ref<RangeTable> = __Hex_Digit;

/**
	// Hyphen is the set of Unicode characters with property Hyphen.// These variables have type *RangeTable.
**/
var hyphen:Ref<RangeTable> = __Hyphen;

/**
	// IDS_Binary_Operator is the set of Unicode characters with property IDS_Binary_Operator.// These variables have type *RangeTable.
**/
var ids_Binary_Operator:Ref<RangeTable> = __IDS_Binary_Operator;

/**
	// IDS_Trinary_Operator is the set of Unicode characters with property IDS_Trinary_Operator.// These variables have type *RangeTable.
**/
var ids_Trinary_Operator:Ref<RangeTable> = __IDS_Trinary_Operator;

/**
	// Ideographic is the set of Unicode characters with property Ideographic.// These variables have type *RangeTable.
**/
var ideographic:Ref<RangeTable> = __Ideographic;

/**
	// Join_Control is the set of Unicode characters with property Join_Control.// These variables have type *RangeTable.
**/
var join_Control:Ref<RangeTable> = __Join_Control;

/**
	// Logical_Order_Exception is the set of Unicode characters with property Logical_Order_Exception.// These variables have type *RangeTable.
**/
var logical_Order_Exception:Ref<RangeTable> = __Logical_Order_Exception;

/**
	// Noncharacter_Code_Point is the set of Unicode characters with property Noncharacter_Code_Point.// These variables have type *RangeTable.
**/
var noncharacter_Code_Point:Ref<RangeTable> = __Noncharacter_Code_Point;

/**
	// Other_Alphabetic is the set of Unicode characters with property Other_Alphabetic.// These variables have type *RangeTable.
**/
var other_Alphabetic:Ref<RangeTable> = __Other_Alphabetic;

/**
	// Other_Default_Ignorable_Code_Point is the set of Unicode characters with property Other_Default_Ignorable_Code_Point.// These variables have type *RangeTable.
**/
var other_Default_Ignorable_Code_Point:Ref<RangeTable> = __Other_Default_Ignorable_Code_Point;

/**
	// Other_Grapheme_Extend is the set of Unicode characters with property Other_Grapheme_Extend.// These variables have type *RangeTable.
**/
var other_Grapheme_Extend:Ref<RangeTable> = __Other_Grapheme_Extend;

/**
	// Other_ID_Continue is the set of Unicode characters with property Other_ID_Continue.// These variables have type *RangeTable.
**/
var other_ID_Continue:Ref<RangeTable> = __Other_ID_Continue;

/**
	// Other_ID_Start is the set of Unicode characters with property Other_ID_Start.// These variables have type *RangeTable.
**/
var other_ID_Start:Ref<RangeTable> = __Other_ID_Start;

/**
	// Other_Lowercase is the set of Unicode characters with property Other_Lowercase.// These variables have type *RangeTable.
**/
var other_Lowercase:Ref<RangeTable> = __Other_Lowercase;

/**
	// Other_Math is the set of Unicode characters with property Other_Math.// These variables have type *RangeTable.
**/
var other_Math:Ref<RangeTable> = __Other_Math;

/**
	// Other_Uppercase is the set of Unicode characters with property Other_Uppercase.// These variables have type *RangeTable.
**/
var other_Uppercase:Ref<RangeTable> = __Other_Uppercase;

/**
	// Pattern_Syntax is the set of Unicode characters with property Pattern_Syntax.// These variables have type *RangeTable.
**/
var pattern_Syntax:Ref<RangeTable> = __Pattern_Syntax;

/**
	// Pattern_White_Space is the set of Unicode characters with property Pattern_White_Space.// These variables have type *RangeTable.
**/
var pattern_White_Space:Ref<RangeTable> = __Pattern_White_Space;

/**
	// Prepended_Concatenation_Mark is the set of Unicode characters with property Prepended_Concatenation_Mark.// These variables have type *RangeTable.
**/
var prepended_Concatenation_Mark:Ref<RangeTable> = __Prepended_Concatenation_Mark;

/**
	// Quotation_Mark is the set of Unicode characters with property Quotation_Mark.// These variables have type *RangeTable.
**/
var quotation_Mark:Ref<RangeTable> = __Quotation_Mark;

/**
	// Radical is the set of Unicode characters with property Radical.// These variables have type *RangeTable.
**/
var radical:Ref<RangeTable> = __Radical;

/**
	// Regional_Indicator is the set of Unicode characters with property Regional_Indicator.// These variables have type *RangeTable.
**/
var regional_Indicator:Ref<RangeTable> = __Regional_Indicator;

/**
	// STerm is an alias for Sentence_Terminal.// These variables have type *RangeTable.
**/
var sterm:Ref<RangeTable> = __Sentence_Terminal;

/**
	// Sentence_Terminal is the set of Unicode characters with property Sentence_Terminal.// These variables have type *RangeTable.
**/
var sentence_Terminal:Ref<RangeTable> = __Sentence_Terminal;

/**
	// Soft_Dotted is the set of Unicode characters with property Soft_Dotted.// These variables have type *RangeTable.
**/
var soft_Dotted:Ref<RangeTable> = __Soft_Dotted;

/**
	// Terminal_Punctuation is the set of Unicode characters with property Terminal_Punctuation.// These variables have type *RangeTable.
**/
var terminal_Punctuation:Ref<RangeTable> = __Terminal_Punctuation;

/**
	// Unified_Ideograph is the set of Unicode characters with property Unified_Ideograph.// These variables have type *RangeTable.
**/
var unified_Ideograph:Ref<RangeTable> = __Unified_Ideograph;

/**
	// Variation_Selector is the set of Unicode characters with property Variation_Selector.// These variables have type *RangeTable.
**/
var variation_Selector:Ref<RangeTable> = __Variation_Selector;

/**
	// White_Space is the set of Unicode characters with property White_Space.// These variables have type *RangeTable.
**/
var white_Space:Ref<RangeTable> = __White_Space;

/**
	// Properties is the set of Unicode property tables.
**/
var properties:GoMap<GoString, Ref<RangeTable>> = {
	final x = new stdgo.GoMap.GoObjectMap<GoString, Ref<RangeTable>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType({get: () ->
		stdgo.reflect.Reflect.GoType.basic(string_kind)},
		{get: () -> stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("RangeTable", [], stdgo.reflect.Reflect.GoType.structType([
			{
				name: "r16",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.sliceType({get: () -> stdgo.reflect.Reflect.GoType.named("Range16", [],
					stdgo.reflect.Reflect.GoType.structType([
						{
							name: "lo",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
						},
						{
							name: "hi",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
						},
						{
							name: "stride",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
						}
					]))})
			},
			{
				name: "r32",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.sliceType({get: () -> stdgo.reflect.Reflect.GoType.named("Range32", [],
					stdgo.reflect.Reflect.GoType.structType([
						{
							name: "lo",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
						},
						{
							name: "hi",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
						},
						{
							name: "stride",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
						}
					]))})
			},
			{
				name: "latinOffset",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(int_kind)
			}
		])))})));
	@:privateAccess x._keys = [
		Go.str("ASCII_Hex_Digit"),
		Go.str("Bidi_Control"),
		Go.str("Dash"),
		Go.str("Deprecated"),
		Go.str("Diacritic"),
		Go.str("Extender"),
		Go.str("Hex_Digit"),
		Go.str("Hyphen"),
		Go.str("IDS_Binary_Operator"),
		Go.str("IDS_Trinary_Operator"),
		Go.str("Ideographic"),
		Go.str("Join_Control"),
		Go.str("Logical_Order_Exception"),
		Go.str("Noncharacter_Code_Point"),
		Go.str("Other_Alphabetic"),
		Go.str("Other_Default_Ignorable_Code_Point"),
		Go.str("Other_Grapheme_Extend"),
		Go.str("Other_ID_Continue"),
		Go.str("Other_ID_Start"),
		Go.str("Other_Lowercase"),
		Go.str("Other_Math"),
		Go.str("Other_Uppercase"),
		Go.str("Pattern_Syntax"),
		Go.str("Pattern_White_Space"),
		Go.str("Prepended_Concatenation_Mark"),
		Go.str("Quotation_Mark"),
		Go.str("Radical"),
		Go.str("Regional_Indicator"),
		Go.str("Sentence_Terminal"),
		Go.str("STerm"),
		Go.str("Soft_Dotted"),
		Go.str("Terminal_Punctuation"),
		Go.str("Unified_Ideograph"),
		Go.str("Variation_Selector"),
		Go.str("White_Space")
	];
	@:privateAccess x._values = [
		ascii_Hex_Digit,
		bidi_Control,
		dash,
		deprecated,
		diacritic,
		extender,
		hex_Digit,
		hyphen,
		ids_Binary_Operator,
		ids_Trinary_Operator,
		ideographic,
		join_Control,
		logical_Order_Exception,
		noncharacter_Code_Point,
		other_Alphabetic,
		other_Default_Ignorable_Code_Point,
		other_Grapheme_Extend,
		other_ID_Continue,
		other_ID_Start,
		other_Lowercase,
		other_Math,
		other_Uppercase,
		pattern_Syntax,
		pattern_White_Space,
		prepended_Concatenation_Mark,
		quotation_Mark,
		radical,
		regional_Indicator,
		sentence_Terminal,
		sentence_Terminal,
		soft_Dotted,
		terminal_Punctuation,
		unified_Ideograph,
		variation_Selector,
		white_Space
	];
	x;
};

private var __CaseRanges:Slice<CaseRange> = (new Slice<CaseRange>(0, 0,
	(new CaseRange(("65" : GoUInt32), ("90" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("97" : GoUInt32), ("122" : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("181" : GoUInt32), ("181" : GoUInt32), (new GoArray<GoInt32>((743 : GoInt32), (0 : GoInt32), (743 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("192" : GoUInt32), ("214" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("216" : GoUInt32), ("222" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("224" : GoUInt32), ("246" : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("248" : GoUInt32), ("254" : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("255" : GoUInt32), ("255" : GoUInt32), (new GoArray<GoInt32>((121 : GoInt32), (0 : GoInt32), (121 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("256" : GoUInt32), ("303" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("304" : GoUInt32), ("304" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-199 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("305" : GoUInt32), ("305" : GoUInt32), (new GoArray<GoInt32>((-232 : GoInt32), (0 : GoInt32), (-232 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("306" : GoUInt32), ("311" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("313" : GoUInt32), ("328" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("330" : GoUInt32), ("375" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("376" : GoUInt32), ("376" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-121 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("377" : GoUInt32), ("382" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("383" : GoUInt32), ("383" : GoUInt32), (new GoArray<GoInt32>((-300 : GoInt32), (0 : GoInt32), (-300 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("384" : GoUInt32), ("384" : GoUInt32), (new GoArray<GoInt32>((195 : GoInt32), (0 : GoInt32), (195 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("385" : GoUInt32), ("385" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (210 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("386" : GoUInt32), ("389" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("390" : GoUInt32), ("390" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (206 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("391" : GoUInt32), ("392" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("393" : GoUInt32), ("394" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (205 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("395" : GoUInt32), ("396" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("398" : GoUInt32), ("398" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (79 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("399" : GoUInt32), ("399" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (202 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("400" : GoUInt32), ("400" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (203 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("401" : GoUInt32), ("402" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("403" : GoUInt32), ("403" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (205 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("404" : GoUInt32), ("404" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (207 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("405" : GoUInt32), ("405" : GoUInt32), (new GoArray<GoInt32>((97 : GoInt32), (0 : GoInt32), (97 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("406" : GoUInt32), ("406" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (211 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("407" : GoUInt32), ("407" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (209 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("408" : GoUInt32), ("409" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("410" : GoUInt32), ("410" : GoUInt32), (new GoArray<GoInt32>((163 : GoInt32), (0 : GoInt32), (163 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("412" : GoUInt32), ("412" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (211 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("413" : GoUInt32), ("413" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (213 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("414" : GoUInt32), ("414" : GoUInt32), (new GoArray<GoInt32>((130 : GoInt32), (0 : GoInt32), (130 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("415" : GoUInt32), ("415" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (214 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("416" : GoUInt32), ("421" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("422" : GoUInt32), ("422" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (218 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("423" : GoUInt32), ("424" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("425" : GoUInt32), ("425" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (218 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("428" : GoUInt32), ("429" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("430" : GoUInt32), ("430" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (218 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("431" : GoUInt32), ("432" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("433" : GoUInt32), ("434" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (217 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("435" : GoUInt32), ("438" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("439" : GoUInt32), ("439" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (219 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("440" : GoUInt32), ("441" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("444" : GoUInt32), ("445" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("447" : GoUInt32), ("447" : GoUInt32), (new GoArray<GoInt32>((56 : GoInt32), (0 : GoInt32), (56 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("452" : GoUInt32), ("452" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (2 : GoInt32), (1 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("453" : GoUInt32), ("453" : GoUInt32), (new GoArray<GoInt32>((-1 : GoInt32), (1 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("454" : GoUInt32), ("454" : GoUInt32), (new GoArray<GoInt32>((-2 : GoInt32), (0 : GoInt32), (-1 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("455" : GoUInt32), ("455" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (2 : GoInt32), (1 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("456" : GoUInt32), ("456" : GoUInt32), (new GoArray<GoInt32>((-1 : GoInt32), (1 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("457" : GoUInt32), ("457" : GoUInt32), (new GoArray<GoInt32>((-2 : GoInt32), (0 : GoInt32), (-1 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("458" : GoUInt32), ("458" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (2 : GoInt32), (1 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("459" : GoUInt32), ("459" : GoUInt32), (new GoArray<GoInt32>((-1 : GoInt32), (1 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("460" : GoUInt32), ("460" : GoUInt32), (new GoArray<GoInt32>((-2 : GoInt32), (0 : GoInt32), (-1 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("461" : GoUInt32), ("476" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("477" : GoUInt32), ("477" : GoUInt32), (new GoArray<GoInt32>((-79 : GoInt32), (0 : GoInt32), (-79 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("478" : GoUInt32), ("495" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("497" : GoUInt32), ("497" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (2 : GoInt32), (1 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("498" : GoUInt32), ("498" : GoUInt32), (new GoArray<GoInt32>((-1 : GoInt32), (1 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("499" : GoUInt32), ("499" : GoUInt32), (new GoArray<GoInt32>((-2 : GoInt32), (0 : GoInt32), (-1 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("500" : GoUInt32), ("501" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("502" : GoUInt32), ("502" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-97 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("503" : GoUInt32), ("503" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-56 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("504" : GoUInt32), ("543" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("544" : GoUInt32), ("544" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-130 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("546" : GoUInt32), ("563" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("570" : GoUInt32), ("570" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (10795 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("571" : GoUInt32), ("572" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("573" : GoUInt32), ("573" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-163 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("574" : GoUInt32), ("574" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (10792 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("575" : GoUInt32), ("576" : GoUInt32), (new GoArray<GoInt32>((10815 : GoInt32), (0 : GoInt32), (10815 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("577" : GoUInt32), ("578" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("579" : GoUInt32), ("579" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-195 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("580" : GoUInt32), ("580" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (69 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("581" : GoUInt32), ("581" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (71 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("582" : GoUInt32), ("591" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("592" : GoUInt32), ("592" : GoUInt32), (new GoArray<GoInt32>((10783 : GoInt32), (0 : GoInt32), (10783 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("593" : GoUInt32), ("593" : GoUInt32), (new GoArray<GoInt32>((10780 : GoInt32), (0 : GoInt32), (10780 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("594" : GoUInt32), ("594" : GoUInt32), (new GoArray<GoInt32>((10782 : GoInt32), (0 : GoInt32), (10782 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("595" : GoUInt32), ("595" : GoUInt32), (new GoArray<GoInt32>((-210 : GoInt32), (0 : GoInt32), (-210 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("596" : GoUInt32), ("596" : GoUInt32), (new GoArray<GoInt32>((-206 : GoInt32), (0 : GoInt32), (-206 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("598" : GoUInt32), ("599" : GoUInt32), (new GoArray<GoInt32>((-205 : GoInt32), (0 : GoInt32), (-205 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("601" : GoUInt32), ("601" : GoUInt32), (new GoArray<GoInt32>((-202 : GoInt32), (0 : GoInt32), (-202 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("603" : GoUInt32), ("603" : GoUInt32), (new GoArray<GoInt32>((-203 : GoInt32), (0 : GoInt32), (-203 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("604" : GoUInt32), ("604" : GoUInt32), (new GoArray<GoInt32>((42319 : GoInt32), (0 : GoInt32), (42319 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("608" : GoUInt32), ("608" : GoUInt32), (new GoArray<GoInt32>((-205 : GoInt32), (0 : GoInt32), (-205 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("609" : GoUInt32), ("609" : GoUInt32), (new GoArray<GoInt32>((42315 : GoInt32), (0 : GoInt32), (42315 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("611" : GoUInt32), ("611" : GoUInt32), (new GoArray<GoInt32>((-207 : GoInt32), (0 : GoInt32), (-207 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("613" : GoUInt32), ("613" : GoUInt32), (new GoArray<GoInt32>((42280 : GoInt32), (0 : GoInt32), (42280 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("614" : GoUInt32), ("614" : GoUInt32), (new GoArray<GoInt32>((42308 : GoInt32), (0 : GoInt32), (42308 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("616" : GoUInt32), ("616" : GoUInt32), (new GoArray<GoInt32>((-209 : GoInt32), (0 : GoInt32), (-209 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("617" : GoUInt32), ("617" : GoUInt32), (new GoArray<GoInt32>((-211 : GoInt32), (0 : GoInt32), (-211 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("618" : GoUInt32), ("618" : GoUInt32), (new GoArray<GoInt32>((42308 : GoInt32), (0 : GoInt32), (42308 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("619" : GoUInt32), ("619" : GoUInt32), (new GoArray<GoInt32>((10743 : GoInt32), (0 : GoInt32), (10743 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("620" : GoUInt32), ("620" : GoUInt32), (new GoArray<GoInt32>((42305 : GoInt32), (0 : GoInt32), (42305 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("623" : GoUInt32), ("623" : GoUInt32), (new GoArray<GoInt32>((-211 : GoInt32), (0 : GoInt32), (-211 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("625" : GoUInt32), ("625" : GoUInt32), (new GoArray<GoInt32>((10749 : GoInt32), (0 : GoInt32), (10749 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("626" : GoUInt32), ("626" : GoUInt32), (new GoArray<GoInt32>((-213 : GoInt32), (0 : GoInt32), (-213 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("629" : GoUInt32), ("629" : GoUInt32), (new GoArray<GoInt32>((-214 : GoInt32), (0 : GoInt32), (-214 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("637" : GoUInt32), ("637" : GoUInt32), (new GoArray<GoInt32>((10727 : GoInt32), (0 : GoInt32), (10727 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("640" : GoUInt32), ("640" : GoUInt32), (new GoArray<GoInt32>((-218 : GoInt32), (0 : GoInt32), (-218 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("642" : GoUInt32), ("642" : GoUInt32), (new GoArray<GoInt32>((42307 : GoInt32), (0 : GoInt32), (42307 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("643" : GoUInt32), ("643" : GoUInt32), (new GoArray<GoInt32>((-218 : GoInt32), (0 : GoInt32), (-218 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("647" : GoUInt32), ("647" : GoUInt32), (new GoArray<GoInt32>((42282 : GoInt32), (0 : GoInt32), (42282 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("648" : GoUInt32), ("648" : GoUInt32), (new GoArray<GoInt32>((-218 : GoInt32), (0 : GoInt32), (-218 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("649" : GoUInt32), ("649" : GoUInt32), (new GoArray<GoInt32>((-69 : GoInt32), (0 : GoInt32), (-69 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("650" : GoUInt32), ("651" : GoUInt32), (new GoArray<GoInt32>((-217 : GoInt32), (0 : GoInt32), (-217 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("652" : GoUInt32), ("652" : GoUInt32), (new GoArray<GoInt32>((-71 : GoInt32), (0 : GoInt32), (-71 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("658" : GoUInt32), ("658" : GoUInt32), (new GoArray<GoInt32>((-219 : GoInt32), (0 : GoInt32), (-219 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("669" : GoUInt32), ("669" : GoUInt32), (new GoArray<GoInt32>((42261 : GoInt32), (0 : GoInt32), (42261 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("670" : GoUInt32), ("670" : GoUInt32), (new GoArray<GoInt32>((42258 : GoInt32), (0 : GoInt32), (42258 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("837" : GoUInt32), ("837" : GoUInt32), (new GoArray<GoInt32>((84 : GoInt32), (0 : GoInt32), (84 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("880" : GoUInt32), ("883" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("886" : GoUInt32), ("887" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("891" : GoUInt32), ("893" : GoUInt32), (new GoArray<GoInt32>((130 : GoInt32), (0 : GoInt32), (130 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("895" : GoUInt32), ("895" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (116 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("902" : GoUInt32), ("902" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (38 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("904" : GoUInt32), ("906" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (37 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("908" : GoUInt32), ("908" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (64 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("910" : GoUInt32), ("911" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (63 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("913" : GoUInt32), ("929" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("931" : GoUInt32), ("939" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("940" : GoUInt32), ("940" : GoUInt32), (new GoArray<GoInt32>((-38 : GoInt32), (0 : GoInt32), (-38 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("941" : GoUInt32), ("943" : GoUInt32), (new GoArray<GoInt32>((-37 : GoInt32), (0 : GoInt32), (-37 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("945" : GoUInt32), ("961" : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("962" : GoUInt32), ("962" : GoUInt32), (new GoArray<GoInt32>((-31 : GoInt32), (0 : GoInt32), (-31 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("963" : GoUInt32), ("971" : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("972" : GoUInt32), ("972" : GoUInt32), (new GoArray<GoInt32>((-64 : GoInt32), (0 : GoInt32), (-64 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("973" : GoUInt32), ("974" : GoUInt32), (new GoArray<GoInt32>((-63 : GoInt32), (0 : GoInt32), (-63 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("975" : GoUInt32), ("975" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("976" : GoUInt32), ("976" : GoUInt32), (new GoArray<GoInt32>((-62 : GoInt32), (0 : GoInt32), (-62 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("977" : GoUInt32), ("977" : GoUInt32), (new GoArray<GoInt32>((-57 : GoInt32), (0 : GoInt32), (-57 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("981" : GoUInt32), ("981" : GoUInt32), (new GoArray<GoInt32>((-47 : GoInt32), (0 : GoInt32), (-47 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("982" : GoUInt32), ("982" : GoUInt32), (new GoArray<GoInt32>((-54 : GoInt32), (0 : GoInt32), (-54 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("983" : GoUInt32), ("983" : GoUInt32), (new GoArray<GoInt32>((-8 : GoInt32), (0 : GoInt32), (-8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("984" : GoUInt32), ("1007" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1008" : GoUInt32), ("1008" : GoUInt32), (new GoArray<GoInt32>((-86 : GoInt32), (0 : GoInt32), (-86 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1009" : GoUInt32), ("1009" : GoUInt32), (new GoArray<GoInt32>((-80 : GoInt32), (0 : GoInt32), (-80 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1010" : GoUInt32), ("1010" : GoUInt32), (new GoArray<GoInt32>((7 : GoInt32), (0 : GoInt32), (7 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1011" : GoUInt32), ("1011" : GoUInt32), (new GoArray<GoInt32>((-116 : GoInt32), (0 : GoInt32), (-116 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1012" : GoUInt32), ("1012" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-60 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1013" : GoUInt32), ("1013" : GoUInt32), (new GoArray<GoInt32>((-96 : GoInt32), (0 : GoInt32), (-96 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1015" : GoUInt32), ("1016" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1017" : GoUInt32), ("1017" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-7 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1018" : GoUInt32), ("1019" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1021" : GoUInt32), ("1023" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-130 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1024" : GoUInt32), ("1039" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (80 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1040" : GoUInt32), ("1071" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1072" : GoUInt32), ("1103" : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1104" : GoUInt32), ("1119" : GoUInt32), (new GoArray<GoInt32>((-80 : GoInt32), (0 : GoInt32), (-80 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1120" : GoUInt32), ("1153" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1162" : GoUInt32), ("1215" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1216" : GoUInt32), ("1216" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (15 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1217" : GoUInt32), ("1230" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1231" : GoUInt32), ("1231" : GoUInt32), (new GoArray<GoInt32>((-15 : GoInt32), (0 : GoInt32), (-15 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1232" : GoUInt32), ("1327" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1329" : GoUInt32), ("1366" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (48 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("1377" : GoUInt32), ("1414" : GoUInt32), (new GoArray<GoInt32>((-48 : GoInt32), (0 : GoInt32), (-48 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("4256" : GoUInt32), ("4293" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (7264 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("4295" : GoUInt32), ("4295" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (7264 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("4301" : GoUInt32), ("4301" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (7264 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("4304" : GoUInt32), ("4346" : GoUInt32), (new GoArray<GoInt32>((3008 : GoInt32), (0 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("4349" : GoUInt32), ("4351" : GoUInt32), (new GoArray<GoInt32>((3008 : GoInt32), (0 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("5024" : GoUInt32), ("5103" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (38864 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("5104" : GoUInt32), ("5109" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("5112" : GoUInt32), ("5117" : GoUInt32), (new GoArray<GoInt32>((-8 : GoInt32), (0 : GoInt32), (-8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7296" : GoUInt32), ("7296" : GoUInt32), (new GoArray<GoInt32>((-6254 : GoInt32), (0 : GoInt32), (-6254 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7297" : GoUInt32), ("7297" : GoUInt32), (new GoArray<GoInt32>((-6253 : GoInt32), (0 : GoInt32), (-6253 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7298" : GoUInt32), ("7298" : GoUInt32), (new GoArray<GoInt32>((-6244 : GoInt32), (0 : GoInt32), (-6244 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7299" : GoUInt32), ("7300" : GoUInt32), (new GoArray<GoInt32>((-6242 : GoInt32), (0 : GoInt32), (-6242 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7301" : GoUInt32), ("7301" : GoUInt32), (new GoArray<GoInt32>((-6243 : GoInt32), (0 : GoInt32), (-6243 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7302" : GoUInt32), ("7302" : GoUInt32), (new GoArray<GoInt32>((-6236 : GoInt32), (0 : GoInt32), (-6236 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7303" : GoUInt32), ("7303" : GoUInt32), (new GoArray<GoInt32>((-6181 : GoInt32), (0 : GoInt32), (-6181 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7304" : GoUInt32), ("7304" : GoUInt32), (new GoArray<GoInt32>((35266 : GoInt32), (0 : GoInt32), (35266 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7312" : GoUInt32), ("7354" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-3008 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7357" : GoUInt32), ("7359" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-3008 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7545" : GoUInt32), ("7545" : GoUInt32), (new GoArray<GoInt32>((35332 : GoInt32), (0 : GoInt32), (35332 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7549" : GoUInt32), ("7549" : GoUInt32), (new GoArray<GoInt32>((3814 : GoInt32), (0 : GoInt32), (3814 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7566" : GoUInt32), ("7566" : GoUInt32), (new GoArray<GoInt32>((35384 : GoInt32), (0 : GoInt32), (35384 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7680" : GoUInt32), ("7829" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7835" : GoUInt32), ("7835" : GoUInt32), (new GoArray<GoInt32>((-59 : GoInt32), (0 : GoInt32), (-59 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7838" : GoUInt32), ("7838" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-7615 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7840" : GoUInt32), ("7935" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7936" : GoUInt32), ("7943" : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7944" : GoUInt32), ("7951" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7952" : GoUInt32), ("7957" : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7960" : GoUInt32), ("7965" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7968" : GoUInt32), ("7975" : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7976" : GoUInt32), ("7983" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7984" : GoUInt32), ("7991" : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("7992" : GoUInt32), ("7999" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8000" : GoUInt32), ("8005" : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8008" : GoUInt32), ("8013" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8017" : GoUInt32), ("8017" : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8019" : GoUInt32), ("8019" : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8021" : GoUInt32), ("8021" : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8023" : GoUInt32), ("8023" : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8025" : GoUInt32), ("8025" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8027" : GoUInt32), ("8027" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8029" : GoUInt32), ("8029" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8031" : GoUInt32), ("8031" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8032" : GoUInt32), ("8039" : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8040" : GoUInt32), ("8047" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8048" : GoUInt32), ("8049" : GoUInt32), (new GoArray<GoInt32>((74 : GoInt32), (0 : GoInt32), (74 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8050" : GoUInt32), ("8053" : GoUInt32), (new GoArray<GoInt32>((86 : GoInt32), (0 : GoInt32), (86 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8054" : GoUInt32), ("8055" : GoUInt32), (new GoArray<GoInt32>((100 : GoInt32), (0 : GoInt32), (100 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8056" : GoUInt32), ("8057" : GoUInt32), (new GoArray<GoInt32>((128 : GoInt32), (0 : GoInt32), (128 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8058" : GoUInt32), ("8059" : GoUInt32), (new GoArray<GoInt32>((112 : GoInt32), (0 : GoInt32), (112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8060" : GoUInt32), ("8061" : GoUInt32), (new GoArray<GoInt32>((126 : GoInt32), (0 : GoInt32), (126 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8064" : GoUInt32), ("8071" : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8072" : GoUInt32), ("8079" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8080" : GoUInt32), ("8087" : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8088" : GoUInt32), ("8095" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8096" : GoUInt32), ("8103" : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8104" : GoUInt32), ("8111" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8112" : GoUInt32), ("8113" : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8115" : GoUInt32), ("8115" : GoUInt32), (new GoArray<GoInt32>((9 : GoInt32), (0 : GoInt32), (9 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8120" : GoUInt32), ("8121" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8122" : GoUInt32), ("8123" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-74 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8124" : GoUInt32), ("8124" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-9 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8126" : GoUInt32), ("8126" : GoUInt32), (new GoArray<GoInt32>((-7205 : GoInt32), (0 : GoInt32), (-7205 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8131" : GoUInt32), ("8131" : GoUInt32), (new GoArray<GoInt32>((9 : GoInt32), (0 : GoInt32), (9 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8136" : GoUInt32), ("8139" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-86 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8140" : GoUInt32), ("8140" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-9 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8144" : GoUInt32), ("8145" : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8152" : GoUInt32), ("8153" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8154" : GoUInt32), ("8155" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-100 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8160" : GoUInt32), ("8161" : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8165" : GoUInt32), ("8165" : GoUInt32), (new GoArray<GoInt32>((7 : GoInt32), (0 : GoInt32), (7 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8168" : GoUInt32), ("8169" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8170" : GoUInt32), ("8171" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-112 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8172" : GoUInt32), ("8172" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-7 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8179" : GoUInt32), ("8179" : GoUInt32), (new GoArray<GoInt32>((9 : GoInt32), (0 : GoInt32), (9 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8184" : GoUInt32), ("8185" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-128 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8186" : GoUInt32), ("8187" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-126 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8188" : GoUInt32), ("8188" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-9 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8486" : GoUInt32), ("8486" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-7517 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8490" : GoUInt32), ("8490" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8383 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8491" : GoUInt32), ("8491" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8262 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8498" : GoUInt32), ("8498" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (28 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8526" : GoUInt32), ("8526" : GoUInt32), (new GoArray<GoInt32>((-28 : GoInt32), (0 : GoInt32), (-28 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8544" : GoUInt32), ("8559" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (16 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8560" : GoUInt32), ("8575" : GoUInt32), (new GoArray<GoInt32>((-16 : GoInt32), (0 : GoInt32), (-16 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("8579" : GoUInt32), ("8580" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("9398" : GoUInt32), ("9423" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (26 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("9424" : GoUInt32), ("9449" : GoUInt32), (new GoArray<GoInt32>((-26 : GoInt32), (0 : GoInt32), (-26 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11264" : GoUInt32), ("11310" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (48 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11312" : GoUInt32), ("11358" : GoUInt32), (new GoArray<GoInt32>((-48 : GoInt32), (0 : GoInt32), (-48 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11360" : GoUInt32), ("11361" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11362" : GoUInt32), ("11362" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-10743 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11363" : GoUInt32), ("11363" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-3814 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11364" : GoUInt32), ("11364" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-10727 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11365" : GoUInt32), ("11365" : GoUInt32),
		(new GoArray<GoInt32>((-10795 : GoInt32), (0 : GoInt32), (-10795 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11366" : GoUInt32), ("11366" : GoUInt32),
		(new GoArray<GoInt32>((-10792 : GoInt32), (0 : GoInt32), (-10792 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11367" : GoUInt32), ("11372" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11373" : GoUInt32), ("11373" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-10780 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11374" : GoUInt32), ("11374" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-10749 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11375" : GoUInt32), ("11375" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-10783 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11376" : GoUInt32), ("11376" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-10782 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11378" : GoUInt32), ("11379" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11381" : GoUInt32), ("11382" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11390" : GoUInt32), ("11391" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-10815 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11392" : GoUInt32), ("11491" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11499" : GoUInt32), ("11502" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11506" : GoUInt32), ("11507" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11520" : GoUInt32), ("11557" : GoUInt32), (new GoArray<GoInt32>((-7264 : GoInt32), (0 : GoInt32), (-7264 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11559" : GoUInt32), ("11559" : GoUInt32), (new GoArray<GoInt32>((-7264 : GoInt32), (0 : GoInt32), (-7264 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("11565" : GoUInt32), ("11565" : GoUInt32), (new GoArray<GoInt32>((-7264 : GoInt32), (0 : GoInt32), (-7264 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42560" : GoUInt32), ("42605" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42624" : GoUInt32), ("42651" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42786" : GoUInt32), ("42799" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42802" : GoUInt32), ("42863" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42873" : GoUInt32), ("42876" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42877" : GoUInt32), ("42877" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-35332 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42878" : GoUInt32), ("42887" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42891" : GoUInt32), ("42892" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42893" : GoUInt32), ("42893" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42280 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42896" : GoUInt32), ("42899" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42900" : GoUInt32), ("42900" : GoUInt32), (new GoArray<GoInt32>((48 : GoInt32), (0 : GoInt32), (48 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42902" : GoUInt32), ("42921" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42922" : GoUInt32), ("42922" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42308 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42923" : GoUInt32), ("42923" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42319 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42924" : GoUInt32), ("42924" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42315 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42925" : GoUInt32), ("42925" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42305 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42926" : GoUInt32), ("42926" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42308 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42928" : GoUInt32), ("42928" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42258 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42929" : GoUInt32), ("42929" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42282 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42930" : GoUInt32), ("42930" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42261 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42931" : GoUInt32), ("42931" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (928 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42932" : GoUInt32), ("42943" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42946" : GoUInt32), ("42947" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42948" : GoUInt32), ("42948" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-48 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42949" : GoUInt32), ("42949" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42307 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42950" : GoUInt32), ("42950" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-35384 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42951" : GoUInt32), ("42954" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("42997" : GoUInt32), ("42998" : GoUInt32),
		(new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("43859" : GoUInt32), ("43859" : GoUInt32), (new GoArray<GoInt32>((-928 : GoInt32), (0 : GoInt32), (-928 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("43888" : GoUInt32), ("43967" : GoUInt32),
		(new GoArray<GoInt32>((-38864 : GoInt32), (0 : GoInt32), (-38864 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("65313" : GoUInt32), ("65338" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("65345" : GoUInt32), ("65370" : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("66560" : GoUInt32), ("66599" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (40 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("66600" : GoUInt32), ("66639" : GoUInt32), (new GoArray<GoInt32>((-40 : GoInt32), (0 : GoInt32), (-40 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("66736" : GoUInt32), ("66771" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (40 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("66776" : GoUInt32), ("66811" : GoUInt32), (new GoArray<GoInt32>((-40 : GoInt32), (0 : GoInt32), (-40 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("68736" : GoUInt32), ("68786" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (64 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("68800" : GoUInt32), ("68850" : GoUInt32), (new GoArray<GoInt32>((-64 : GoInt32), (0 : GoInt32), (-64 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("71840" : GoUInt32), ("71871" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("71872" : GoUInt32), ("71903" : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("93760" : GoUInt32), ("93791" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("93792" : GoUInt32), ("93823" : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("125184" : GoUInt32), ("125217" : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (34 : GoInt32), (0 : GoInt32)) : T_d)) : CaseRange),
	(new CaseRange(("125218" : GoUInt32), ("125251" : GoUInt32),
		(new GoArray<GoInt32>((-34 : GoInt32), (0 : GoInt32), (-34 : GoInt32)) : T_d)) : CaseRange)) : Slice<CaseRange>);

/**
	// CaseRanges is the table describing case mappings for all letters with
	// non-self mappings.
**/
var caseRanges:Slice<CaseRange> = __CaseRanges;

private var _properties:GoArray<GoUInt8> = {
	var s:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...256) 0]);
	s[0] = (1 : GoUInt8);
	s[1] = (1 : GoUInt8);
	s[2] = (1 : GoUInt8);
	s[3] = (1 : GoUInt8);
	s[4] = (1 : GoUInt8);
	s[5] = (1 : GoUInt8);
	s[6] = (1 : GoUInt8);
	s[7] = (1 : GoUInt8);
	s[8] = (1 : GoUInt8);
	s[9] = (1 : GoUInt8);
	s[10] = (1 : GoUInt8);
	s[11] = (1 : GoUInt8);
	s[12] = (1 : GoUInt8);
	s[13] = (1 : GoUInt8);
	s[14] = (1 : GoUInt8);
	s[15] = (1 : GoUInt8);
	s[16] = (1 : GoUInt8);
	s[17] = (1 : GoUInt8);
	s[18] = (1 : GoUInt8);
	s[19] = (1 : GoUInt8);
	s[20] = (1 : GoUInt8);
	s[21] = (1 : GoUInt8);
	s[22] = (1 : GoUInt8);
	s[23] = (1 : GoUInt8);
	s[24] = (1 : GoUInt8);
	s[25] = (1 : GoUInt8);
	s[26] = (1 : GoUInt8);
	s[27] = (1 : GoUInt8);
	s[28] = (1 : GoUInt8);
	s[29] = (1 : GoUInt8);
	s[30] = (1 : GoUInt8);
	s[31] = (1 : GoUInt8);
	s[32] = (144 : GoUInt8);
	s[33] = (130 : GoUInt8);
	s[34] = (130 : GoUInt8);
	s[35] = (130 : GoUInt8);
	s[36] = (136 : GoUInt8);
	s[37] = (130 : GoUInt8);
	s[38] = (130 : GoUInt8);
	s[39] = (130 : GoUInt8);
	s[40] = (130 : GoUInt8);
	s[41] = (130 : GoUInt8);
	s[42] = (130 : GoUInt8);
	s[43] = (136 : GoUInt8);
	s[44] = (130 : GoUInt8);
	s[45] = (130 : GoUInt8);
	s[46] = (130 : GoUInt8);
	s[47] = (130 : GoUInt8);
	s[48] = (132 : GoUInt8);
	s[49] = (132 : GoUInt8);
	s[50] = (132 : GoUInt8);
	s[51] = (132 : GoUInt8);
	s[52] = (132 : GoUInt8);
	s[53] = (132 : GoUInt8);
	s[54] = (132 : GoUInt8);
	s[55] = (132 : GoUInt8);
	s[56] = (132 : GoUInt8);
	s[57] = (132 : GoUInt8);
	s[58] = (130 : GoUInt8);
	s[59] = (130 : GoUInt8);
	s[60] = (136 : GoUInt8);
	s[61] = (136 : GoUInt8);
	s[62] = (136 : GoUInt8);
	s[63] = (130 : GoUInt8);
	s[64] = (130 : GoUInt8);
	s[65] = (160 : GoUInt8);
	s[66] = (160 : GoUInt8);
	s[67] = (160 : GoUInt8);
	s[68] = (160 : GoUInt8);
	s[69] = (160 : GoUInt8);
	s[70] = (160 : GoUInt8);
	s[71] = (160 : GoUInt8);
	s[72] = (160 : GoUInt8);
	s[73] = (160 : GoUInt8);
	s[74] = (160 : GoUInt8);
	s[75] = (160 : GoUInt8);
	s[76] = (160 : GoUInt8);
	s[77] = (160 : GoUInt8);
	s[78] = (160 : GoUInt8);
	s[79] = (160 : GoUInt8);
	s[80] = (160 : GoUInt8);
	s[81] = (160 : GoUInt8);
	s[82] = (160 : GoUInt8);
	s[83] = (160 : GoUInt8);
	s[84] = (160 : GoUInt8);
	s[85] = (160 : GoUInt8);
	s[86] = (160 : GoUInt8);
	s[87] = (160 : GoUInt8);
	s[88] = (160 : GoUInt8);
	s[89] = (160 : GoUInt8);
	s[90] = (160 : GoUInt8);
	s[91] = (130 : GoUInt8);
	s[92] = (130 : GoUInt8);
	s[93] = (130 : GoUInt8);
	s[94] = (136 : GoUInt8);
	s[95] = (130 : GoUInt8);
	s[96] = (136 : GoUInt8);
	s[97] = (192 : GoUInt8);
	s[98] = (192 : GoUInt8);
	s[99] = (192 : GoUInt8);
	s[100] = (192 : GoUInt8);
	s[101] = (192 : GoUInt8);
	s[102] = (192 : GoUInt8);
	s[103] = (192 : GoUInt8);
	s[104] = (192 : GoUInt8);
	s[105] = (192 : GoUInt8);
	s[106] = (192 : GoUInt8);
	s[107] = (192 : GoUInt8);
	s[108] = (192 : GoUInt8);
	s[109] = (192 : GoUInt8);
	s[110] = (192 : GoUInt8);
	s[111] = (192 : GoUInt8);
	s[112] = (192 : GoUInt8);
	s[113] = (192 : GoUInt8);
	s[114] = (192 : GoUInt8);
	s[115] = (192 : GoUInt8);
	s[116] = (192 : GoUInt8);
	s[117] = (192 : GoUInt8);
	s[118] = (192 : GoUInt8);
	s[119] = (192 : GoUInt8);
	s[120] = (192 : GoUInt8);
	s[121] = (192 : GoUInt8);
	s[122] = (192 : GoUInt8);
	s[123] = (130 : GoUInt8);
	s[124] = (136 : GoUInt8);
	s[125] = (130 : GoUInt8);
	s[126] = (136 : GoUInt8);
	s[127] = (1 : GoUInt8);
	s[128] = (1 : GoUInt8);
	s[129] = (1 : GoUInt8);
	s[130] = (1 : GoUInt8);
	s[131] = (1 : GoUInt8);
	s[132] = (1 : GoUInt8);
	s[133] = (1 : GoUInt8);
	s[134] = (1 : GoUInt8);
	s[135] = (1 : GoUInt8);
	s[136] = (1 : GoUInt8);
	s[137] = (1 : GoUInt8);
	s[138] = (1 : GoUInt8);
	s[139] = (1 : GoUInt8);
	s[140] = (1 : GoUInt8);
	s[141] = (1 : GoUInt8);
	s[142] = (1 : GoUInt8);
	s[143] = (1 : GoUInt8);
	s[144] = (1 : GoUInt8);
	s[145] = (1 : GoUInt8);
	s[146] = (1 : GoUInt8);
	s[147] = (1 : GoUInt8);
	s[148] = (1 : GoUInt8);
	s[149] = (1 : GoUInt8);
	s[150] = (1 : GoUInt8);
	s[151] = (1 : GoUInt8);
	s[152] = (1 : GoUInt8);
	s[153] = (1 : GoUInt8);
	s[154] = (1 : GoUInt8);
	s[155] = (1 : GoUInt8);
	s[156] = (1 : GoUInt8);
	s[157] = (1 : GoUInt8);
	s[158] = (1 : GoUInt8);
	s[159] = (1 : GoUInt8);
	s[160] = (16 : GoUInt8);
	s[161] = (130 : GoUInt8);
	s[162] = (136 : GoUInt8);
	s[163] = (136 : GoUInt8);
	s[164] = (136 : GoUInt8);
	s[165] = (136 : GoUInt8);
	s[166] = (136 : GoUInt8);
	s[167] = (130 : GoUInt8);
	s[168] = (136 : GoUInt8);
	s[169] = (136 : GoUInt8);
	s[170] = (224 : GoUInt8);
	s[171] = (130 : GoUInt8);
	s[172] = (136 : GoUInt8);
	s[173] = (0 : GoUInt8);
	s[174] = (136 : GoUInt8);
	s[175] = (136 : GoUInt8);
	s[176] = (136 : GoUInt8);
	s[177] = (136 : GoUInt8);
	s[178] = (132 : GoUInt8);
	s[179] = (132 : GoUInt8);
	s[180] = (136 : GoUInt8);
	s[181] = (192 : GoUInt8);
	s[182] = (130 : GoUInt8);
	s[183] = (130 : GoUInt8);
	s[184] = (136 : GoUInt8);
	s[185] = (132 : GoUInt8);
	s[186] = (224 : GoUInt8);
	s[187] = (130 : GoUInt8);
	s[188] = (132 : GoUInt8);
	s[189] = (132 : GoUInt8);
	s[190] = (132 : GoUInt8);
	s[191] = (130 : GoUInt8);
	s[192] = (160 : GoUInt8);
	s[193] = (160 : GoUInt8);
	s[194] = (160 : GoUInt8);
	s[195] = (160 : GoUInt8);
	s[196] = (160 : GoUInt8);
	s[197] = (160 : GoUInt8);
	s[198] = (160 : GoUInt8);
	s[199] = (160 : GoUInt8);
	s[200] = (160 : GoUInt8);
	s[201] = (160 : GoUInt8);
	s[202] = (160 : GoUInt8);
	s[203] = (160 : GoUInt8);
	s[204] = (160 : GoUInt8);
	s[205] = (160 : GoUInt8);
	s[206] = (160 : GoUInt8);
	s[207] = (160 : GoUInt8);
	s[208] = (160 : GoUInt8);
	s[209] = (160 : GoUInt8);
	s[210] = (160 : GoUInt8);
	s[211] = (160 : GoUInt8);
	s[212] = (160 : GoUInt8);
	s[213] = (160 : GoUInt8);
	s[214] = (160 : GoUInt8);
	s[215] = (136 : GoUInt8);
	s[216] = (160 : GoUInt8);
	s[217] = (160 : GoUInt8);
	s[218] = (160 : GoUInt8);
	s[219] = (160 : GoUInt8);
	s[220] = (160 : GoUInt8);
	s[221] = (160 : GoUInt8);
	s[222] = (160 : GoUInt8);
	s[223] = (192 : GoUInt8);
	s[224] = (192 : GoUInt8);
	s[225] = (192 : GoUInt8);
	s[226] = (192 : GoUInt8);
	s[227] = (192 : GoUInt8);
	s[228] = (192 : GoUInt8);
	s[229] = (192 : GoUInt8);
	s[230] = (192 : GoUInt8);
	s[231] = (192 : GoUInt8);
	s[232] = (192 : GoUInt8);
	s[233] = (192 : GoUInt8);
	s[234] = (192 : GoUInt8);
	s[235] = (192 : GoUInt8);
	s[236] = (192 : GoUInt8);
	s[237] = (192 : GoUInt8);
	s[238] = (192 : GoUInt8);
	s[239] = (192 : GoUInt8);
	s[240] = (192 : GoUInt8);
	s[241] = (192 : GoUInt8);
	s[242] = (192 : GoUInt8);
	s[243] = (192 : GoUInt8);
	s[244] = (192 : GoUInt8);
	s[245] = (192 : GoUInt8);
	s[246] = (192 : GoUInt8);
	s[247] = (136 : GoUInt8);
	s[248] = (192 : GoUInt8);
	s[249] = (192 : GoUInt8);
	s[250] = (192 : GoUInt8);
	s[251] = (192 : GoUInt8);
	s[252] = (192 : GoUInt8);
	s[253] = (192 : GoUInt8);
	s[254] = (192 : GoUInt8);
	s[255] = (192 : GoUInt8);
	s;
};

private var _asciiFold:GoArray<GoUInt16> = (new GoArray<GoUInt16>((0 : GoUInt16), (1 : GoUInt16), (2 : GoUInt16), (3 : GoUInt16), (4 : GoUInt16),
	(5 : GoUInt16), (6 : GoUInt16), (7 : GoUInt16), (8 : GoUInt16), (9 : GoUInt16), (10 : GoUInt16), (11 : GoUInt16), (12 : GoUInt16), (13 : GoUInt16),
	(14 : GoUInt16), (15 : GoUInt16), (16 : GoUInt16), (17 : GoUInt16), (18 : GoUInt16), (19 : GoUInt16), (20 : GoUInt16), (21 : GoUInt16), (22 : GoUInt16),
	(23 : GoUInt16), (24 : GoUInt16), (25 : GoUInt16), (26 : GoUInt16), (27 : GoUInt16), (28 : GoUInt16), (29 : GoUInt16), (30 : GoUInt16), (31 : GoUInt16),
	(32 : GoUInt16), (33 : GoUInt16), (34 : GoUInt16), (35 : GoUInt16), (36 : GoUInt16), (37 : GoUInt16), (38 : GoUInt16), (39 : GoUInt16), (40 : GoUInt16),
	(41 : GoUInt16), (42 : GoUInt16), (43 : GoUInt16), (44 : GoUInt16), (45 : GoUInt16), (46 : GoUInt16), (47 : GoUInt16), (48 : GoUInt16), (49 : GoUInt16),
	(50 : GoUInt16), (51 : GoUInt16), (52 : GoUInt16), (53 : GoUInt16), (54 : GoUInt16), (55 : GoUInt16), (56 : GoUInt16), (57 : GoUInt16), (58 : GoUInt16),
	(59 : GoUInt16), (60 : GoUInt16), (61 : GoUInt16), (62 : GoUInt16), (63 : GoUInt16), (64 : GoUInt16), (97 : GoUInt16), (98 : GoUInt16), (99 : GoUInt16),
	(100 : GoUInt16), (101 : GoUInt16), (102 : GoUInt16), (103 : GoUInt16), (104 : GoUInt16), (105 : GoUInt16), (106 : GoUInt16), (107 : GoUInt16),
	(108 : GoUInt16), (109 : GoUInt16), (110 : GoUInt16), (111 : GoUInt16), (112 : GoUInt16), (113 : GoUInt16), (114 : GoUInt16), (115 : GoUInt16),
	(116 : GoUInt16), (117 : GoUInt16), (118 : GoUInt16), (119 : GoUInt16), (120 : GoUInt16), (121 : GoUInt16), (122 : GoUInt16), (91 : GoUInt16),
	(92 : GoUInt16), (93 : GoUInt16), (94 : GoUInt16), (95 : GoUInt16), (96 : GoUInt16), (65 : GoUInt16), (66 : GoUInt16), (67 : GoUInt16), (68 : GoUInt16),
	(69 : GoUInt16), (70 : GoUInt16), (71 : GoUInt16), (72 : GoUInt16), (73 : GoUInt16), (74 : GoUInt16), (8490 : GoUInt16), (76 : GoUInt16), (77 : GoUInt16),
	(78 : GoUInt16), (79 : GoUInt16), (80 : GoUInt16), (81 : GoUInt16), (82 : GoUInt16), (383 : GoUInt16), (84 : GoUInt16), (85 : GoUInt16), (86 : GoUInt16),
	(87 : GoUInt16), (88 : GoUInt16), (89 : GoUInt16), (90 : GoUInt16), (123 : GoUInt16), (124 : GoUInt16), (125 : GoUInt16), (126 : GoUInt16),
	(127 : GoUInt16)) : GoArray<GoUInt16>);

private var _caseOrbit:Slice<T_foldPair> = (new Slice<T_foldPair>(0, 0, (new T_foldPair((75 : GoUInt16), (107 : GoUInt16)) : T_foldPair),
	(new T_foldPair((83 : GoUInt16), (115 : GoUInt16)) : T_foldPair), (new T_foldPair((107 : GoUInt16), (8490 : GoUInt16)) : T_foldPair),
	(new T_foldPair((115 : GoUInt16), (383 : GoUInt16)) : T_foldPair), (new T_foldPair((181 : GoUInt16), (924 : GoUInt16)) : T_foldPair),
	(new T_foldPair((197 : GoUInt16), (229 : GoUInt16)) : T_foldPair), (new T_foldPair((223 : GoUInt16), (7838 : GoUInt16)) : T_foldPair),
	(new T_foldPair((229 : GoUInt16), (8491 : GoUInt16)) : T_foldPair), (new T_foldPair((304 : GoUInt16), (304 : GoUInt16)) : T_foldPair),
	(new T_foldPair((305 : GoUInt16), (305 : GoUInt16)) : T_foldPair), (new T_foldPair((383 : GoUInt16), (83 : GoUInt16)) : T_foldPair),
	(new T_foldPair((452 : GoUInt16), (453 : GoUInt16)) : T_foldPair), (new T_foldPair((453 : GoUInt16), (454 : GoUInt16)) : T_foldPair),
	(new T_foldPair((454 : GoUInt16), (452 : GoUInt16)) : T_foldPair), (new T_foldPair((455 : GoUInt16), (456 : GoUInt16)) : T_foldPair),
	(new T_foldPair((456 : GoUInt16), (457 : GoUInt16)) : T_foldPair), (new T_foldPair((457 : GoUInt16), (455 : GoUInt16)) : T_foldPair),
	(new T_foldPair((458 : GoUInt16), (459 : GoUInt16)) : T_foldPair), (new T_foldPair((459 : GoUInt16), (460 : GoUInt16)) : T_foldPair),
	(new T_foldPair((460 : GoUInt16), (458 : GoUInt16)) : T_foldPair), (new T_foldPair((497 : GoUInt16), (498 : GoUInt16)) : T_foldPair),
	(new T_foldPair((498 : GoUInt16), (499 : GoUInt16)) : T_foldPair), (new T_foldPair((499 : GoUInt16), (497 : GoUInt16)) : T_foldPair),
	(new T_foldPair((837 : GoUInt16), (921 : GoUInt16)) : T_foldPair), (new T_foldPair((914 : GoUInt16), (946 : GoUInt16)) : T_foldPair),
	(new T_foldPair((917 : GoUInt16), (949 : GoUInt16)) : T_foldPair), (new T_foldPair((920 : GoUInt16), (952 : GoUInt16)) : T_foldPair),
	(new T_foldPair((921 : GoUInt16), (953 : GoUInt16)) : T_foldPair), (new T_foldPair((922 : GoUInt16), (954 : GoUInt16)) : T_foldPair),
	(new T_foldPair((924 : GoUInt16), (956 : GoUInt16)) : T_foldPair), (new T_foldPair((928 : GoUInt16), (960 : GoUInt16)) : T_foldPair),
	(new T_foldPair((929 : GoUInt16), (961 : GoUInt16)) : T_foldPair), (new T_foldPair((931 : GoUInt16), (962 : GoUInt16)) : T_foldPair),
	(new T_foldPair((934 : GoUInt16), (966 : GoUInt16)) : T_foldPair), (new T_foldPair((937 : GoUInt16), (969 : GoUInt16)) : T_foldPair),
	(new T_foldPair((946 : GoUInt16), (976 : GoUInt16)) : T_foldPair), (new T_foldPair((949 : GoUInt16), (1013 : GoUInt16)) : T_foldPair),
	(new T_foldPair((952 : GoUInt16), (977 : GoUInt16)) : T_foldPair), (new T_foldPair((953 : GoUInt16), (8126 : GoUInt16)) : T_foldPair),
	(new T_foldPair((954 : GoUInt16), (1008 : GoUInt16)) : T_foldPair), (new T_foldPair((956 : GoUInt16), (181 : GoUInt16)) : T_foldPair),
	(new T_foldPair((960 : GoUInt16), (982 : GoUInt16)) : T_foldPair), (new T_foldPair((961 : GoUInt16), (1009 : GoUInt16)) : T_foldPair),
	(new T_foldPair((962 : GoUInt16), (963 : GoUInt16)) : T_foldPair), (new T_foldPair((963 : GoUInt16), (931 : GoUInt16)) : T_foldPair),
	(new T_foldPair((966 : GoUInt16), (981 : GoUInt16)) : T_foldPair), (new T_foldPair((969 : GoUInt16), (8486 : GoUInt16)) : T_foldPair),
	(new T_foldPair((976 : GoUInt16), (914 : GoUInt16)) : T_foldPair), (new T_foldPair((977 : GoUInt16), (1012 : GoUInt16)) : T_foldPair),
	(new T_foldPair((981 : GoUInt16), (934 : GoUInt16)) : T_foldPair), (new T_foldPair((982 : GoUInt16), (928 : GoUInt16)) : T_foldPair),
	(new T_foldPair((1008 : GoUInt16), (922 : GoUInt16)) : T_foldPair), (new T_foldPair((1009 : GoUInt16), (929 : GoUInt16)) : T_foldPair),
	(new T_foldPair((1012 : GoUInt16), (920 : GoUInt16)) : T_foldPair), (new T_foldPair((1013 : GoUInt16), (917 : GoUInt16)) : T_foldPair),
	(new T_foldPair((1042 : GoUInt16), (1074 : GoUInt16)) : T_foldPair), (new T_foldPair((1044 : GoUInt16), (1076 : GoUInt16)) : T_foldPair),
	(new T_foldPair((1054 : GoUInt16), (1086 : GoUInt16)) : T_foldPair), (new T_foldPair((1057 : GoUInt16), (1089 : GoUInt16)) : T_foldPair),
	(new T_foldPair((1058 : GoUInt16), (1090 : GoUInt16)) : T_foldPair), (new T_foldPair((1066 : GoUInt16), (1098 : GoUInt16)) : T_foldPair),
	(new T_foldPair((1074 : GoUInt16), (7296 : GoUInt16)) : T_foldPair), (new T_foldPair((1076 : GoUInt16), (7297 : GoUInt16)) : T_foldPair),
	(new T_foldPair((1086 : GoUInt16), (7298 : GoUInt16)) : T_foldPair), (new T_foldPair((1089 : GoUInt16), (7299 : GoUInt16)) : T_foldPair),
	(new T_foldPair((1090 : GoUInt16), (7300 : GoUInt16)) : T_foldPair), (new T_foldPair((1098 : GoUInt16), (7302 : GoUInt16)) : T_foldPair),
	(new T_foldPair((1122 : GoUInt16), (1123 : GoUInt16)) : T_foldPair), (new T_foldPair((1123 : GoUInt16), (7303 : GoUInt16)) : T_foldPair),
	(new T_foldPair((7296 : GoUInt16), (1042 : GoUInt16)) : T_foldPair), (new T_foldPair((7297 : GoUInt16), (1044 : GoUInt16)) : T_foldPair),
	(new T_foldPair((7298 : GoUInt16), (1054 : GoUInt16)) : T_foldPair), (new T_foldPair((7299 : GoUInt16), (1057 : GoUInt16)) : T_foldPair),
	(new T_foldPair((7300 : GoUInt16), (7301 : GoUInt16)) : T_foldPair), (new T_foldPair((7301 : GoUInt16), (1058 : GoUInt16)) : T_foldPair),
	(new T_foldPair((7302 : GoUInt16), (1066 : GoUInt16)) : T_foldPair), (new T_foldPair((7303 : GoUInt16), (1122 : GoUInt16)) : T_foldPair),
	(new T_foldPair((7304 : GoUInt16), (42570 : GoUInt16)) : T_foldPair), (new T_foldPair((7776 : GoUInt16), (7777 : GoUInt16)) : T_foldPair),
	(new T_foldPair((7777 : GoUInt16), (7835 : GoUInt16)) : T_foldPair), (new T_foldPair((7835 : GoUInt16), (7776 : GoUInt16)) : T_foldPair),
	(new T_foldPair((7838 : GoUInt16), (223 : GoUInt16)) : T_foldPair), (new T_foldPair((8126 : GoUInt16), (837 : GoUInt16)) : T_foldPair),
	(new T_foldPair((8486 : GoUInt16), (937 : GoUInt16)) : T_foldPair), (new T_foldPair((8490 : GoUInt16), (75 : GoUInt16)) : T_foldPair),
	(new T_foldPair((8491 : GoUInt16), (197 : GoUInt16)) : T_foldPair), (new T_foldPair((42570 : GoUInt16), (42571 : GoUInt16)) : T_foldPair),
	(new T_foldPair((42571 : GoUInt16), (7304 : GoUInt16)) : T_foldPair)) : Slice<T_foldPair>);

private var _foldL:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((837 : GoUInt16), (837 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var _foldLl:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((65 : GoUInt16), (90 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((192 : GoUInt16), (214 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((216 : GoUInt16), (222 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((256 : GoUInt16), (302 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((306 : GoUInt16), (310 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((313 : GoUInt16), (327 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((330 : GoUInt16), (376 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((377 : GoUInt16), (381 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((385 : GoUInt16), (386 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((388 : GoUInt16), (390 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((391 : GoUInt16), (393 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((394 : GoUInt16), (395 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((398 : GoUInt16), (401 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((403 : GoUInt16), (404 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((406 : GoUInt16), (408 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((412 : GoUInt16), (413 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((415 : GoUInt16), (416 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((418 : GoUInt16), (422 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((423 : GoUInt16), (425 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((428 : GoUInt16), (430 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((431 : GoUInt16), (433 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((434 : GoUInt16), (435 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((437 : GoUInt16), (439 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((440 : GoUInt16), (444 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((452 : GoUInt16), (453 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((455 : GoUInt16), (456 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((458 : GoUInt16), (459 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((461 : GoUInt16), (475 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((478 : GoUInt16), (494 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((497 : GoUInt16), (498 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((500 : GoUInt16), (502 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((503 : GoUInt16), (504 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((506 : GoUInt16), (562 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((570 : GoUInt16), (571 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((573 : GoUInt16), (574 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((577 : GoUInt16), (579 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((580 : GoUInt16), (582 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((584 : GoUInt16), (590 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((837 : GoUInt16), (880 : GoUInt16), (43 : GoUInt16)) : Range16),
		(new Range16((882 : GoUInt16), (886 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((895 : GoUInt16), (902 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((904 : GoUInt16), (906 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((908 : GoUInt16), (910 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((911 : GoUInt16), (913 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((914 : GoUInt16), (929 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((931 : GoUInt16), (939 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((975 : GoUInt16), (984 : GoUInt16), (9 : GoUInt16)) : Range16),
		(new Range16((986 : GoUInt16), (1006 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1012 : GoUInt16), (1015 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((1017 : GoUInt16), (1018 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1021 : GoUInt16), (1071 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1120 : GoUInt16), (1152 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1162 : GoUInt16), (1216 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1217 : GoUInt16), (1229 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1232 : GoUInt16), (1326 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1329 : GoUInt16), (1366 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4256 : GoUInt16), (4293 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4295 : GoUInt16), (4301 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((5024 : GoUInt16), (5109 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7312 : GoUInt16), (7354 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7357 : GoUInt16), (7359 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7680 : GoUInt16), (7828 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((7838 : GoUInt16), (7934 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((7944 : GoUInt16), (7951 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7960 : GoUInt16), (7965 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7976 : GoUInt16), (7983 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7992 : GoUInt16), (7999 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8008 : GoUInt16), (8013 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8025 : GoUInt16), (8031 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8040 : GoUInt16), (8047 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8072 : GoUInt16), (8079 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8088 : GoUInt16), (8095 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8104 : GoUInt16), (8111 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8120 : GoUInt16), (8124 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8136 : GoUInt16), (8140 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8152 : GoUInt16), (8155 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8168 : GoUInt16), (8172 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8184 : GoUInt16), (8188 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8486 : GoUInt16), (8490 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((8491 : GoUInt16), (8498 : GoUInt16), (7 : GoUInt16)) : Range16),
		(new Range16((8579 : GoUInt16), (11264 : GoUInt16), (2685 : GoUInt16)) : Range16),
		(new Range16((11265 : GoUInt16), (11310 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11360 : GoUInt16), (11362 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((11363 : GoUInt16), (11364 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11367 : GoUInt16), (11373 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((11374 : GoUInt16), (11376 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11378 : GoUInt16), (11381 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((11390 : GoUInt16), (11392 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11394 : GoUInt16), (11490 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((11499 : GoUInt16), (11501 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((11506 : GoUInt16), (42560 : GoUInt16), (31054 : GoUInt16)) : Range16),
		(new Range16((42562 : GoUInt16), (42604 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42624 : GoUInt16), (42650 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42786 : GoUInt16), (42798 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42802 : GoUInt16), (42862 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42873 : GoUInt16), (42877 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42878 : GoUInt16), (42886 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42891 : GoUInt16), (42893 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42896 : GoUInt16), (42898 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42902 : GoUInt16), (42922 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42923 : GoUInt16), (42926 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42928 : GoUInt16), (42932 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42934 : GoUInt16), (42942 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42946 : GoUInt16), (42948 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42949 : GoUInt16), (42951 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42953 : GoUInt16), (42997 : GoUInt16), (44 : GoUInt16)) : Range16),
		(new Range16((65313 : GoUInt16), (65338 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("66560" : GoUInt32), ("66599" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66736" : GoUInt32), ("66771" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68736" : GoUInt32), ("68786" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71840" : GoUInt32), ("71871" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93760" : GoUInt32), ("93791" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125184" : GoUInt32), ("125217" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (3 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var _foldLt:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((452 : GoUInt16), (454 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((455 : GoUInt16), (457 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((458 : GoUInt16), (460 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((497 : GoUInt16), (499 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8064 : GoUInt16), (8071 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8080 : GoUInt16), (8087 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8096 : GoUInt16), (8103 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8115 : GoUInt16), (8131 : GoUInt16), (16 : GoUInt16)) : Range16),
		(new Range16((8179 : GoUInt16), (8179 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)
} : RangeTable) : Ref<RangeTable>);

private var _foldLu:Ref<RangeTable> = (({
	r16: (new Slice<Range16>(0, 0, (new Range16((97 : GoUInt16), (122 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((181 : GoUInt16), (223 : GoUInt16), (42 : GoUInt16)) : Range16),
		(new Range16((224 : GoUInt16), (246 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((248 : GoUInt16), (255 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((257 : GoUInt16), (303 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((307 : GoUInt16), (311 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((314 : GoUInt16), (328 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((331 : GoUInt16), (375 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((378 : GoUInt16), (382 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((383 : GoUInt16), (384 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((387 : GoUInt16), (389 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((392 : GoUInt16), (396 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((402 : GoUInt16), (405 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((409 : GoUInt16), (410 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((414 : GoUInt16), (417 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((419 : GoUInt16), (421 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((424 : GoUInt16), (429 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((432 : GoUInt16), (436 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((438 : GoUInt16), (441 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((445 : GoUInt16), (447 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((453 : GoUInt16), (454 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((456 : GoUInt16), (457 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((459 : GoUInt16), (460 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((462 : GoUInt16), (476 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((477 : GoUInt16), (495 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((498 : GoUInt16), (499 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((501 : GoUInt16), (505 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((507 : GoUInt16), (543 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((547 : GoUInt16), (563 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((572 : GoUInt16), (575 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((576 : GoUInt16), (578 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((583 : GoUInt16), (591 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((592 : GoUInt16), (596 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((598 : GoUInt16), (599 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((601 : GoUInt16), (603 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((604 : GoUInt16), (608 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((609 : GoUInt16), (613 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((614 : GoUInt16), (616 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((617 : GoUInt16), (620 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((623 : GoUInt16), (625 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((626 : GoUInt16), (629 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((637 : GoUInt16), (640 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((642 : GoUInt16), (643 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((647 : GoUInt16), (652 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((658 : GoUInt16), (669 : GoUInt16), (11 : GoUInt16)) : Range16),
		(new Range16((670 : GoUInt16), (837 : GoUInt16), (167 : GoUInt16)) : Range16),
		(new Range16((881 : GoUInt16), (883 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((887 : GoUInt16), (891 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((892 : GoUInt16), (893 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((940 : GoUInt16), (943 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((945 : GoUInt16), (974 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((976 : GoUInt16), (977 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((981 : GoUInt16), (983 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((985 : GoUInt16), (1007 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1008 : GoUInt16), (1011 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1013 : GoUInt16), (1019 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((1072 : GoUInt16), (1119 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((1121 : GoUInt16), (1153 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1163 : GoUInt16), (1215 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1218 : GoUInt16), (1230 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1231 : GoUInt16), (1327 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((1377 : GoUInt16), (1414 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4304 : GoUInt16), (4346 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((4349 : GoUInt16), (4351 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((5112 : GoUInt16), (5117 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7296 : GoUInt16), (7304 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7545 : GoUInt16), (7549 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((7566 : GoUInt16), (7681 : GoUInt16), (115 : GoUInt16)) : Range16),
		(new Range16((7683 : GoUInt16), (7829 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((7835 : GoUInt16), (7841 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((7843 : GoUInt16), (7935 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((7936 : GoUInt16), (7943 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7952 : GoUInt16), (7957 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7968 : GoUInt16), (7975 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((7984 : GoUInt16), (7991 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8000 : GoUInt16), (8005 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8017 : GoUInt16), (8023 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((8032 : GoUInt16), (8039 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8048 : GoUInt16), (8061 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8112 : GoUInt16), (8113 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((8126 : GoUInt16), (8144 : GoUInt16), (18 : GoUInt16)) : Range16),
		(new Range16((8145 : GoUInt16), (8160 : GoUInt16), (15 : GoUInt16)) : Range16),
		(new Range16((8161 : GoUInt16), (8165 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((8526 : GoUInt16), (8580 : GoUInt16), (54 : GoUInt16)) : Range16),
		(new Range16((11312 : GoUInt16), (11358 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11361 : GoUInt16), (11365 : GoUInt16), (4 : GoUInt16)) : Range16),
		(new Range16((11366 : GoUInt16), (11372 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((11379 : GoUInt16), (11382 : GoUInt16), (3 : GoUInt16)) : Range16),
		(new Range16((11393 : GoUInt16), (11491 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((11500 : GoUInt16), (11502 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((11507 : GoUInt16), (11520 : GoUInt16), (13 : GoUInt16)) : Range16),
		(new Range16((11521 : GoUInt16), (11557 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((11559 : GoUInt16), (11565 : GoUInt16), (6 : GoUInt16)) : Range16),
		(new Range16((42561 : GoUInt16), (42605 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42625 : GoUInt16), (42651 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42787 : GoUInt16), (42799 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42803 : GoUInt16), (42863 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42874 : GoUInt16), (42876 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42879 : GoUInt16), (42887 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42892 : GoUInt16), (42897 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((42899 : GoUInt16), (42900 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((42903 : GoUInt16), (42921 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42933 : GoUInt16), (42943 : GoUInt16), (2 : GoUInt16)) : Range16),
		(new Range16((42947 : GoUInt16), (42952 : GoUInt16), (5 : GoUInt16)) : Range16),
		(new Range16((42954 : GoUInt16), (42998 : GoUInt16), (44 : GoUInt16)) : Range16),
		(new Range16((43859 : GoUInt16), (43888 : GoUInt16), (29 : GoUInt16)) : Range16),
		(new Range16((43889 : GoUInt16), (43967 : GoUInt16), (1 : GoUInt16)) : Range16),
		(new Range16((65345 : GoUInt16), (65370 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>),
	r32: (new Slice<Range32>(0, 0, (new Range32(("66600" : GoUInt32), ("66639" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("66776" : GoUInt32), ("66811" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("68800" : GoUInt32), ("68850" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("71872" : GoUInt32), ("71903" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("93792" : GoUInt32), ("93823" : GoUInt32), ("1" : GoUInt32)) : Range32),
		(new Range32(("125218" : GoUInt32), ("125251" : GoUInt32), ("1" : GoUInt32)) : Range32)) : Slice<Range32>),
	latinOffset: (4 : GoInt)
} : RangeTable) : Ref<RangeTable>);

private var _foldM:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((921 : GoUInt16), (953 : GoUInt16), (32 : GoUInt16)) : Range16),
	(new Range16((8126 : GoUInt16), (8126 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var _foldMn:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((921 : GoUInt16), (953 : GoUInt16), (32 : GoUInt16)) : Range16),
	(new Range16((8126 : GoUInt16), (8126 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

/**
	// FoldCategory maps a category name to a table of
	// code points outside the category that are equivalent under
	// simple case folding to code points inside the category.
	// If there is no entry for a category name, there are no such points.
**/
var foldCategory:GoMap<GoString, Ref<RangeTable>> = {
	final x = new stdgo.GoMap.GoObjectMap<GoString, Ref<RangeTable>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType({get: () ->
		stdgo.reflect.Reflect.GoType.basic(string_kind)},
		{get: () -> stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("RangeTable", [], stdgo.reflect.Reflect.GoType.structType([
			{
				name: "r16",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.sliceType({get: () -> stdgo.reflect.Reflect.GoType.named("Range16", [],
					stdgo.reflect.Reflect.GoType.structType([
						{
							name: "lo",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
						},
						{
							name: "hi",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
						},
						{
							name: "stride",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
						}
					]))})
			},
			{
				name: "r32",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.sliceType({get: () -> stdgo.reflect.Reflect.GoType.named("Range32", [],
					stdgo.reflect.Reflect.GoType.structType([
						{
							name: "lo",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
						},
						{
							name: "hi",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
						},
						{
							name: "stride",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
						}
					]))})
			},
			{
				name: "latinOffset",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(int_kind)
			}
		])))})));
	@:privateAccess x._keys = [Go.str("L"), Go.str("Ll"), Go.str("Lt"), Go.str("Lu"), Go.str("M"), Go.str("Mn")];
	@:privateAccess x._values = [_foldL, _foldLl, _foldLt, _foldLu, _foldM, _foldMn];
	x;
};

private var _foldCommon:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((924 : GoUInt16), (956 : GoUInt16), (32 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var _foldGreek:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0,
	(new Range16((181 : GoUInt16), (837 : GoUInt16), (656 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

private var _foldInherited:Ref<RangeTable> = (({r16: (new Slice<Range16>(0, 0, (new Range16((921 : GoUInt16), (953 : GoUInt16), (32 : GoUInt16)) : Range16),
	(new Range16((8126 : GoUInt16), (8126 : GoUInt16), (1 : GoUInt16)) : Range16)) : Slice<Range16>)} : RangeTable) : Ref<RangeTable>);

/**
	// FoldScript maps a script name to a table of
	// code points outside the script that are equivalent under
	// simple case folding to code points inside the script.
	// If there is no entry for a script name, there are no such points.
**/
var foldScript:GoMap<GoString, Ref<RangeTable>> = {
	final x = new stdgo.GoMap.GoObjectMap<GoString, Ref<RangeTable>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType({get: () ->
		stdgo.reflect.Reflect.GoType.basic(string_kind)},
		{get: () -> stdgo.reflect.Reflect.GoType.refType(stdgo.reflect.Reflect.GoType.named("RangeTable", [], stdgo.reflect.Reflect.GoType.structType([
			{
				name: "r16",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.sliceType({get: () -> stdgo.reflect.Reflect.GoType.named("Range16", [],
					stdgo.reflect.Reflect.GoType.structType([
						{
							name: "lo",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
						},
						{
							name: "hi",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
						},
						{
							name: "stride",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint16_kind)
						}
					]))})
			},
			{
				name: "r32",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.sliceType({get: () -> stdgo.reflect.Reflect.GoType.named("Range32", [],
					stdgo.reflect.Reflect.GoType.structType([
						{
							name: "lo",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
						},
						{
							name: "hi",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
						},
						{
							name: "stride",
							embedded: false,
							tag: "",
							type: stdgo.reflect.Reflect.GoType.basic(uint32_kind)
						}
					]))})
			},
			{
				name: "latinOffset",
				embedded: false,
				tag: "",
				type: stdgo.reflect.Reflect.GoType.basic(int_kind)
			}
		])))})));
	@:privateAccess x._keys = [Go.str("Common"), Go.str("Greek"), Go.str("Inherited")];
	@:privateAccess x._values = [_foldCommon, _foldGreek, _foldInherited];
	x;
};

/**
	// a control character.// Bit masks for each code point under U+0100, for fast lookup.
**/
private final _pC:GoUInt64 = ("128" : GoUInt64);

/**
	// a punctuation character.// Bit masks for each code point under U+0100, for fast lookup.
**/
private final _pP:InvalidType = ("128" : GoUInt64);

/**
	// a numeral.// Bit masks for each code point under U+0100, for fast lookup.
**/
private final _pN:InvalidType = ("128" : GoUInt64);

/**
	// a symbolic character.// Bit masks for each code point under U+0100, for fast lookup.
**/
private final _pS:InvalidType = ("128" : GoUInt64);

/**
	// a spacing character.// Bit masks for each code point under U+0100, for fast lookup.
**/
private final _pZ:InvalidType = ("128" : GoUInt64);

/**
	// an upper-case letter.// Bit masks for each code point under U+0100, for fast lookup.
**/
private final _pLu:InvalidType = ("128" : GoUInt64);

/**
	// a lower-case letter.// Bit masks for each code point under U+0100, for fast lookup.
**/
private final _pLl:InvalidType = ("128" : GoUInt64);

/**
	// a printable character according to Go's definition.// Bit masks for each code point under U+0100, for fast lookup.
**/
private final _pp:InvalidType = ("128" : GoUInt64);

/**
	// a graphical character according to the Unicode definition.// Bit masks for each code point under U+0100, for fast lookup.
**/
private final _pg:GoUInt64 = ("144" : GoUInt64);

/**
	// a letter that is neither upper nor lower case.// Bit masks for each code point under U+0100, for fast lookup.
**/
private final _pLo:GoUInt64 = ("96" : GoUInt64);

/**
	// Bit masks for each code point under U+0100, for fast lookup.
**/
private final _pLmask:GoUInt64 = ("96" : GoUInt64);

/**
	// Maximum valid Unicode code point.
**/
final maxRune:GoInt32 = ("\u{0010FFFF}".code : GoRune);

/**
	// Represents invalid code points.
**/
final replacementChar:GoInt32 = ("\uFFFD".code : GoRune);

/**
	// maximum ASCII value.
**/
final maxASCII:GoInt32 = ("\u007F".code : GoRune);

/**
	// maximum Latin-1 value.
**/
final maxLatin1:GoInt32 = ("\u00FF".code : GoRune);

/**
	// Indices into the Delta arrays inside CaseRanges for case mapping.
**/
final upperCase:GoUInt64 = ("2" : GoUInt64);

/**
	// Indices into the Delta arrays inside CaseRanges for case mapping.
**/
final lowerCase:InvalidType = ("2" : GoUInt64);

/**
	// Indices into the Delta arrays inside CaseRanges for case mapping.
**/
final titleCase:InvalidType = ("2" : GoUInt64);

/**
	// Indices into the Delta arrays inside CaseRanges for case mapping.
**/
final maxCase:InvalidType = ("2" : GoUInt64);

/**
	// (Cannot be a valid delta.)// If the Delta field of a CaseRange is UpperLower, it means
	// this CaseRange represents a sequence of the form (say)
	// Upper Lower Upper Lower.
**/
final upperLower:GoInt32 = (1114112 : GoInt32);

/**
	// linearMax is the maximum size table for linear search for non-Latin1 rune.
	// Derived by running 'go test -calibrate'.
**/
private final _linearMax:GoUInt64 = ("18" : GoUInt64);

/**
	// Version is the Unicode edition from which the tables are derived.
**/
final version:GoString = Go.str("13.0.0");

/**
	// RangeTable defines a set of Unicode code points by listing the ranges of
	// code points within the set. The ranges are listed in two slices
	// to save space: a slice of 16-bit ranges and a slice of 32-bit ranges.
	// The two slices must be in sorted order and non-overlapping.
	// Also, R32 should contain only values >= 0x10000 (1<<16).
**/
@:structInit class RangeTable {
	public var r16:Slice<Range16> = (null : Slice<Range16>);
	public var r32:Slice<Range32> = (null : Slice<Range32>);

	/**
		// number of entries in R16 with Hi <= MaxLatin1
	**/
	public var latinOffset:GoInt = 0;

	public function new(?r16:Slice<Range16>, ?r32:Slice<Range32>, ?latinOffset:GoInt) {
		if (r16 != null)
			this.r16 = r16;
		if (r32 != null)
			this.r32 = r32;
		if (latinOffset != null)
			this.latinOffset = latinOffset;
	}

	public function __copy__() {
		return new RangeTable(r16, r32, latinOffset);
	}
}

/**
	// Range16 represents of a range of 16-bit Unicode code points. The range runs from Lo to Hi
	// inclusive and has the specified stride.
**/
@:structInit class Range16 {
	public var lo:GoUInt16 = 0;
	public var hi:GoUInt16 = 0;
	public var stride:GoUInt16 = 0;

	public function new(?lo:GoUInt16, ?hi:GoUInt16, ?stride:GoUInt16) {
		if (lo != null)
			this.lo = lo;
		if (hi != null)
			this.hi = hi;
		if (stride != null)
			this.stride = stride;
	}

	public function __copy__() {
		return new Range16(lo, hi, stride);
	}
}

/**
	// Range32 represents of a range of Unicode code points and is used when one or
	// more of the values will not fit in 16 bits. The range runs from Lo to Hi
	// inclusive and has the specified stride. Lo and Hi must always be >= 1<<16.
**/
@:structInit class Range32 {
	public var lo:GoUInt32 = 0;
	public var hi:GoUInt32 = 0;
	public var stride:GoUInt32 = 0;

	public function new(?lo:GoUInt32, ?hi:GoUInt32, ?stride:GoUInt32) {
		if (lo != null)
			this.lo = lo;
		if (hi != null)
			this.hi = hi;
		if (stride != null)
			this.stride = stride;
	}

	public function __copy__() {
		return new Range32(lo, hi, stride);
	}
}

/**
	// CaseRange represents a range of Unicode code points for simple (one
	// code point to one code point) case conversion.
	// The range runs from Lo to Hi inclusive, with a fixed stride of 1. Deltas
	// are the number to add to the code point to reach the code point for a
	// different case for that character. They may be negative. If zero, it
	// means the character is in the corresponding case. There is a special
	// case representing sequences of alternating corresponding Upper and Lower
	// pairs. It appears with a fixed Delta of
	//
	//	{UpperLower, UpperLower, UpperLower}
	//
	// The constant UpperLower has an otherwise impossible delta value.
**/
@:structInit class CaseRange {
	public var lo:GoUInt32 = 0;
	public var hi:GoUInt32 = 0;
	public var delta:T_d = new T_d();

	public function new(?lo:GoUInt32, ?hi:GoUInt32, ?delta:T_d) {
		if (lo != null)
			this.lo = lo;
		if (hi != null)
			this.hi = hi;
		if (delta != null)
			this.delta = delta;
	}

	public function __copy__() {
		return new CaseRange(lo, hi, delta);
	}
}

/**
	// caseOrbit is defined in tables.go as []foldPair. Right now all the
	// entries fit in uint16, so use uint16. If that changes, compilation
	// will fail (the constants in the composite literal will not fit in uint16)
	// and the types here can change to uint32.
**/
@:structInit private class T_foldPair {
	public var from:GoUInt16 = 0;
	public var to:GoUInt16 = 0;

	public function new(?from:GoUInt16, ?to:GoUInt16) {
		if (from != null)
			this.from = from;
		if (to != null)
			this.to = to;
	}

	public function __copy__() {
		return new T_foldPair(from, to);
	}
}

/**
	// SpecialCase represents language-specific case mappings such as Turkish.
	// Methods of SpecialCase customize (by overriding) the standard mappings.
**/
@:named @:using(stdgo.unicode.Unicode.SpecialCase_static_extension) typedef SpecialCase = Slice<CaseRange>;

@:named private typedef T_d = GoArray<GoInt32>;

/**
	// IsDigit reports whether the rune is a decimal digit.
**/
function isDigit(_r:GoRune):Bool {
	if (_r <= (255 : GoInt32)) {
		return (("0".code : GoRune) <= _r) && (_r <= ("9".code : GoRune));
	};
	return _isExcludingLatin(digit, _r);
}

/**
	// IsGraphic reports whether the rune is defined as a Graphic by Unicode.
	// Such characters include letters, marks, numbers, punctuation, symbols, and
	// spaces, from categories L, M, N, P, S, Zs.
**/
function isGraphic(_r:GoRune):Bool {
	if ((_r : GoUInt32) <= ("255" : GoUInt32)) {
		return _properties[(_r : GoUInt8)] & (144 : GoUInt8) != ((0 : GoUInt8));
	};
	return in_(_r, ...graphicRanges.__toArray__());
}

/**
	// IsPrint reports whether the rune is defined as printable by Go. Such
	// characters include letters, marks, numbers, punctuation, symbols, and the
	// ASCII space character, from categories L, M, N, P, S and the ASCII space
	// character. This categorization is the same as IsGraphic except that the
	// only spacing character is ASCII space, U+0020.
**/
function isPrint(_r:GoRune):Bool {
	if ((_r : GoUInt32) <= ("255" : GoUInt32)) {
		return _properties[(_r : GoUInt8)] & (128 : GoUInt8) != ((0 : GoUInt8));
	};
	return in_(_r, ...printRanges.__toArray__());
}

/**
	// IsOneOf reports whether the rune is a member of one of the ranges.
	// The function "In" provides a nicer signature and should be used in preference to IsOneOf.
**/
function isOneOf(_ranges:Slice<Ref<RangeTable>>, _r:GoRune):Bool {
	for (_0 => _inside in _ranges) {
		if (is_(_inside, _r)) {
			return true;
		};
	};
	return false;
}

/**
	// In reports whether the rune is a member of one of the ranges.
**/
function in_(_r:GoRune, _ranges:haxe.Rest<Ref<RangeTable>>):Bool {
	var _ranges = new Slice<Ref<RangeTable>>(0, 0, ..._ranges);
	for (_0 => _inside in _ranges) {
		if (is_(_inside, _r)) {
			return true;
		};
	};
	return false;
}

/**
	// IsControl reports whether the rune is a control character.
	// The C (Other) Unicode category includes more code points
	// such as surrogates; use Is(C, r) to test for them.
**/
function isControl(_r:GoRune):Bool {
	if ((_r : GoUInt32) <= ("255" : GoUInt32)) {
		return _properties[(_r : GoUInt8)] & (1 : GoUInt8) != ((0 : GoUInt8));
	};
	return false;
}

/**
	// IsLetter reports whether the rune is a letter (category L).
**/
function isLetter(_r:GoRune):Bool {
	if ((_r : GoUInt32) <= ("255" : GoUInt32)) {
		return _properties[(_r : GoUInt8)] & (96 : GoUInt8) != ((0 : GoUInt8));
	};
	return _isExcludingLatin(letter, _r);
}

/**
	// IsMark reports whether the rune is a mark character (category M).
**/
function isMark(_r:GoRune):Bool {
	return _isExcludingLatin(mark, _r);
}

/**
	// IsNumber reports whether the rune is a number (category N).
**/
function isNumber(_r:GoRune):Bool {
	if ((_r : GoUInt32) <= ("255" : GoUInt32)) {
		return _properties[(_r : GoUInt8)] & (4 : GoUInt8) != ((0 : GoUInt8));
	};
	return _isExcludingLatin(number, _r);
}

/**
	// IsPunct reports whether the rune is a Unicode punctuation character
	// (category P).
**/
function isPunct(_r:GoRune):Bool {
	if ((_r : GoUInt32) <= ("255" : GoUInt32)) {
		return _properties[(_r : GoUInt8)] & (2 : GoUInt8) != ((0 : GoUInt8));
	};
	return is_(punct, _r);
}

/**
	// IsSpace reports whether the rune is a space character as defined
	// by Unicode's White Space property; in the Latin-1 space
	// this is
	//
	//	'\t', '\n', '\v', '\f', '\r', ' ', U+0085 (NEL), U+00A0 (NBSP).
	//
	// Other definitions of spacing characters are set by category
	// Z and property Pattern_White_Space.
**/
function isSpace(_r:GoRune):Bool {
	if ((_r : GoUInt32) <= ("255" : GoUInt32)) {
		if (_r == (("\t".code : GoRune)) || _r == (("\n".code : GoRune)) || _r == (("\x0B".code : GoRune)) || _r == (("\x0C".code : GoRune))
			|| _r == (("\r".code : GoRune)) || _r == ((" ".code : GoRune)) || _r == ((133 : GoInt32)) || _r == ((160 : GoInt32))) {
			return true;
		};
		return false;
	};
	return _isExcludingLatin(white_Space, _r);
}

/**
	// IsSymbol reports whether the rune is a symbolic character.
**/
function isSymbol(_r:GoRune):Bool {
	if ((_r : GoUInt32) <= ("255" : GoUInt32)) {
		return _properties[(_r : GoUInt8)] & (8 : GoUInt8) != ((0 : GoUInt8));
	};
	return _isExcludingLatin(symbol, _r);
}

/**
	// is16 reports whether r is in the sorted slice of 16-bit ranges.
**/
function _is16(_ranges:Slice<Range16>, _r:GoUInt16):Bool {
	if ((_ranges.length <= (18 : GoInt)) || (_r <= (255 : GoUInt16))) {
		for (_i => _ in _ranges) {
			var _range_ = (_ranges[_i] : Ref<Range16>);
			if (_r < _range_.lo) {
				return false;
			};
			if (_r <= _range_.hi) {
				return (_range_.stride == (1 : GoUInt16)) || (((_r - _range_.lo) % _range_.stride) == (0 : GoUInt16));
			};
		};
		return false;
	};
	var _lo:GoInt = (0 : GoInt);
	var _hi:GoInt = (_ranges.length);
	while (_lo < _hi) {
		var _m:GoInt = _lo + ((_hi - _lo) / (2 : GoInt));
		var _range_ = (_ranges[_m] : Ref<Range16>);
		if ((_range_.lo <= _r) && (_r <= _range_.hi)) {
			return (_range_.stride == (1 : GoUInt16)) || (((_r - _range_.lo) % _range_.stride) == (0 : GoUInt16));
		};
		if (_r < _range_.lo) {
			_hi = _m;
		} else {
			_lo = _m + (1 : GoInt);
		};
	};
	return false;
}

/**
	// is32 reports whether r is in the sorted slice of 32-bit ranges.
**/
function _is32(_ranges:Slice<Range32>, _r:GoUInt32):Bool {
	if ((_ranges.length) <= (18 : GoInt)) {
		for (_i => _ in _ranges) {
			var _range_ = (_ranges[_i] : Ref<Range32>);
			if (_r < _range_.lo) {
				return false;
			};
			if (_r <= _range_.hi) {
				return (_range_.stride == ("1" : GoUInt32)) || (((_r - _range_.lo) % _range_.stride) == ("0" : GoUInt32));
			};
		};
		return false;
	};
	var _lo:GoInt = (0 : GoInt);
	var _hi:GoInt = (_ranges.length);
	while (_lo < _hi) {
		var _m:GoInt = _lo + ((_hi - _lo) / (2 : GoInt));
		var _range_:Range32 = (_ranges[_m] == null ? null : _ranges[_m].__copy__());
		if ((_range_.lo <= _r) && (_r <= _range_.hi)) {
			return (_range_.stride == ("1" : GoUInt32)) || (((_r - _range_.lo) % _range_.stride) == ("0" : GoUInt32));
		};
		if (_r < _range_.lo) {
			_hi = _m;
		} else {
			_lo = _m + (1 : GoInt);
		};
	};
	return false;
}

/**
	// Is reports whether the rune is in the specified table of ranges.
**/
function is_(_rangeTab:Ref<RangeTable>, _r:GoRune):Bool {
	var _r16 = _rangeTab.r16;
	if ((_r16.length > (0 : GoInt)) && ((_r : GoUInt32) <= (_r16[(_r16.length) - (1 : GoInt)].hi : GoUInt32))) {
		return _is16(_r16, (_r : GoUInt16));
	};
	var _r32 = _rangeTab.r32;
	if ((_r32.length > (0 : GoInt)) && (_r >= (_r32[(0 : GoInt)].lo : GoRune))) {
		return _is32(_r32, (_r : GoUInt32));
	};
	return false;
}

function _isExcludingLatin(_rangeTab:Ref<RangeTable>, _r:GoRune):Bool {
	var _r16 = _rangeTab.r16;
	{
		var _off:GoInt = _rangeTab.latinOffset;
		if ((_r16.length > _off) && ((_r : GoUInt32) <= (_r16[(_r16.length) - (1 : GoInt)].hi : GoUInt32))) {
			return _is16((_r16.__slice__(_off) : Slice<Range16>), (_r : GoUInt16));
		};
	};
	var _r32 = _rangeTab.r32;
	if ((_r32.length > (0 : GoInt)) && (_r >= (_r32[(0 : GoInt)].lo : GoRune))) {
		return _is32(_r32, (_r : GoUInt32));
	};
	return false;
}

/**
	// IsUpper reports whether the rune is an upper case letter.
**/
function isUpper(_r:GoRune):Bool {
	if ((_r : GoUInt32) <= ("255" : GoUInt32)) {
		return _properties[(_r : GoUInt8)] & (96 : GoUInt8) == ((32 : GoUInt8));
	};
	return _isExcludingLatin(upper, _r);
}

/**
	// IsLower reports whether the rune is a lower case letter.
**/
function isLower(_r:GoRune):Bool {
	if ((_r : GoUInt32) <= ("255" : GoUInt32)) {
		return _properties[(_r : GoUInt8)] & (96 : GoUInt8) == ((64 : GoUInt8));
	};
	return _isExcludingLatin(lower, _r);
}

/**
	// IsTitle reports whether the rune is a title case letter.
**/
function isTitle(_r:GoRune):Bool {
	if (_r <= (255 : GoInt32)) {
		return false;
	};
	return _isExcludingLatin(title, _r);
}

/**
	// to maps the rune using the specified case mapping.
	// It additionally reports whether caseRange contained a mapping for r.
**/
function _to(__case:GoInt, _r:GoRune, _caseRange:Slice<CaseRange>):{var _0:GoRune; var _1:Bool;} {
	var _mappedRune:GoRune = (0 : GoInt32), _foundMapping:Bool = false;
	if ((__case < (0:GoInt)) || ((3 : GoInt) <= __case)) {
		return {_0: (65533 : GoInt32), _1: false};
	};
	var _lo:GoInt = (0 : GoInt);
	var _hi:GoInt = (_caseRange.length);
	while (_lo < _hi) {
		var _m:GoInt = _lo + ((_hi - _lo) / (2 : GoInt));
		var _cr:CaseRange = (_caseRange[_m] == null ? null : _caseRange[_m].__copy__());
		if (((_cr.lo : GoRune) <= _r) && (_r <= (_cr.hi : GoRune))) {
			var _delta:GoInt32 = _cr.delta[__case];
			if (_delta > (1114111 : GoInt32)) {
				return {_0: (_cr.lo : GoRune) + (((_r - (_cr.lo : GoRune)) & ((1 : GoInt32) ^ (-1 : GoInt))) | (__case & (1 : GoInt) : GoRune)), _1: true};
			};
			return {_0: _r + _delta, _1: true};
		};
		if (_r < (_cr.lo:GoRune)) {
			_hi = _m;
		} else {
			_lo = _m + (1 : GoInt);
		};
	};
	return {_0: _r, _1: false};
}

/**
	// To maps the rune to the specified case: UpperCase, LowerCase, or TitleCase.
**/
function to(__case:GoInt, _r:GoRune):GoRune {
	{
		var __tmp__ = _to(__case, _r, caseRanges);
		_r = __tmp__._0;
	};
	return _r;
}

/**
	// ToUpper maps the rune to upper case.
**/
function toUpper(_r:GoRune):GoRune {
	if (_r <= (127 : GoInt32)) {
		if ((("a".code : GoRune) <= _r) && (_r <= ("z".code : GoRune))) {
			_r = _r - ((32 : GoInt32));
		};
		return _r;
	};
	return to((0 : GoInt), _r);
}

/**
	// ToLower maps the rune to lower case.
**/
function toLower(_r:GoRune):GoRune {
	if (_r <= (127 : GoInt32)) {
		if ((("A".code : GoRune) <= _r) && (_r <= ("Z".code : GoRune))) {
			_r = _r + ((32 : GoInt32));
		};
		return _r;
	};
	return to((1 : GoInt), _r);
}

/**
	// ToTitle maps the rune to title case.
**/
function toTitle(_r:GoRune):GoRune {
	if (_r <= (127 : GoInt32)) {
		if ((("a".code : GoRune) <= _r) && (_r <= ("z".code : GoRune))) {
			_r = _r - ((32 : GoInt32));
		};
		return _r;
	};
	return to((2 : GoInt), _r);
}

/**
	// SimpleFold iterates over Unicode code points equivalent under
	// the Unicode-defined simple case folding. Among the code points
	// equivalent to rune (including rune itself), SimpleFold returns the
	// smallest rune > r if one exists, or else the smallest rune >= 0.
	// If r is not a valid Unicode code point, SimpleFold(r) returns r.
	//
	// For example:
	//
	//	SimpleFold('A') = 'a'
	//	SimpleFold('a') = 'A'
	//
	//	SimpleFold('K') = 'k'
	//	SimpleFold('k') = '\u212A' (Kelvin symbol, K)
	//	SimpleFold('\u212A') = 'K'
	//
	//	SimpleFold('1') = '1'
	//
	//	SimpleFold(-2) = -2
**/
function simpleFold(_r:GoRune):GoRune {
	if ((_r < (0:GoInt32)) || (_r > (1114111 : GoInt32))) {
		return _r;
	};
	if ((_r : GoInt) < (_asciiFold.length)) {
		return (_asciiFold[_r] : GoRune);
	};
	var _lo:GoInt = (0 : GoInt);
	var _hi:GoInt = (_caseOrbit.length);
	while (_lo < _hi) {
		var _m:GoInt = _lo + ((_hi - _lo) / (2 : GoInt));
		if ((_caseOrbit[_m].from : GoRune) < _r) {
			_lo = _m + (1 : GoInt);
		} else {
			_hi = _m;
		};
	};
	if ((_lo < _caseOrbit.length) && ((_caseOrbit[_lo].from : GoRune) == _r)) {
		return (_caseOrbit[_lo].to : GoRune);
	};
	{
		var _l:GoInt32 = toLower(_r);
		if (_l != (_r)) {
			return _l;
		};
	};
	return toUpper(_r);
}

class SpecialCase_asInterface {
	/**
		// ToLower maps the rune to lower case giving priority to the special mapping.
	**/
	@:keep
	public function toLower(_r:GoRune):GoRune
		return __self__.value.toLower(_r);

	/**
		// ToTitle maps the rune to title case giving priority to the special mapping.
	**/
	@:keep
	public function toTitle(_r:GoRune):GoRune
		return __self__.value.toTitle(_r);

	/**
		// ToUpper maps the rune to upper case giving priority to the special mapping.
	**/
	@:keep
	public function toUpper(_r:GoRune):GoRune
		return __self__.value.toUpper(_r);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<SpecialCase>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.unicode.Unicode.SpecialCase_asInterface) class SpecialCase_static_extension {
	/**
		// ToLower maps the rune to lower case giving priority to the special mapping.
	**/
	@:keep
	static public function toLower(_special:SpecialCase, _r:GoRune):GoRune {
		var __tmp__ = _to((1 : GoInt), _r, (_special : Slice<CaseRange>)),
			_r1:GoInt32 = __tmp__._0,
			_hadMapping:Bool = __tmp__._1;
		if ((_r1 == _r) && !_hadMapping) {
			_r1 = stdgo.unicode.Unicode.toLower(_r);
		};
		return _r1;
	}

	/**
		// ToTitle maps the rune to title case giving priority to the special mapping.
	**/
	@:keep
	static public function toTitle(_special:SpecialCase, _r:GoRune):GoRune {
		var __tmp__ = _to((2 : GoInt), _r, (_special : Slice<CaseRange>)),
			_r1:GoInt32 = __tmp__._0,
			_hadMapping:Bool = __tmp__._1;
		if ((_r1 == _r) && !_hadMapping) {
			_r1 = stdgo.unicode.Unicode.toTitle(_r);
		};
		return _r1;
	}

	/**
		// ToUpper maps the rune to upper case giving priority to the special mapping.
	**/
	@:keep
	static public function toUpper(_special:SpecialCase, _r:GoRune):GoRune {
		var __tmp__ = _to((0 : GoInt), _r, (_special : Slice<CaseRange>)),
			_r1:GoInt32 = __tmp__._0,
			_hadMapping:Bool = __tmp__._1;
		if ((_r1 == _r) && !_hadMapping) {
			_r1 = stdgo.unicode.Unicode.toUpper(_r);
		};
		return _r1;
	}
}
