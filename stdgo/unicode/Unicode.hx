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
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
private var __TurkishCase = (new Slice<stdgo.unicode.Unicode.CaseRange>(0, 0, (new CaseRange((73u32 : GoUInt32), (73u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (232 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : CaseRange), (new CaseRange((105u32 : GoUInt32), (105u32 : GoUInt32), (new GoArray<GoInt32>((199 : GoInt32), (0 : GoInt32), (199 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : CaseRange), (new CaseRange((304u32 : GoUInt32), (304u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-199 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : CaseRange), (new CaseRange((305u32 : GoUInt32), (305u32 : GoUInt32), (new GoArray<GoInt32>((-232 : GoInt32), (0 : GoInt32), (-232 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : CaseRange)) : stdgo.unicode.Unicode.SpecialCase);
/**
    
    
    
**/
var turkishCase : SpecialCase = __TurkishCase;
/**
    
    
    
**/
var azeriCase : SpecialCase = __TurkishCase;
/**
    
    
    
**/
private var __C = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((0 : GoUInt16), (31 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((127 : GoUInt16), (159 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((173 : GoUInt16), (1536 : GoUInt16), (1363 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1537 : GoUInt16), (1541 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1564 : GoUInt16), (1757 : GoUInt16), (193 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1807 : GoUInt16), (2274 : GoUInt16), (467 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6158 : GoUInt16), (8203 : GoUInt16), (2045 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8204 : GoUInt16), (8207 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8234 : GoUInt16), (8238 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8288 : GoUInt16), (8292 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8294 : GoUInt16), (8303 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((55296 : GoUInt16), (63743 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65279 : GoUInt16), (65529 : GoUInt16), (250 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65530 : GoUInt16), (65531 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((69821u32 : GoUInt32), (69837u32 : GoUInt32), (16u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((78896u32 : GoUInt32), (78904u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((113824u32 : GoUInt32), (113827u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((119155u32 : GoUInt32), (119162u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((917505u32 : GoUInt32), (917536u32 : GoUInt32), (31u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((917537u32 : GoUInt32), (917631u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((983040u32 : GoUInt32), (1048573u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((1048576u32 : GoUInt32), (1114109u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (2 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Cc = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((0 : GoUInt16), (31 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((127 : GoUInt16), (159 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), latinOffset : (2 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Cf = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((173 : GoUInt16), (1536 : GoUInt16), (1363 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1537 : GoUInt16), (1541 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1564 : GoUInt16), (1757 : GoUInt16), (193 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1807 : GoUInt16), (2274 : GoUInt16), (467 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6158 : GoUInt16), (8203 : GoUInt16), (2045 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8204 : GoUInt16), (8207 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8234 : GoUInt16), (8238 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8288 : GoUInt16), (8292 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8294 : GoUInt16), (8303 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65279 : GoUInt16), (65529 : GoUInt16), (250 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65530 : GoUInt16), (65531 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((69821u32 : GoUInt32), (69837u32 : GoUInt32), (16u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((78896u32 : GoUInt32), (78904u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((113824u32 : GoUInt32), (113827u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((119155u32 : GoUInt32), (119162u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((917505u32 : GoUInt32), (917536u32 : GoUInt32), (31u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((917537u32 : GoUInt32), (917631u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Co = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((57344 : GoUInt16), (63743 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((983040u32 : GoUInt32), (1048573u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((1048576u32 : GoUInt32), (1114109u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Cs = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((55296 : GoUInt16), (57343 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __L = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((65 : GoUInt16), (90 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((97 : GoUInt16), (122 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((170 : GoUInt16), (181 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((186 : GoUInt16), (192 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((193 : GoUInt16), (214 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((216 : GoUInt16), (246 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((248 : GoUInt16), (705 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((710 : GoUInt16), (721 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((736 : GoUInt16), (740 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((748 : GoUInt16), (750 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((880 : GoUInt16), (884 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((886 : GoUInt16), (887 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((890 : GoUInt16), (893 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((895 : GoUInt16), (902 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((904 : GoUInt16), (906 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((908 : GoUInt16), (910 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((911 : GoUInt16), (929 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((931 : GoUInt16), (1013 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1015 : GoUInt16), (1153 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1162 : GoUInt16), (1327 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1329 : GoUInt16), (1366 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1369 : GoUInt16), (1376 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1377 : GoUInt16), (1416 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1488 : GoUInt16), (1514 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1519 : GoUInt16), (1522 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1568 : GoUInt16), (1610 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1646 : GoUInt16), (1647 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1649 : GoUInt16), (1747 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1749 : GoUInt16), (1765 : GoUInt16), (16 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1766 : GoUInt16), (1774 : GoUInt16), (8 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1775 : GoUInt16), (1786 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1787 : GoUInt16), (1788 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1791 : GoUInt16), (1808 : GoUInt16), (17 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1810 : GoUInt16), (1839 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1869 : GoUInt16), (1957 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1969 : GoUInt16), (1994 : GoUInt16), (25 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1995 : GoUInt16), (2026 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2036 : GoUInt16), (2037 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2042 : GoUInt16), (2048 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2049 : GoUInt16), (2069 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2074 : GoUInt16), (2084 : GoUInt16), (10 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2088 : GoUInt16), (2112 : GoUInt16), (24 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2113 : GoUInt16), (2136 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2144 : GoUInt16), (2154 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2208 : GoUInt16), (2228 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2230 : GoUInt16), (2247 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2308 : GoUInt16), (2361 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2365 : GoUInt16), (2384 : GoUInt16), (19 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2392 : GoUInt16), (2401 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2417 : GoUInt16), (2432 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2437 : GoUInt16), (2444 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2447 : GoUInt16), (2448 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2451 : GoUInt16), (2472 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2474 : GoUInt16), (2480 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2482 : GoUInt16), (2486 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2487 : GoUInt16), (2489 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2493 : GoUInt16), (2510 : GoUInt16), (17 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2524 : GoUInt16), (2525 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2527 : GoUInt16), (2529 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2544 : GoUInt16), (2545 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2556 : GoUInt16), (2565 : GoUInt16), (9 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2566 : GoUInt16), (2570 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2575 : GoUInt16), (2576 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2579 : GoUInt16), (2600 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2602 : GoUInt16), (2608 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2610 : GoUInt16), (2611 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2613 : GoUInt16), (2614 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2616 : GoUInt16), (2617 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2649 : GoUInt16), (2652 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2654 : GoUInt16), (2674 : GoUInt16), (20 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2675 : GoUInt16), (2676 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2693 : GoUInt16), (2701 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2703 : GoUInt16), (2705 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2707 : GoUInt16), (2728 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2730 : GoUInt16), (2736 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2738 : GoUInt16), (2739 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2741 : GoUInt16), (2745 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2749 : GoUInt16), (2768 : GoUInt16), (19 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2784 : GoUInt16), (2785 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2809 : GoUInt16), (2821 : GoUInt16), (12 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2822 : GoUInt16), (2828 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2831 : GoUInt16), (2832 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2835 : GoUInt16), (2856 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2858 : GoUInt16), (2864 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2866 : GoUInt16), (2867 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2869 : GoUInt16), (2873 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2877 : GoUInt16), (2908 : GoUInt16), (31 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2909 : GoUInt16), (2911 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2912 : GoUInt16), (2913 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2929 : GoUInt16), (2947 : GoUInt16), (18 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2949 : GoUInt16), (2954 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2958 : GoUInt16), (2960 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2962 : GoUInt16), (2965 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2969 : GoUInt16), (2970 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2972 : GoUInt16), (2974 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2975 : GoUInt16), (2979 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2980 : GoUInt16), (2984 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2985 : GoUInt16), (2986 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2990 : GoUInt16), (3001 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3024 : GoUInt16), (3077 : GoUInt16), (53 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3078 : GoUInt16), (3084 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3086 : GoUInt16), (3088 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3090 : GoUInt16), (3112 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3114 : GoUInt16), (3129 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3133 : GoUInt16), (3160 : GoUInt16), (27 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3161 : GoUInt16), (3162 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3168 : GoUInt16), (3169 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3200 : GoUInt16), (3205 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3206 : GoUInt16), (3212 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3214 : GoUInt16), (3216 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3218 : GoUInt16), (3240 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3242 : GoUInt16), (3251 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3253 : GoUInt16), (3257 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3261 : GoUInt16), (3294 : GoUInt16), (33 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3296 : GoUInt16), (3297 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3313 : GoUInt16), (3314 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3332 : GoUInt16), (3340 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3342 : GoUInt16), (3344 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3346 : GoUInt16), (3386 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3389 : GoUInt16), (3406 : GoUInt16), (17 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3412 : GoUInt16), (3414 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3423 : GoUInt16), (3425 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3450 : GoUInt16), (3455 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3461 : GoUInt16), (3478 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3482 : GoUInt16), (3505 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3507 : GoUInt16), (3515 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3517 : GoUInt16), (3520 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3521 : GoUInt16), (3526 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3585 : GoUInt16), (3632 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3634 : GoUInt16), (3635 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3648 : GoUInt16), (3654 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3713 : GoUInt16), (3714 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3716 : GoUInt16), (3718 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3719 : GoUInt16), (3722 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3724 : GoUInt16), (3747 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3749 : GoUInt16), (3751 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3752 : GoUInt16), (3760 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3762 : GoUInt16), (3763 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3773 : GoUInt16), (3776 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3777 : GoUInt16), (3780 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3782 : GoUInt16), (3804 : GoUInt16), (22 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3805 : GoUInt16), (3807 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3840 : GoUInt16), (3904 : GoUInt16), (64 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3905 : GoUInt16), (3911 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3913 : GoUInt16), (3948 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3976 : GoUInt16), (3980 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4096 : GoUInt16), (4138 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4159 : GoUInt16), (4176 : GoUInt16), (17 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4177 : GoUInt16), (4181 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4186 : GoUInt16), (4189 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4193 : GoUInt16), (4197 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4198 : GoUInt16), (4206 : GoUInt16), (8 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4207 : GoUInt16), (4208 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4213 : GoUInt16), (4225 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4238 : GoUInt16), (4256 : GoUInt16), (18 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4257 : GoUInt16), (4293 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4295 : GoUInt16), (4301 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4304 : GoUInt16), (4346 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4348 : GoUInt16), (4680 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4682 : GoUInt16), (4685 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4688 : GoUInt16), (4694 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4696 : GoUInt16), (4698 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4699 : GoUInt16), (4701 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4704 : GoUInt16), (4744 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4746 : GoUInt16), (4749 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4752 : GoUInt16), (4784 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4786 : GoUInt16), (4789 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4792 : GoUInt16), (4798 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4800 : GoUInt16), (4802 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4803 : GoUInt16), (4805 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4808 : GoUInt16), (4822 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4824 : GoUInt16), (4880 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4882 : GoUInt16), (4885 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4888 : GoUInt16), (4954 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4992 : GoUInt16), (5007 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5024 : GoUInt16), (5109 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5112 : GoUInt16), (5117 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5121 : GoUInt16), (5740 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5743 : GoUInt16), (5759 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5761 : GoUInt16), (5786 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5792 : GoUInt16), (5866 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5873 : GoUInt16), (5880 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5888 : GoUInt16), (5900 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5902 : GoUInt16), (5905 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5920 : GoUInt16), (5937 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5952 : GoUInt16), (5969 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5984 : GoUInt16), (5996 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5998 : GoUInt16), (6000 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6016 : GoUInt16), (6067 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6103 : GoUInt16), (6108 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6176 : GoUInt16), (6264 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6272 : GoUInt16), (6276 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6279 : GoUInt16), (6312 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6314 : GoUInt16), (6320 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6321 : GoUInt16), (6389 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6400 : GoUInt16), (6430 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6480 : GoUInt16), (6509 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6512 : GoUInt16), (6516 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6528 : GoUInt16), (6571 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6576 : GoUInt16), (6601 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6656 : GoUInt16), (6678 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6688 : GoUInt16), (6740 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6823 : GoUInt16), (6917 : GoUInt16), (94 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6918 : GoUInt16), (6963 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6981 : GoUInt16), (6987 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7043 : GoUInt16), (7072 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7086 : GoUInt16), (7087 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7098 : GoUInt16), (7141 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7168 : GoUInt16), (7203 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7245 : GoUInt16), (7247 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7258 : GoUInt16), (7293 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7296 : GoUInt16), (7304 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7312 : GoUInt16), (7354 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7357 : GoUInt16), (7359 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7401 : GoUInt16), (7404 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7406 : GoUInt16), (7411 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7413 : GoUInt16), (7414 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7418 : GoUInt16), (7424 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7425 : GoUInt16), (7615 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7680 : GoUInt16), (7957 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7960 : GoUInt16), (7965 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7968 : GoUInt16), (8005 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8008 : GoUInt16), (8013 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8016 : GoUInt16), (8023 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8025 : GoUInt16), (8031 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8032 : GoUInt16), (8061 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8064 : GoUInt16), (8116 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8118 : GoUInt16), (8124 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8126 : GoUInt16), (8130 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8131 : GoUInt16), (8132 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8134 : GoUInt16), (8140 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8144 : GoUInt16), (8147 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8150 : GoUInt16), (8155 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8160 : GoUInt16), (8172 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8178 : GoUInt16), (8180 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8182 : GoUInt16), (8188 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8305 : GoUInt16), (8319 : GoUInt16), (14 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8336 : GoUInt16), (8348 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8450 : GoUInt16), (8455 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8458 : GoUInt16), (8467 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8469 : GoUInt16), (8473 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8474 : GoUInt16), (8477 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8484 : GoUInt16), (8490 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8491 : GoUInt16), (8493 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8495 : GoUInt16), (8505 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8508 : GoUInt16), (8511 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8517 : GoUInt16), (8521 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8526 : GoUInt16), (8579 : GoUInt16), (53 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8580 : GoUInt16), (11264 : GoUInt16), (2684 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11265 : GoUInt16), (11310 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11312 : GoUInt16), (11358 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11360 : GoUInt16), (11492 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11499 : GoUInt16), (11502 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11506 : GoUInt16), (11507 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11520 : GoUInt16), (11557 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11559 : GoUInt16), (11565 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11568 : GoUInt16), (11623 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11631 : GoUInt16), (11648 : GoUInt16), (17 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11649 : GoUInt16), (11670 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11680 : GoUInt16), (11686 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11688 : GoUInt16), (11694 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11696 : GoUInt16), (11702 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11704 : GoUInt16), (11710 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11712 : GoUInt16), (11718 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11720 : GoUInt16), (11726 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11728 : GoUInt16), (11734 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11736 : GoUInt16), (11742 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11823 : GoUInt16), (12293 : GoUInt16), (470 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12294 : GoUInt16), (12337 : GoUInt16), (43 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12338 : GoUInt16), (12341 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12347 : GoUInt16), (12348 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12353 : GoUInt16), (12438 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12445 : GoUInt16), (12447 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12449 : GoUInt16), (12538 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12540 : GoUInt16), (12543 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12549 : GoUInt16), (12591 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12593 : GoUInt16), (12686 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12704 : GoUInt16), (12735 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12784 : GoUInt16), (12799 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((13312 : GoUInt16), (19903 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((19968 : GoUInt16), (40956 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((40960 : GoUInt16), (42124 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42192 : GoUInt16), (42237 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42240 : GoUInt16), (42508 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42512 : GoUInt16), (42527 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42538 : GoUInt16), (42539 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42560 : GoUInt16), (42606 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42623 : GoUInt16), (42653 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42656 : GoUInt16), (42725 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42775 : GoUInt16), (42783 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42786 : GoUInt16), (42888 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42891 : GoUInt16), (42943 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42946 : GoUInt16), (42954 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42997 : GoUInt16), (43009 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43011 : GoUInt16), (43013 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43015 : GoUInt16), (43018 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43020 : GoUInt16), (43042 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43072 : GoUInt16), (43123 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43138 : GoUInt16), (43187 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43250 : GoUInt16), (43255 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43259 : GoUInt16), (43261 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43262 : GoUInt16), (43274 : GoUInt16), (12 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43275 : GoUInt16), (43301 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43312 : GoUInt16), (43334 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43360 : GoUInt16), (43388 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43396 : GoUInt16), (43442 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43471 : GoUInt16), (43488 : GoUInt16), (17 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43489 : GoUInt16), (43492 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43494 : GoUInt16), (43503 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43514 : GoUInt16), (43518 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43520 : GoUInt16), (43560 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43584 : GoUInt16), (43586 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43588 : GoUInt16), (43595 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43616 : GoUInt16), (43638 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43642 : GoUInt16), (43646 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43647 : GoUInt16), (43695 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43697 : GoUInt16), (43701 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43702 : GoUInt16), (43705 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43706 : GoUInt16), (43709 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43712 : GoUInt16), (43714 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43739 : GoUInt16), (43741 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43744 : GoUInt16), (43754 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43762 : GoUInt16), (43764 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43777 : GoUInt16), (43782 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43785 : GoUInt16), (43790 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43793 : GoUInt16), (43798 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43808 : GoUInt16), (43814 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43816 : GoUInt16), (43822 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43824 : GoUInt16), (43866 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43868 : GoUInt16), (43881 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43888 : GoUInt16), (44002 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44032 : GoUInt16), (55203 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((55216 : GoUInt16), (55238 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((55243 : GoUInt16), (55291 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((63744 : GoUInt16), (64109 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64112 : GoUInt16), (64217 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64256 : GoUInt16), (64262 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64275 : GoUInt16), (64279 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64285 : GoUInt16), (64287 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64288 : GoUInt16), (64296 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64298 : GoUInt16), (64310 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64312 : GoUInt16), (64316 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64318 : GoUInt16), (64320 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64321 : GoUInt16), (64323 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64324 : GoUInt16), (64326 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64327 : GoUInt16), (64433 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64467 : GoUInt16), (64829 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64848 : GoUInt16), (64911 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64914 : GoUInt16), (64967 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65008 : GoUInt16), (65019 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65136 : GoUInt16), (65140 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65142 : GoUInt16), (65276 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65313 : GoUInt16), (65338 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65345 : GoUInt16), (65370 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65382 : GoUInt16), (65470 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65474 : GoUInt16), (65479 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65482 : GoUInt16), (65487 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65490 : GoUInt16), (65495 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65498 : GoUInt16), (65500 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((65536u32 : GoUInt32), (65547u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65549u32 : GoUInt32), (65574u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65576u32 : GoUInt32), (65594u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65596u32 : GoUInt32), (65597u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65599u32 : GoUInt32), (65613u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65616u32 : GoUInt32), (65629u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65664u32 : GoUInt32), (65786u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66176u32 : GoUInt32), (66204u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66208u32 : GoUInt32), (66256u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66304u32 : GoUInt32), (66335u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66349u32 : GoUInt32), (66368u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66370u32 : GoUInt32), (66377u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66384u32 : GoUInt32), (66421u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66432u32 : GoUInt32), (66461u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66464u32 : GoUInt32), (66499u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66504u32 : GoUInt32), (66511u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66560u32 : GoUInt32), (66717u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66736u32 : GoUInt32), (66771u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66776u32 : GoUInt32), (66811u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66816u32 : GoUInt32), (66855u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66864u32 : GoUInt32), (66915u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67072u32 : GoUInt32), (67382u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67392u32 : GoUInt32), (67413u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67424u32 : GoUInt32), (67431u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67584u32 : GoUInt32), (67589u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67592u32 : GoUInt32), (67594u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67595u32 : GoUInt32), (67637u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67639u32 : GoUInt32), (67640u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67644u32 : GoUInt32), (67647u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67648u32 : GoUInt32), (67669u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67680u32 : GoUInt32), (67702u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67712u32 : GoUInt32), (67742u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67808u32 : GoUInt32), (67826u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67828u32 : GoUInt32), (67829u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67840u32 : GoUInt32), (67861u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67872u32 : GoUInt32), (67897u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67968u32 : GoUInt32), (68023u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68030u32 : GoUInt32), (68031u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68096u32 : GoUInt32), (68112u32 : GoUInt32), (16u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68113u32 : GoUInt32), (68115u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68117u32 : GoUInt32), (68119u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68121u32 : GoUInt32), (68149u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68192u32 : GoUInt32), (68220u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68224u32 : GoUInt32), (68252u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68288u32 : GoUInt32), (68295u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68297u32 : GoUInt32), (68324u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68352u32 : GoUInt32), (68405u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68416u32 : GoUInt32), (68437u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68448u32 : GoUInt32), (68466u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68480u32 : GoUInt32), (68497u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68608u32 : GoUInt32), (68680u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68736u32 : GoUInt32), (68786u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68800u32 : GoUInt32), (68850u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68864u32 : GoUInt32), (68899u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69248u32 : GoUInt32), (69289u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69296u32 : GoUInt32), (69297u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69376u32 : GoUInt32), (69404u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69415u32 : GoUInt32), (69424u32 : GoUInt32), (9u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69425u32 : GoUInt32), (69445u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69552u32 : GoUInt32), (69572u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69600u32 : GoUInt32), (69622u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69635u32 : GoUInt32), (69687u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69763u32 : GoUInt32), (69807u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69840u32 : GoUInt32), (69864u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69891u32 : GoUInt32), (69926u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69956u32 : GoUInt32), (69959u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69968u32 : GoUInt32), (70002u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70006u32 : GoUInt32), (70019u32 : GoUInt32), (13u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70020u32 : GoUInt32), (70066u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70081u32 : GoUInt32), (70084u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70106u32 : GoUInt32), (70108u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70144u32 : GoUInt32), (70161u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70163u32 : GoUInt32), (70187u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70272u32 : GoUInt32), (70278u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70280u32 : GoUInt32), (70282u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70283u32 : GoUInt32), (70285u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70287u32 : GoUInt32), (70301u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70303u32 : GoUInt32), (70312u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70320u32 : GoUInt32), (70366u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70405u32 : GoUInt32), (70412u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70415u32 : GoUInt32), (70416u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70419u32 : GoUInt32), (70440u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70442u32 : GoUInt32), (70448u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70450u32 : GoUInt32), (70451u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70453u32 : GoUInt32), (70457u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70461u32 : GoUInt32), (70480u32 : GoUInt32), (19u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70493u32 : GoUInt32), (70497u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70656u32 : GoUInt32), (70708u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70727u32 : GoUInt32), (70730u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70751u32 : GoUInt32), (70753u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70784u32 : GoUInt32), (70831u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70852u32 : GoUInt32), (70853u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70855u32 : GoUInt32), (71040u32 : GoUInt32), (185u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71041u32 : GoUInt32), (71086u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71128u32 : GoUInt32), (71131u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71168u32 : GoUInt32), (71215u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71236u32 : GoUInt32), (71296u32 : GoUInt32), (60u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71297u32 : GoUInt32), (71338u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71352u32 : GoUInt32), (71424u32 : GoUInt32), (72u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71425u32 : GoUInt32), (71450u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71680u32 : GoUInt32), (71723u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71840u32 : GoUInt32), (71903u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71935u32 : GoUInt32), (71942u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71945u32 : GoUInt32), (71948u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71949u32 : GoUInt32), (71955u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71957u32 : GoUInt32), (71958u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71960u32 : GoUInt32), (71983u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71999u32 : GoUInt32), (72001u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72096u32 : GoUInt32), (72103u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72106u32 : GoUInt32), (72144u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72161u32 : GoUInt32), (72163u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72192u32 : GoUInt32), (72203u32 : GoUInt32), (11u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72204u32 : GoUInt32), (72242u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72250u32 : GoUInt32), (72272u32 : GoUInt32), (22u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72284u32 : GoUInt32), (72329u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72349u32 : GoUInt32), (72384u32 : GoUInt32), (35u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72385u32 : GoUInt32), (72440u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72704u32 : GoUInt32), (72712u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72714u32 : GoUInt32), (72750u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72768u32 : GoUInt32), (72818u32 : GoUInt32), (50u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72819u32 : GoUInt32), (72847u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72960u32 : GoUInt32), (72966u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72968u32 : GoUInt32), (72969u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72971u32 : GoUInt32), (73008u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73030u32 : GoUInt32), (73056u32 : GoUInt32), (26u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73057u32 : GoUInt32), (73061u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73063u32 : GoUInt32), (73064u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73066u32 : GoUInt32), (73097u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73112u32 : GoUInt32), (73440u32 : GoUInt32), (328u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73441u32 : GoUInt32), (73458u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73648u32 : GoUInt32), (73728u32 : GoUInt32), (80u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73729u32 : GoUInt32), (74649u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((74880u32 : GoUInt32), (75075u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((77824u32 : GoUInt32), (78894u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((82944u32 : GoUInt32), (83526u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92160u32 : GoUInt32), (92728u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92736u32 : GoUInt32), (92766u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92880u32 : GoUInt32), (92909u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92928u32 : GoUInt32), (92975u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92992u32 : GoUInt32), (92995u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93027u32 : GoUInt32), (93047u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93053u32 : GoUInt32), (93071u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93760u32 : GoUInt32), (93823u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93952u32 : GoUInt32), (94026u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94032u32 : GoUInt32), (94099u32 : GoUInt32), (67u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94100u32 : GoUInt32), (94111u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94176u32 : GoUInt32), (94177u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94179u32 : GoUInt32), (94208u32 : GoUInt32), (29u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94209u32 : GoUInt32), (100343u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((100352u32 : GoUInt32), (101589u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((101632u32 : GoUInt32), (101640u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((110592u32 : GoUInt32), (110878u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((110928u32 : GoUInt32), (110930u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((110948u32 : GoUInt32), (110951u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((110960u32 : GoUInt32), (111355u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((113664u32 : GoUInt32), (113770u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((113776u32 : GoUInt32), (113788u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((113792u32 : GoUInt32), (113800u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((113808u32 : GoUInt32), (113817u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119808u32 : GoUInt32), (119892u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119894u32 : GoUInt32), (119964u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119966u32 : GoUInt32), (119967u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119970u32 : GoUInt32), (119973u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119974u32 : GoUInt32), (119977u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119978u32 : GoUInt32), (119980u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119982u32 : GoUInt32), (119993u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119995u32 : GoUInt32), (119997u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119998u32 : GoUInt32), (120003u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120005u32 : GoUInt32), (120069u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120071u32 : GoUInt32), (120074u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120077u32 : GoUInt32), (120084u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120086u32 : GoUInt32), (120092u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120094u32 : GoUInt32), (120121u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120123u32 : GoUInt32), (120126u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120128u32 : GoUInt32), (120132u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120134u32 : GoUInt32), (120138u32 : GoUInt32), (4u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120139u32 : GoUInt32), (120144u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120146u32 : GoUInt32), (120485u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120488u32 : GoUInt32), (120512u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120514u32 : GoUInt32), (120538u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120540u32 : GoUInt32), (120570u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120572u32 : GoUInt32), (120596u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120598u32 : GoUInt32), (120628u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120630u32 : GoUInt32), (120654u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120656u32 : GoUInt32), (120686u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120688u32 : GoUInt32), (120712u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120714u32 : GoUInt32), (120744u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120746u32 : GoUInt32), (120770u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120772u32 : GoUInt32), (120779u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123136u32 : GoUInt32), (123180u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123191u32 : GoUInt32), (123197u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123214u32 : GoUInt32), (123584u32 : GoUInt32), (370u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123585u32 : GoUInt32), (123627u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((124928u32 : GoUInt32), (125124u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125184u32 : GoUInt32), (125251u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125259u32 : GoUInt32), (126464u32 : GoUInt32), (1205u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126465u32 : GoUInt32), (126467u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126469u32 : GoUInt32), (126495u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126497u32 : GoUInt32), (126498u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126500u32 : GoUInt32), (126503u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126505u32 : GoUInt32), (126514u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126516u32 : GoUInt32), (126519u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126521u32 : GoUInt32), (126523u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126530u32 : GoUInt32), (126535u32 : GoUInt32), (5u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126537u32 : GoUInt32), (126541u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126542u32 : GoUInt32), (126543u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126545u32 : GoUInt32), (126546u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126548u32 : GoUInt32), (126551u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126553u32 : GoUInt32), (126561u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126562u32 : GoUInt32), (126564u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126567u32 : GoUInt32), (126570u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126572u32 : GoUInt32), (126578u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126580u32 : GoUInt32), (126583u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126585u32 : GoUInt32), (126588u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126590u32 : GoUInt32), (126592u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126593u32 : GoUInt32), (126601u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126603u32 : GoUInt32), (126619u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126625u32 : GoUInt32), (126627u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126629u32 : GoUInt32), (126633u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126635u32 : GoUInt32), (126651u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((131072u32 : GoUInt32), (173789u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((173824u32 : GoUInt32), (177972u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((177984u32 : GoUInt32), (178205u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((178208u32 : GoUInt32), (183969u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((183984u32 : GoUInt32), (191456u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((194560u32 : GoUInt32), (195101u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((196608u32 : GoUInt32), (201546u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (6 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Ll = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((97 : GoUInt16), (122 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((181 : GoUInt16), (223 : GoUInt16), (42 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((224 : GoUInt16), (246 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((248 : GoUInt16), (255 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((257 : GoUInt16), (311 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((312 : GoUInt16), (328 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((329 : GoUInt16), (375 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((378 : GoUInt16), (382 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((383 : GoUInt16), (384 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((387 : GoUInt16), (389 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((392 : GoUInt16), (396 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((397 : GoUInt16), (402 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((405 : GoUInt16), (409 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((410 : GoUInt16), (411 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((414 : GoUInt16), (417 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((419 : GoUInt16), (421 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((424 : GoUInt16), (426 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((427 : GoUInt16), (429 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((432 : GoUInt16), (436 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((438 : GoUInt16), (441 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((442 : GoUInt16), (445 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((446 : GoUInt16), (447 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((454 : GoUInt16), (460 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((462 : GoUInt16), (476 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((477 : GoUInt16), (495 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((496 : GoUInt16), (499 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((501 : GoUInt16), (505 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((507 : GoUInt16), (563 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((564 : GoUInt16), (569 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((572 : GoUInt16), (575 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((576 : GoUInt16), (578 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((583 : GoUInt16), (591 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((592 : GoUInt16), (659 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((661 : GoUInt16), (687 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((881 : GoUInt16), (883 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((887 : GoUInt16), (891 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((892 : GoUInt16), (893 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((912 : GoUInt16), (940 : GoUInt16), (28 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((941 : GoUInt16), (974 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((976 : GoUInt16), (977 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((981 : GoUInt16), (983 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((985 : GoUInt16), (1007 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1008 : GoUInt16), (1011 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1013 : GoUInt16), (1019 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1020 : GoUInt16), (1072 : GoUInt16), (52 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1073 : GoUInt16), (1119 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1121 : GoUInt16), (1153 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1163 : GoUInt16), (1215 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1218 : GoUInt16), (1230 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1231 : GoUInt16), (1327 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1376 : GoUInt16), (1416 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4304 : GoUInt16), (4346 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4349 : GoUInt16), (4351 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5112 : GoUInt16), (5117 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7296 : GoUInt16), (7304 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7424 : GoUInt16), (7467 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7531 : GoUInt16), (7543 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7545 : GoUInt16), (7578 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7681 : GoUInt16), (7829 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7830 : GoUInt16), (7837 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7839 : GoUInt16), (7935 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7936 : GoUInt16), (7943 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7952 : GoUInt16), (7957 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7968 : GoUInt16), (7975 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7984 : GoUInt16), (7991 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8000 : GoUInt16), (8005 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8016 : GoUInt16), (8023 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8032 : GoUInt16), (8039 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8048 : GoUInt16), (8061 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8064 : GoUInt16), (8071 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8080 : GoUInt16), (8087 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8096 : GoUInt16), (8103 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8112 : GoUInt16), (8116 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8118 : GoUInt16), (8119 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8126 : GoUInt16), (8130 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8131 : GoUInt16), (8132 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8134 : GoUInt16), (8135 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8144 : GoUInt16), (8147 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8150 : GoUInt16), (8151 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8160 : GoUInt16), (8167 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8178 : GoUInt16), (8180 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8182 : GoUInt16), (8183 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8458 : GoUInt16), (8462 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8463 : GoUInt16), (8467 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8495 : GoUInt16), (8505 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8508 : GoUInt16), (8509 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8518 : GoUInt16), (8521 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8526 : GoUInt16), (8580 : GoUInt16), (54 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11312 : GoUInt16), (11358 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11361 : GoUInt16), (11365 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11366 : GoUInt16), (11372 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11377 : GoUInt16), (11379 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11380 : GoUInt16), (11382 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11383 : GoUInt16), (11387 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11393 : GoUInt16), (11491 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11492 : GoUInt16), (11500 : GoUInt16), (8 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11502 : GoUInt16), (11507 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11520 : GoUInt16), (11557 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11559 : GoUInt16), (11565 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42561 : GoUInt16), (42605 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42625 : GoUInt16), (42651 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42787 : GoUInt16), (42799 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42800 : GoUInt16), (42801 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42803 : GoUInt16), (42865 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42866 : GoUInt16), (42872 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42874 : GoUInt16), (42876 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42879 : GoUInt16), (42887 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42892 : GoUInt16), (42894 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42897 : GoUInt16), (42899 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42900 : GoUInt16), (42901 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42903 : GoUInt16), (42921 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42927 : GoUInt16), (42933 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42935 : GoUInt16), (42943 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42947 : GoUInt16), (42952 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42954 : GoUInt16), (42998 : GoUInt16), (44 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43002 : GoUInt16), (43824 : GoUInt16), (822 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43825 : GoUInt16), (43866 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43872 : GoUInt16), (43880 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43888 : GoUInt16), (43967 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64256 : GoUInt16), (64262 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64275 : GoUInt16), (64279 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65345 : GoUInt16), (65370 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((66600u32 : GoUInt32), (66639u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66776u32 : GoUInt32), (66811u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68800u32 : GoUInt32), (68850u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71872u32 : GoUInt32), (71903u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93792u32 : GoUInt32), (93823u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119834u32 : GoUInt32), (119859u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119886u32 : GoUInt32), (119892u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119894u32 : GoUInt32), (119911u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119938u32 : GoUInt32), (119963u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119990u32 : GoUInt32), (119993u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119995u32 : GoUInt32), (119997u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119998u32 : GoUInt32), (120003u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120005u32 : GoUInt32), (120015u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120042u32 : GoUInt32), (120067u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120094u32 : GoUInt32), (120119u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120146u32 : GoUInt32), (120171u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120198u32 : GoUInt32), (120223u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120250u32 : GoUInt32), (120275u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120302u32 : GoUInt32), (120327u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120354u32 : GoUInt32), (120379u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120406u32 : GoUInt32), (120431u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120458u32 : GoUInt32), (120485u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120514u32 : GoUInt32), (120538u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120540u32 : GoUInt32), (120545u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120572u32 : GoUInt32), (120596u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120598u32 : GoUInt32), (120603u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120630u32 : GoUInt32), (120654u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120656u32 : GoUInt32), (120661u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120688u32 : GoUInt32), (120712u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120714u32 : GoUInt32), (120719u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120746u32 : GoUInt32), (120770u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120772u32 : GoUInt32), (120777u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120779u32 : GoUInt32), (125218u32 : GoUInt32), (4439u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125219u32 : GoUInt32), (125251u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (4 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Lm = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((688 : GoUInt16), (705 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((710 : GoUInt16), (721 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((736 : GoUInt16), (740 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((748 : GoUInt16), (750 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((884 : GoUInt16), (890 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1369 : GoUInt16), (1600 : GoUInt16), (231 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1765 : GoUInt16), (1766 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2036 : GoUInt16), (2037 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2042 : GoUInt16), (2074 : GoUInt16), (32 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2084 : GoUInt16), (2088 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2417 : GoUInt16), (3654 : GoUInt16), (1237 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3782 : GoUInt16), (4348 : GoUInt16), (566 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6103 : GoUInt16), (6211 : GoUInt16), (108 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6823 : GoUInt16), (7288 : GoUInt16), (465 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7289 : GoUInt16), (7293 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7468 : GoUInt16), (7530 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7544 : GoUInt16), (7579 : GoUInt16), (35 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7580 : GoUInt16), (7615 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8305 : GoUInt16), (8319 : GoUInt16), (14 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8336 : GoUInt16), (8348 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11388 : GoUInt16), (11389 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11631 : GoUInt16), (11823 : GoUInt16), (192 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12293 : GoUInt16), (12337 : GoUInt16), (44 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12338 : GoUInt16), (12341 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12347 : GoUInt16), (12445 : GoUInt16), (98 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12446 : GoUInt16), (12540 : GoUInt16), (94 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12541 : GoUInt16), (12542 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((40981 : GoUInt16), (42232 : GoUInt16), (1251 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42233 : GoUInt16), (42237 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42508 : GoUInt16), (42623 : GoUInt16), (115 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42652 : GoUInt16), (42653 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42775 : GoUInt16), (42783 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42864 : GoUInt16), (42888 : GoUInt16), (24 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43000 : GoUInt16), (43001 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43471 : GoUInt16), (43494 : GoUInt16), (23 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43632 : GoUInt16), (43741 : GoUInt16), (109 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43763 : GoUInt16), (43764 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43868 : GoUInt16), (43871 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43881 : GoUInt16), (65392 : GoUInt16), (21511 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65438 : GoUInt16), (65439 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((92992u32 : GoUInt32), (92995u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((94099u32 : GoUInt32), (94111u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((94176u32 : GoUInt32), (94177u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((94179u32 : GoUInt32), (123191u32 : GoUInt32), (29012u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((123192u32 : GoUInt32), (123197u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((125259u32 : GoUInt32), (125259u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Lo = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((170 : GoUInt16), (186 : GoUInt16), (16 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((443 : GoUInt16), (448 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((449 : GoUInt16), (451 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((660 : GoUInt16), (1488 : GoUInt16), (828 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1489 : GoUInt16), (1514 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1519 : GoUInt16), (1522 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1568 : GoUInt16), (1599 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1601 : GoUInt16), (1610 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1646 : GoUInt16), (1647 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1649 : GoUInt16), (1747 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1749 : GoUInt16), (1774 : GoUInt16), (25 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1775 : GoUInt16), (1786 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1787 : GoUInt16), (1788 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1791 : GoUInt16), (1808 : GoUInt16), (17 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1810 : GoUInt16), (1839 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1869 : GoUInt16), (1957 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1969 : GoUInt16), (1994 : GoUInt16), (25 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1995 : GoUInt16), (2026 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2048 : GoUInt16), (2069 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2112 : GoUInt16), (2136 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2144 : GoUInt16), (2154 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2208 : GoUInt16), (2228 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2230 : GoUInt16), (2247 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2308 : GoUInt16), (2361 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2365 : GoUInt16), (2384 : GoUInt16), (19 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2392 : GoUInt16), (2401 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2418 : GoUInt16), (2432 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2437 : GoUInt16), (2444 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2447 : GoUInt16), (2448 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2451 : GoUInt16), (2472 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2474 : GoUInt16), (2480 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2482 : GoUInt16), (2486 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2487 : GoUInt16), (2489 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2493 : GoUInt16), (2510 : GoUInt16), (17 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2524 : GoUInt16), (2525 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2527 : GoUInt16), (2529 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2544 : GoUInt16), (2545 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2556 : GoUInt16), (2565 : GoUInt16), (9 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2566 : GoUInt16), (2570 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2575 : GoUInt16), (2576 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2579 : GoUInt16), (2600 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2602 : GoUInt16), (2608 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2610 : GoUInt16), (2611 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2613 : GoUInt16), (2614 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2616 : GoUInt16), (2617 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2649 : GoUInt16), (2652 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2654 : GoUInt16), (2674 : GoUInt16), (20 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2675 : GoUInt16), (2676 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2693 : GoUInt16), (2701 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2703 : GoUInt16), (2705 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2707 : GoUInt16), (2728 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2730 : GoUInt16), (2736 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2738 : GoUInt16), (2739 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2741 : GoUInt16), (2745 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2749 : GoUInt16), (2768 : GoUInt16), (19 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2784 : GoUInt16), (2785 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2809 : GoUInt16), (2821 : GoUInt16), (12 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2822 : GoUInt16), (2828 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2831 : GoUInt16), (2832 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2835 : GoUInt16), (2856 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2858 : GoUInt16), (2864 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2866 : GoUInt16), (2867 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2869 : GoUInt16), (2873 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2877 : GoUInt16), (2908 : GoUInt16), (31 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2909 : GoUInt16), (2911 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2912 : GoUInt16), (2913 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2929 : GoUInt16), (2947 : GoUInt16), (18 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2949 : GoUInt16), (2954 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2958 : GoUInt16), (2960 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2962 : GoUInt16), (2965 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2969 : GoUInt16), (2970 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2972 : GoUInt16), (2974 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2975 : GoUInt16), (2979 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2980 : GoUInt16), (2984 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2985 : GoUInt16), (2986 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2990 : GoUInt16), (3001 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3024 : GoUInt16), (3077 : GoUInt16), (53 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3078 : GoUInt16), (3084 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3086 : GoUInt16), (3088 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3090 : GoUInt16), (3112 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3114 : GoUInt16), (3129 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3133 : GoUInt16), (3160 : GoUInt16), (27 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3161 : GoUInt16), (3162 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3168 : GoUInt16), (3169 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3200 : GoUInt16), (3205 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3206 : GoUInt16), (3212 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3214 : GoUInt16), (3216 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3218 : GoUInt16), (3240 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3242 : GoUInt16), (3251 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3253 : GoUInt16), (3257 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3261 : GoUInt16), (3294 : GoUInt16), (33 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3296 : GoUInt16), (3297 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3313 : GoUInt16), (3314 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3332 : GoUInt16), (3340 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3342 : GoUInt16), (3344 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3346 : GoUInt16), (3386 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3389 : GoUInt16), (3406 : GoUInt16), (17 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3412 : GoUInt16), (3414 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3423 : GoUInt16), (3425 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3450 : GoUInt16), (3455 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3461 : GoUInt16), (3478 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3482 : GoUInt16), (3505 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3507 : GoUInt16), (3515 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3517 : GoUInt16), (3520 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3521 : GoUInt16), (3526 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3585 : GoUInt16), (3632 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3634 : GoUInt16), (3635 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3648 : GoUInt16), (3653 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3713 : GoUInt16), (3714 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3716 : GoUInt16), (3718 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3719 : GoUInt16), (3722 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3724 : GoUInt16), (3747 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3749 : GoUInt16), (3751 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3752 : GoUInt16), (3760 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3762 : GoUInt16), (3763 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3773 : GoUInt16), (3776 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3777 : GoUInt16), (3780 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3804 : GoUInt16), (3807 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3840 : GoUInt16), (3904 : GoUInt16), (64 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3905 : GoUInt16), (3911 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3913 : GoUInt16), (3948 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3976 : GoUInt16), (3980 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4096 : GoUInt16), (4138 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4159 : GoUInt16), (4176 : GoUInt16), (17 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4177 : GoUInt16), (4181 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4186 : GoUInt16), (4189 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4193 : GoUInt16), (4197 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4198 : GoUInt16), (4206 : GoUInt16), (8 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4207 : GoUInt16), (4208 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4213 : GoUInt16), (4225 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4238 : GoUInt16), (4352 : GoUInt16), (114 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4353 : GoUInt16), (4680 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4682 : GoUInt16), (4685 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4688 : GoUInt16), (4694 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4696 : GoUInt16), (4698 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4699 : GoUInt16), (4701 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4704 : GoUInt16), (4744 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4746 : GoUInt16), (4749 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4752 : GoUInt16), (4784 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4786 : GoUInt16), (4789 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4792 : GoUInt16), (4798 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4800 : GoUInt16), (4802 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4803 : GoUInt16), (4805 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4808 : GoUInt16), (4822 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4824 : GoUInt16), (4880 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4882 : GoUInt16), (4885 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4888 : GoUInt16), (4954 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4992 : GoUInt16), (5007 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5121 : GoUInt16), (5740 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5743 : GoUInt16), (5759 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5761 : GoUInt16), (5786 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5792 : GoUInt16), (5866 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5873 : GoUInt16), (5880 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5888 : GoUInt16), (5900 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5902 : GoUInt16), (5905 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5920 : GoUInt16), (5937 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5952 : GoUInt16), (5969 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5984 : GoUInt16), (5996 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5998 : GoUInt16), (6000 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6016 : GoUInt16), (6067 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6108 : GoUInt16), (6176 : GoUInt16), (68 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6177 : GoUInt16), (6210 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6212 : GoUInt16), (6264 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6272 : GoUInt16), (6276 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6279 : GoUInt16), (6312 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6314 : GoUInt16), (6320 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6321 : GoUInt16), (6389 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6400 : GoUInt16), (6430 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6480 : GoUInt16), (6509 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6512 : GoUInt16), (6516 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6528 : GoUInt16), (6571 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6576 : GoUInt16), (6601 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6656 : GoUInt16), (6678 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6688 : GoUInt16), (6740 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6917 : GoUInt16), (6963 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6981 : GoUInt16), (6987 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7043 : GoUInt16), (7072 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7086 : GoUInt16), (7087 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7098 : GoUInt16), (7141 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7168 : GoUInt16), (7203 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7245 : GoUInt16), (7247 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7258 : GoUInt16), (7287 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7401 : GoUInt16), (7404 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7406 : GoUInt16), (7411 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7413 : GoUInt16), (7414 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7418 : GoUInt16), (8501 : GoUInt16), (1083 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8502 : GoUInt16), (8504 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11568 : GoUInt16), (11623 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11648 : GoUInt16), (11670 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11680 : GoUInt16), (11686 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11688 : GoUInt16), (11694 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11696 : GoUInt16), (11702 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11704 : GoUInt16), (11710 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11712 : GoUInt16), (11718 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11720 : GoUInt16), (11726 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11728 : GoUInt16), (11734 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11736 : GoUInt16), (11742 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12294 : GoUInt16), (12348 : GoUInt16), (54 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12353 : GoUInt16), (12438 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12447 : GoUInt16), (12449 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12450 : GoUInt16), (12538 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12543 : GoUInt16), (12549 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12550 : GoUInt16), (12591 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12593 : GoUInt16), (12686 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12704 : GoUInt16), (12735 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12784 : GoUInt16), (12799 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((13312 : GoUInt16), (19903 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((19968 : GoUInt16), (40956 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((40960 : GoUInt16), (40980 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((40982 : GoUInt16), (42124 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42192 : GoUInt16), (42231 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42240 : GoUInt16), (42507 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42512 : GoUInt16), (42527 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42538 : GoUInt16), (42539 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42606 : GoUInt16), (42656 : GoUInt16), (50 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42657 : GoUInt16), (42725 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42895 : GoUInt16), (42999 : GoUInt16), (104 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43003 : GoUInt16), (43009 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43011 : GoUInt16), (43013 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43015 : GoUInt16), (43018 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43020 : GoUInt16), (43042 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43072 : GoUInt16), (43123 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43138 : GoUInt16), (43187 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43250 : GoUInt16), (43255 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43259 : GoUInt16), (43261 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43262 : GoUInt16), (43274 : GoUInt16), (12 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43275 : GoUInt16), (43301 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43312 : GoUInt16), (43334 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43360 : GoUInt16), (43388 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43396 : GoUInt16), (43442 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43488 : GoUInt16), (43492 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43495 : GoUInt16), (43503 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43514 : GoUInt16), (43518 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43520 : GoUInt16), (43560 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43584 : GoUInt16), (43586 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43588 : GoUInt16), (43595 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43616 : GoUInt16), (43631 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43633 : GoUInt16), (43638 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43642 : GoUInt16), (43646 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43647 : GoUInt16), (43695 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43697 : GoUInt16), (43701 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43702 : GoUInt16), (43705 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43706 : GoUInt16), (43709 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43712 : GoUInt16), (43714 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43739 : GoUInt16), (43740 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43744 : GoUInt16), (43754 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43762 : GoUInt16), (43777 : GoUInt16), (15 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43778 : GoUInt16), (43782 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43785 : GoUInt16), (43790 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43793 : GoUInt16), (43798 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43808 : GoUInt16), (43814 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43816 : GoUInt16), (43822 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43968 : GoUInt16), (44002 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44032 : GoUInt16), (55203 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((55216 : GoUInt16), (55238 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((55243 : GoUInt16), (55291 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((63744 : GoUInt16), (64109 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64112 : GoUInt16), (64217 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64285 : GoUInt16), (64287 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64288 : GoUInt16), (64296 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64298 : GoUInt16), (64310 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64312 : GoUInt16), (64316 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64318 : GoUInt16), (64320 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64321 : GoUInt16), (64323 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64324 : GoUInt16), (64326 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64327 : GoUInt16), (64433 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64467 : GoUInt16), (64829 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64848 : GoUInt16), (64911 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64914 : GoUInt16), (64967 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65008 : GoUInt16), (65019 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65136 : GoUInt16), (65140 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65142 : GoUInt16), (65276 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65382 : GoUInt16), (65391 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65393 : GoUInt16), (65437 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65440 : GoUInt16), (65470 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65474 : GoUInt16), (65479 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65482 : GoUInt16), (65487 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65490 : GoUInt16), (65495 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65498 : GoUInt16), (65500 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((65536u32 : GoUInt32), (65547u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65549u32 : GoUInt32), (65574u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65576u32 : GoUInt32), (65594u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65596u32 : GoUInt32), (65597u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65599u32 : GoUInt32), (65613u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65616u32 : GoUInt32), (65629u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65664u32 : GoUInt32), (65786u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66176u32 : GoUInt32), (66204u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66208u32 : GoUInt32), (66256u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66304u32 : GoUInt32), (66335u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66349u32 : GoUInt32), (66368u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66370u32 : GoUInt32), (66377u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66384u32 : GoUInt32), (66421u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66432u32 : GoUInt32), (66461u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66464u32 : GoUInt32), (66499u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66504u32 : GoUInt32), (66511u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66640u32 : GoUInt32), (66717u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66816u32 : GoUInt32), (66855u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66864u32 : GoUInt32), (66915u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67072u32 : GoUInt32), (67382u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67392u32 : GoUInt32), (67413u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67424u32 : GoUInt32), (67431u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67584u32 : GoUInt32), (67589u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67592u32 : GoUInt32), (67594u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67595u32 : GoUInt32), (67637u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67639u32 : GoUInt32), (67640u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67644u32 : GoUInt32), (67647u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67648u32 : GoUInt32), (67669u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67680u32 : GoUInt32), (67702u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67712u32 : GoUInt32), (67742u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67808u32 : GoUInt32), (67826u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67828u32 : GoUInt32), (67829u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67840u32 : GoUInt32), (67861u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67872u32 : GoUInt32), (67897u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67968u32 : GoUInt32), (68023u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68030u32 : GoUInt32), (68031u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68096u32 : GoUInt32), (68112u32 : GoUInt32), (16u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68113u32 : GoUInt32), (68115u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68117u32 : GoUInt32), (68119u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68121u32 : GoUInt32), (68149u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68192u32 : GoUInt32), (68220u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68224u32 : GoUInt32), (68252u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68288u32 : GoUInt32), (68295u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68297u32 : GoUInt32), (68324u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68352u32 : GoUInt32), (68405u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68416u32 : GoUInt32), (68437u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68448u32 : GoUInt32), (68466u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68480u32 : GoUInt32), (68497u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68608u32 : GoUInt32), (68680u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68864u32 : GoUInt32), (68899u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69248u32 : GoUInt32), (69289u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69296u32 : GoUInt32), (69297u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69376u32 : GoUInt32), (69404u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69415u32 : GoUInt32), (69424u32 : GoUInt32), (9u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69425u32 : GoUInt32), (69445u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69552u32 : GoUInt32), (69572u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69600u32 : GoUInt32), (69622u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69635u32 : GoUInt32), (69687u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69763u32 : GoUInt32), (69807u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69840u32 : GoUInt32), (69864u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69891u32 : GoUInt32), (69926u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69956u32 : GoUInt32), (69959u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69968u32 : GoUInt32), (70002u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70006u32 : GoUInt32), (70019u32 : GoUInt32), (13u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70020u32 : GoUInt32), (70066u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70081u32 : GoUInt32), (70084u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70106u32 : GoUInt32), (70108u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70144u32 : GoUInt32), (70161u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70163u32 : GoUInt32), (70187u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70272u32 : GoUInt32), (70278u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70280u32 : GoUInt32), (70282u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70283u32 : GoUInt32), (70285u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70287u32 : GoUInt32), (70301u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70303u32 : GoUInt32), (70312u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70320u32 : GoUInt32), (70366u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70405u32 : GoUInt32), (70412u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70415u32 : GoUInt32), (70416u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70419u32 : GoUInt32), (70440u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70442u32 : GoUInt32), (70448u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70450u32 : GoUInt32), (70451u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70453u32 : GoUInt32), (70457u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70461u32 : GoUInt32), (70480u32 : GoUInt32), (19u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70493u32 : GoUInt32), (70497u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70656u32 : GoUInt32), (70708u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70727u32 : GoUInt32), (70730u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70751u32 : GoUInt32), (70753u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70784u32 : GoUInt32), (70831u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70852u32 : GoUInt32), (70853u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70855u32 : GoUInt32), (71040u32 : GoUInt32), (185u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71041u32 : GoUInt32), (71086u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71128u32 : GoUInt32), (71131u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71168u32 : GoUInt32), (71215u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71236u32 : GoUInt32), (71296u32 : GoUInt32), (60u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71297u32 : GoUInt32), (71338u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71352u32 : GoUInt32), (71424u32 : GoUInt32), (72u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71425u32 : GoUInt32), (71450u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71680u32 : GoUInt32), (71723u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71935u32 : GoUInt32), (71942u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71945u32 : GoUInt32), (71948u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71949u32 : GoUInt32), (71955u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71957u32 : GoUInt32), (71958u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71960u32 : GoUInt32), (71983u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71999u32 : GoUInt32), (72001u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72096u32 : GoUInt32), (72103u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72106u32 : GoUInt32), (72144u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72161u32 : GoUInt32), (72163u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72192u32 : GoUInt32), (72203u32 : GoUInt32), (11u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72204u32 : GoUInt32), (72242u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72250u32 : GoUInt32), (72272u32 : GoUInt32), (22u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72284u32 : GoUInt32), (72329u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72349u32 : GoUInt32), (72384u32 : GoUInt32), (35u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72385u32 : GoUInt32), (72440u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72704u32 : GoUInt32), (72712u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72714u32 : GoUInt32), (72750u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72768u32 : GoUInt32), (72818u32 : GoUInt32), (50u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72819u32 : GoUInt32), (72847u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72960u32 : GoUInt32), (72966u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72968u32 : GoUInt32), (72969u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72971u32 : GoUInt32), (73008u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73030u32 : GoUInt32), (73056u32 : GoUInt32), (26u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73057u32 : GoUInt32), (73061u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73063u32 : GoUInt32), (73064u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73066u32 : GoUInt32), (73097u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73112u32 : GoUInt32), (73440u32 : GoUInt32), (328u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73441u32 : GoUInt32), (73458u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73648u32 : GoUInt32), (73728u32 : GoUInt32), (80u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73729u32 : GoUInt32), (74649u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((74880u32 : GoUInt32), (75075u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((77824u32 : GoUInt32), (78894u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((82944u32 : GoUInt32), (83526u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92160u32 : GoUInt32), (92728u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92736u32 : GoUInt32), (92766u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92880u32 : GoUInt32), (92909u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92928u32 : GoUInt32), (92975u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93027u32 : GoUInt32), (93047u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93053u32 : GoUInt32), (93071u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93952u32 : GoUInt32), (94026u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94032u32 : GoUInt32), (94208u32 : GoUInt32), (176u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94209u32 : GoUInt32), (100343u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((100352u32 : GoUInt32), (101589u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((101632u32 : GoUInt32), (101640u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((110592u32 : GoUInt32), (110878u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((110928u32 : GoUInt32), (110930u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((110948u32 : GoUInt32), (110951u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((110960u32 : GoUInt32), (111355u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((113664u32 : GoUInt32), (113770u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((113776u32 : GoUInt32), (113788u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((113792u32 : GoUInt32), (113800u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((113808u32 : GoUInt32), (113817u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123136u32 : GoUInt32), (123180u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123214u32 : GoUInt32), (123584u32 : GoUInt32), (370u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123585u32 : GoUInt32), (123627u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((124928u32 : GoUInt32), (125124u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126464u32 : GoUInt32), (126467u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126469u32 : GoUInt32), (126495u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126497u32 : GoUInt32), (126498u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126500u32 : GoUInt32), (126503u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126505u32 : GoUInt32), (126514u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126516u32 : GoUInt32), (126519u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126521u32 : GoUInt32), (126523u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126530u32 : GoUInt32), (126535u32 : GoUInt32), (5u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126537u32 : GoUInt32), (126541u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126542u32 : GoUInt32), (126543u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126545u32 : GoUInt32), (126546u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126548u32 : GoUInt32), (126551u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126553u32 : GoUInt32), (126561u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126562u32 : GoUInt32), (126564u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126567u32 : GoUInt32), (126570u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126572u32 : GoUInt32), (126578u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126580u32 : GoUInt32), (126583u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126585u32 : GoUInt32), (126588u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126590u32 : GoUInt32), (126592u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126593u32 : GoUInt32), (126601u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126603u32 : GoUInt32), (126619u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126625u32 : GoUInt32), (126627u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126629u32 : GoUInt32), (126633u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126635u32 : GoUInt32), (126651u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((131072u32 : GoUInt32), (173789u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((173824u32 : GoUInt32), (177972u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((177984u32 : GoUInt32), (178205u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((178208u32 : GoUInt32), (183969u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((183984u32 : GoUInt32), (191456u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((194560u32 : GoUInt32), (195101u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((196608u32 : GoUInt32), (201546u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (1 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Lt = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((453 : GoUInt16), (459 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((498 : GoUInt16), (8072 : GoUInt16), (7574 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8073 : GoUInt16), (8079 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8088 : GoUInt16), (8095 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8104 : GoUInt16), (8111 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8124 : GoUInt16), (8140 : GoUInt16), (16 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8188 : GoUInt16), (8188 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Lu = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((65 : GoUInt16), (90 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((192 : GoUInt16), (214 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((216 : GoUInt16), (222 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((256 : GoUInt16), (310 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((313 : GoUInt16), (327 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((330 : GoUInt16), (376 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((377 : GoUInt16), (381 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((385 : GoUInt16), (386 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((388 : GoUInt16), (390 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((391 : GoUInt16), (393 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((394 : GoUInt16), (395 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((398 : GoUInt16), (401 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((403 : GoUInt16), (404 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((406 : GoUInt16), (408 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((412 : GoUInt16), (413 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((415 : GoUInt16), (416 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((418 : GoUInt16), (422 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((423 : GoUInt16), (425 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((428 : GoUInt16), (430 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((431 : GoUInt16), (433 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((434 : GoUInt16), (435 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((437 : GoUInt16), (439 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((440 : GoUInt16), (444 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((452 : GoUInt16), (461 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((463 : GoUInt16), (475 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((478 : GoUInt16), (494 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((497 : GoUInt16), (500 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((502 : GoUInt16), (504 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((506 : GoUInt16), (562 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((570 : GoUInt16), (571 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((573 : GoUInt16), (574 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((577 : GoUInt16), (579 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((580 : GoUInt16), (582 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((584 : GoUInt16), (590 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((880 : GoUInt16), (882 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((886 : GoUInt16), (895 : GoUInt16), (9 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((902 : GoUInt16), (904 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((905 : GoUInt16), (906 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((908 : GoUInt16), (910 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((911 : GoUInt16), (913 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((914 : GoUInt16), (929 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((931 : GoUInt16), (939 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((975 : GoUInt16), (978 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((979 : GoUInt16), (980 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((984 : GoUInt16), (1006 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1012 : GoUInt16), (1015 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1017 : GoUInt16), (1018 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1021 : GoUInt16), (1071 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1120 : GoUInt16), (1152 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1162 : GoUInt16), (1216 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1217 : GoUInt16), (1229 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1232 : GoUInt16), (1326 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1329 : GoUInt16), (1366 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4256 : GoUInt16), (4293 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4295 : GoUInt16), (4301 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5024 : GoUInt16), (5109 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7312 : GoUInt16), (7354 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7357 : GoUInt16), (7359 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7680 : GoUInt16), (7828 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7838 : GoUInt16), (7934 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7944 : GoUInt16), (7951 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7960 : GoUInt16), (7965 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7976 : GoUInt16), (7983 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7992 : GoUInt16), (7999 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8008 : GoUInt16), (8013 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8025 : GoUInt16), (8031 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8040 : GoUInt16), (8047 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8120 : GoUInt16), (8123 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8136 : GoUInt16), (8139 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8152 : GoUInt16), (8155 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8168 : GoUInt16), (8172 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8184 : GoUInt16), (8187 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8450 : GoUInt16), (8455 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8459 : GoUInt16), (8461 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8464 : GoUInt16), (8466 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8469 : GoUInt16), (8473 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8474 : GoUInt16), (8477 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8484 : GoUInt16), (8490 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8491 : GoUInt16), (8493 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8496 : GoUInt16), (8499 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8510 : GoUInt16), (8511 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8517 : GoUInt16), (8579 : GoUInt16), (62 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11264 : GoUInt16), (11310 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11360 : GoUInt16), (11362 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11363 : GoUInt16), (11364 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11367 : GoUInt16), (11373 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11374 : GoUInt16), (11376 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11378 : GoUInt16), (11381 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11390 : GoUInt16), (11392 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11394 : GoUInt16), (11490 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11499 : GoUInt16), (11501 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11506 : GoUInt16), (42560 : GoUInt16), (31054 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42562 : GoUInt16), (42604 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42624 : GoUInt16), (42650 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42786 : GoUInt16), (42798 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42802 : GoUInt16), (42862 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42873 : GoUInt16), (42877 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42878 : GoUInt16), (42886 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42891 : GoUInt16), (42893 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42896 : GoUInt16), (42898 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42902 : GoUInt16), (42922 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42923 : GoUInt16), (42926 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42928 : GoUInt16), (42932 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42934 : GoUInt16), (42942 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42946 : GoUInt16), (42948 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42949 : GoUInt16), (42951 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42953 : GoUInt16), (42997 : GoUInt16), (44 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65313 : GoUInt16), (65338 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((66560u32 : GoUInt32), (66599u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66736u32 : GoUInt32), (66771u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68736u32 : GoUInt32), (68786u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71840u32 : GoUInt32), (71871u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93760u32 : GoUInt32), (93791u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119808u32 : GoUInt32), (119833u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119860u32 : GoUInt32), (119885u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119912u32 : GoUInt32), (119937u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119964u32 : GoUInt32), (119966u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119967u32 : GoUInt32), (119973u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119974u32 : GoUInt32), (119977u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119978u32 : GoUInt32), (119980u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119982u32 : GoUInt32), (119989u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120016u32 : GoUInt32), (120041u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120068u32 : GoUInt32), (120069u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120071u32 : GoUInt32), (120074u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120077u32 : GoUInt32), (120084u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120086u32 : GoUInt32), (120092u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120120u32 : GoUInt32), (120121u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120123u32 : GoUInt32), (120126u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120128u32 : GoUInt32), (120132u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120134u32 : GoUInt32), (120138u32 : GoUInt32), (4u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120139u32 : GoUInt32), (120144u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120172u32 : GoUInt32), (120197u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120224u32 : GoUInt32), (120249u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120276u32 : GoUInt32), (120301u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120328u32 : GoUInt32), (120353u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120380u32 : GoUInt32), (120405u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120432u32 : GoUInt32), (120457u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120488u32 : GoUInt32), (120512u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120546u32 : GoUInt32), (120570u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120604u32 : GoUInt32), (120628u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120662u32 : GoUInt32), (120686u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120720u32 : GoUInt32), (120744u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120778u32 : GoUInt32), (125184u32 : GoUInt32), (4406u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125185u32 : GoUInt32), (125217u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (3 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __M = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((768 : GoUInt16), (879 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1155 : GoUInt16), (1161 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1425 : GoUInt16), (1469 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1471 : GoUInt16), (1473 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1474 : GoUInt16), (1476 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1477 : GoUInt16), (1479 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1552 : GoUInt16), (1562 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1611 : GoUInt16), (1631 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1648 : GoUInt16), (1750 : GoUInt16), (102 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1751 : GoUInt16), (1756 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1759 : GoUInt16), (1764 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1767 : GoUInt16), (1768 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1770 : GoUInt16), (1773 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1809 : GoUInt16), (1840 : GoUInt16), (31 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1841 : GoUInt16), (1866 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1958 : GoUInt16), (1968 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2027 : GoUInt16), (2035 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2045 : GoUInt16), (2070 : GoUInt16), (25 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2071 : GoUInt16), (2073 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2075 : GoUInt16), (2083 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2085 : GoUInt16), (2087 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2089 : GoUInt16), (2093 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2137 : GoUInt16), (2139 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2259 : GoUInt16), (2273 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2275 : GoUInt16), (2307 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2362 : GoUInt16), (2364 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2366 : GoUInt16), (2383 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2385 : GoUInt16), (2391 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2402 : GoUInt16), (2403 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2433 : GoUInt16), (2435 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2492 : GoUInt16), (2494 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2495 : GoUInt16), (2500 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2503 : GoUInt16), (2504 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2507 : GoUInt16), (2509 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2519 : GoUInt16), (2530 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2531 : GoUInt16), (2558 : GoUInt16), (27 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2561 : GoUInt16), (2563 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2620 : GoUInt16), (2622 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2623 : GoUInt16), (2626 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2631 : GoUInt16), (2632 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2635 : GoUInt16), (2637 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2641 : GoUInt16), (2672 : GoUInt16), (31 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2673 : GoUInt16), (2677 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2689 : GoUInt16), (2691 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2748 : GoUInt16), (2750 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2751 : GoUInt16), (2757 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2759 : GoUInt16), (2761 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2763 : GoUInt16), (2765 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2786 : GoUInt16), (2787 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2810 : GoUInt16), (2815 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2817 : GoUInt16), (2819 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2876 : GoUInt16), (2878 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2879 : GoUInt16), (2884 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2887 : GoUInt16), (2888 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2891 : GoUInt16), (2893 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2901 : GoUInt16), (2903 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2914 : GoUInt16), (2915 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2946 : GoUInt16), (3006 : GoUInt16), (60 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3007 : GoUInt16), (3010 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3014 : GoUInt16), (3016 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3018 : GoUInt16), (3021 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3031 : GoUInt16), (3072 : GoUInt16), (41 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3073 : GoUInt16), (3076 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3134 : GoUInt16), (3140 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3142 : GoUInt16), (3144 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3146 : GoUInt16), (3149 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3157 : GoUInt16), (3158 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3170 : GoUInt16), (3171 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3201 : GoUInt16), (3203 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3260 : GoUInt16), (3262 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3263 : GoUInt16), (3268 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3270 : GoUInt16), (3272 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3274 : GoUInt16), (3277 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3285 : GoUInt16), (3286 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3298 : GoUInt16), (3299 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3328 : GoUInt16), (3331 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3387 : GoUInt16), (3388 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3390 : GoUInt16), (3396 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3398 : GoUInt16), (3400 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3402 : GoUInt16), (3405 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3415 : GoUInt16), (3426 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3427 : GoUInt16), (3457 : GoUInt16), (30 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3458 : GoUInt16), (3459 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3530 : GoUInt16), (3535 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3536 : GoUInt16), (3540 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3542 : GoUInt16), (3544 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3545 : GoUInt16), (3551 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3570 : GoUInt16), (3571 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3633 : GoUInt16), (3636 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3637 : GoUInt16), (3642 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3655 : GoUInt16), (3662 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3761 : GoUInt16), (3764 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3765 : GoUInt16), (3772 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3784 : GoUInt16), (3789 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3864 : GoUInt16), (3865 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3893 : GoUInt16), (3897 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3902 : GoUInt16), (3903 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3953 : GoUInt16), (3972 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3974 : GoUInt16), (3975 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3981 : GoUInt16), (3991 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3993 : GoUInt16), (4028 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4038 : GoUInt16), (4139 : GoUInt16), (101 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4140 : GoUInt16), (4158 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4182 : GoUInt16), (4185 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4190 : GoUInt16), (4192 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4194 : GoUInt16), (4196 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4199 : GoUInt16), (4205 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4209 : GoUInt16), (4212 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4226 : GoUInt16), (4237 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4239 : GoUInt16), (4250 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4251 : GoUInt16), (4253 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4957 : GoUInt16), (4959 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5906 : GoUInt16), (5908 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5938 : GoUInt16), (5940 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5970 : GoUInt16), (5971 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6002 : GoUInt16), (6003 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6068 : GoUInt16), (6099 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6109 : GoUInt16), (6155 : GoUInt16), (46 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6156 : GoUInt16), (6157 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6277 : GoUInt16), (6278 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6313 : GoUInt16), (6432 : GoUInt16), (119 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6433 : GoUInt16), (6443 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6448 : GoUInt16), (6459 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6679 : GoUInt16), (6683 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6741 : GoUInt16), (6750 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6752 : GoUInt16), (6780 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6783 : GoUInt16), (6832 : GoUInt16), (49 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6833 : GoUInt16), (6848 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6912 : GoUInt16), (6916 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6964 : GoUInt16), (6980 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7019 : GoUInt16), (7027 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7040 : GoUInt16), (7042 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7073 : GoUInt16), (7085 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7142 : GoUInt16), (7155 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7204 : GoUInt16), (7223 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7376 : GoUInt16), (7378 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7380 : GoUInt16), (7400 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7405 : GoUInt16), (7412 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7415 : GoUInt16), (7417 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7616 : GoUInt16), (7673 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7675 : GoUInt16), (7679 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8400 : GoUInt16), (8432 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11503 : GoUInt16), (11505 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11647 : GoUInt16), (11744 : GoUInt16), (97 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11745 : GoUInt16), (11775 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12330 : GoUInt16), (12335 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12441 : GoUInt16), (12442 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42607 : GoUInt16), (42610 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42612 : GoUInt16), (42621 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42654 : GoUInt16), (42655 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42736 : GoUInt16), (42737 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43010 : GoUInt16), (43014 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43019 : GoUInt16), (43043 : GoUInt16), (24 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43044 : GoUInt16), (43047 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43052 : GoUInt16), (43136 : GoUInt16), (84 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43137 : GoUInt16), (43188 : GoUInt16), (51 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43189 : GoUInt16), (43205 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43232 : GoUInt16), (43249 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43263 : GoUInt16), (43302 : GoUInt16), (39 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43303 : GoUInt16), (43309 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43335 : GoUInt16), (43347 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43392 : GoUInt16), (43395 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43443 : GoUInt16), (43456 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43493 : GoUInt16), (43561 : GoUInt16), (68 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43562 : GoUInt16), (43574 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43587 : GoUInt16), (43596 : GoUInt16), (9 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43597 : GoUInt16), (43643 : GoUInt16), (46 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43644 : GoUInt16), (43645 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43696 : GoUInt16), (43698 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43699 : GoUInt16), (43700 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43703 : GoUInt16), (43704 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43710 : GoUInt16), (43711 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43713 : GoUInt16), (43755 : GoUInt16), (42 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43756 : GoUInt16), (43759 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43765 : GoUInt16), (43766 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44003 : GoUInt16), (44010 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44012 : GoUInt16), (44013 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64286 : GoUInt16), (65024 : GoUInt16), (738 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65025 : GoUInt16), (65039 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65056 : GoUInt16), (65071 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((66045u32 : GoUInt32), (66272u32 : GoUInt32), (227u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66422u32 : GoUInt32), (66426u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68097u32 : GoUInt32), (68099u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68101u32 : GoUInt32), (68102u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68108u32 : GoUInt32), (68111u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68152u32 : GoUInt32), (68154u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68159u32 : GoUInt32), (68325u32 : GoUInt32), (166u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68326u32 : GoUInt32), (68900u32 : GoUInt32), (574u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68901u32 : GoUInt32), (68903u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69291u32 : GoUInt32), (69292u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69446u32 : GoUInt32), (69456u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69632u32 : GoUInt32), (69634u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69688u32 : GoUInt32), (69702u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69759u32 : GoUInt32), (69762u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69808u32 : GoUInt32), (69818u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69888u32 : GoUInt32), (69890u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69927u32 : GoUInt32), (69940u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69957u32 : GoUInt32), (69958u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70003u32 : GoUInt32), (70016u32 : GoUInt32), (13u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70017u32 : GoUInt32), (70018u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70067u32 : GoUInt32), (70080u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70089u32 : GoUInt32), (70092u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70094u32 : GoUInt32), (70095u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70188u32 : GoUInt32), (70199u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70206u32 : GoUInt32), (70367u32 : GoUInt32), (161u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70368u32 : GoUInt32), (70378u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70400u32 : GoUInt32), (70403u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70459u32 : GoUInt32), (70460u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70462u32 : GoUInt32), (70468u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70471u32 : GoUInt32), (70472u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70475u32 : GoUInt32), (70477u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70487u32 : GoUInt32), (70498u32 : GoUInt32), (11u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70499u32 : GoUInt32), (70502u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70503u32 : GoUInt32), (70508u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70512u32 : GoUInt32), (70516u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70709u32 : GoUInt32), (70726u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70750u32 : GoUInt32), (70832u32 : GoUInt32), (82u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70833u32 : GoUInt32), (70851u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71087u32 : GoUInt32), (71093u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71096u32 : GoUInt32), (71104u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71132u32 : GoUInt32), (71133u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71216u32 : GoUInt32), (71232u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71339u32 : GoUInt32), (71351u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71453u32 : GoUInt32), (71467u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71724u32 : GoUInt32), (71738u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71984u32 : GoUInt32), (71989u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71991u32 : GoUInt32), (71992u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71995u32 : GoUInt32), (71998u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72000u32 : GoUInt32), (72002u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72003u32 : GoUInt32), (72145u32 : GoUInt32), (142u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72146u32 : GoUInt32), (72151u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72154u32 : GoUInt32), (72160u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72164u32 : GoUInt32), (72193u32 : GoUInt32), (29u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72194u32 : GoUInt32), (72202u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72243u32 : GoUInt32), (72249u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72251u32 : GoUInt32), (72254u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72263u32 : GoUInt32), (72273u32 : GoUInt32), (10u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72274u32 : GoUInt32), (72283u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72330u32 : GoUInt32), (72345u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72751u32 : GoUInt32), (72758u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72760u32 : GoUInt32), (72767u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72850u32 : GoUInt32), (72871u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72873u32 : GoUInt32), (72886u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73009u32 : GoUInt32), (73014u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73018u32 : GoUInt32), (73020u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73021u32 : GoUInt32), (73023u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73024u32 : GoUInt32), (73029u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73031u32 : GoUInt32), (73098u32 : GoUInt32), (67u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73099u32 : GoUInt32), (73102u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73104u32 : GoUInt32), (73105u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73107u32 : GoUInt32), (73111u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73459u32 : GoUInt32), (73462u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92912u32 : GoUInt32), (92916u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92976u32 : GoUInt32), (92982u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94031u32 : GoUInt32), (94033u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94034u32 : GoUInt32), (94087u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94095u32 : GoUInt32), (94098u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94180u32 : GoUInt32), (94192u32 : GoUInt32), (12u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94193u32 : GoUInt32), (113821u32 : GoUInt32), (19628u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((113822u32 : GoUInt32), (119141u32 : GoUInt32), (5319u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119142u32 : GoUInt32), (119145u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119149u32 : GoUInt32), (119154u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119163u32 : GoUInt32), (119170u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119173u32 : GoUInt32), (119179u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119210u32 : GoUInt32), (119213u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119362u32 : GoUInt32), (119364u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121344u32 : GoUInt32), (121398u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121403u32 : GoUInt32), (121452u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121461u32 : GoUInt32), (121476u32 : GoUInt32), (15u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121499u32 : GoUInt32), (121503u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121505u32 : GoUInt32), (121519u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((122880u32 : GoUInt32), (122886u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((122888u32 : GoUInt32), (122904u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((122907u32 : GoUInt32), (122913u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((122915u32 : GoUInt32), (122916u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((122918u32 : GoUInt32), (122922u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123184u32 : GoUInt32), (123190u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123628u32 : GoUInt32), (123631u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125136u32 : GoUInt32), (125142u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125252u32 : GoUInt32), (125258u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((917760u32 : GoUInt32), (917999u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Mc = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((2307 : GoUInt16), (2363 : GoUInt16), (56 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2366 : GoUInt16), (2368 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2377 : GoUInt16), (2380 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2382 : GoUInt16), (2383 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2434 : GoUInt16), (2435 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2494 : GoUInt16), (2496 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2503 : GoUInt16), (2504 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2507 : GoUInt16), (2508 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2519 : GoUInt16), (2563 : GoUInt16), (44 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2622 : GoUInt16), (2624 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2691 : GoUInt16), (2750 : GoUInt16), (59 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2751 : GoUInt16), (2752 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2761 : GoUInt16), (2763 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2764 : GoUInt16), (2818 : GoUInt16), (54 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2819 : GoUInt16), (2878 : GoUInt16), (59 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2880 : GoUInt16), (2887 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2888 : GoUInt16), (2891 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2892 : GoUInt16), (2903 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3006 : GoUInt16), (3007 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3009 : GoUInt16), (3010 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3014 : GoUInt16), (3016 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3018 : GoUInt16), (3020 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3031 : GoUInt16), (3073 : GoUInt16), (42 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3074 : GoUInt16), (3075 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3137 : GoUInt16), (3140 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3202 : GoUInt16), (3203 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3262 : GoUInt16), (3264 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3265 : GoUInt16), (3268 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3271 : GoUInt16), (3272 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3274 : GoUInt16), (3275 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3285 : GoUInt16), (3286 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3330 : GoUInt16), (3331 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3390 : GoUInt16), (3392 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3398 : GoUInt16), (3400 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3402 : GoUInt16), (3404 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3415 : GoUInt16), (3458 : GoUInt16), (43 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3459 : GoUInt16), (3535 : GoUInt16), (76 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3536 : GoUInt16), (3537 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3544 : GoUInt16), (3551 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3570 : GoUInt16), (3571 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3902 : GoUInt16), (3903 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3967 : GoUInt16), (4139 : GoUInt16), (172 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4140 : GoUInt16), (4145 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4152 : GoUInt16), (4155 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4156 : GoUInt16), (4182 : GoUInt16), (26 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4183 : GoUInt16), (4194 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4195 : GoUInt16), (4196 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4199 : GoUInt16), (4205 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4227 : GoUInt16), (4228 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4231 : GoUInt16), (4236 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4239 : GoUInt16), (4250 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4251 : GoUInt16), (4252 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6070 : GoUInt16), (6078 : GoUInt16), (8 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6079 : GoUInt16), (6085 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6087 : GoUInt16), (6088 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6435 : GoUInt16), (6438 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6441 : GoUInt16), (6443 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6448 : GoUInt16), (6449 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6451 : GoUInt16), (6456 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6681 : GoUInt16), (6682 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6741 : GoUInt16), (6743 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6753 : GoUInt16), (6755 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6756 : GoUInt16), (6765 : GoUInt16), (9 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6766 : GoUInt16), (6770 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6916 : GoUInt16), (6965 : GoUInt16), (49 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6971 : GoUInt16), (6973 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6974 : GoUInt16), (6977 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6979 : GoUInt16), (6980 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7042 : GoUInt16), (7073 : GoUInt16), (31 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7078 : GoUInt16), (7079 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7082 : GoUInt16), (7143 : GoUInt16), (61 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7146 : GoUInt16), (7148 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7150 : GoUInt16), (7154 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7155 : GoUInt16), (7204 : GoUInt16), (49 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7205 : GoUInt16), (7211 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7220 : GoUInt16), (7221 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7393 : GoUInt16), (7415 : GoUInt16), (22 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12334 : GoUInt16), (12335 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43043 : GoUInt16), (43044 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43047 : GoUInt16), (43136 : GoUInt16), (89 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43137 : GoUInt16), (43188 : GoUInt16), (51 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43189 : GoUInt16), (43203 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43346 : GoUInt16), (43347 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43395 : GoUInt16), (43444 : GoUInt16), (49 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43445 : GoUInt16), (43450 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43451 : GoUInt16), (43454 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43455 : GoUInt16), (43456 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43567 : GoUInt16), (43568 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43571 : GoUInt16), (43572 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43597 : GoUInt16), (43643 : GoUInt16), (46 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43645 : GoUInt16), (43755 : GoUInt16), (110 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43758 : GoUInt16), (43759 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43765 : GoUInt16), (44003 : GoUInt16), (238 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44004 : GoUInt16), (44006 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44007 : GoUInt16), (44009 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44010 : GoUInt16), (44012 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((69632u32 : GoUInt32), (69634u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69762u32 : GoUInt32), (69808u32 : GoUInt32), (46u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69809u32 : GoUInt32), (69810u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69815u32 : GoUInt32), (69816u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69932u32 : GoUInt32), (69957u32 : GoUInt32), (25u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69958u32 : GoUInt32), (70018u32 : GoUInt32), (60u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70067u32 : GoUInt32), (70069u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70079u32 : GoUInt32), (70080u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70094u32 : GoUInt32), (70188u32 : GoUInt32), (94u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70189u32 : GoUInt32), (70190u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70194u32 : GoUInt32), (70195u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70197u32 : GoUInt32), (70368u32 : GoUInt32), (171u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70369u32 : GoUInt32), (70370u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70402u32 : GoUInt32), (70403u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70462u32 : GoUInt32), (70463u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70465u32 : GoUInt32), (70468u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70471u32 : GoUInt32), (70472u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70475u32 : GoUInt32), (70477u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70487u32 : GoUInt32), (70498u32 : GoUInt32), (11u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70499u32 : GoUInt32), (70709u32 : GoUInt32), (210u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70710u32 : GoUInt32), (70711u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70720u32 : GoUInt32), (70721u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70725u32 : GoUInt32), (70832u32 : GoUInt32), (107u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70833u32 : GoUInt32), (70834u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70841u32 : GoUInt32), (70843u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70844u32 : GoUInt32), (70846u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70849u32 : GoUInt32), (71087u32 : GoUInt32), (238u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71088u32 : GoUInt32), (71089u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71096u32 : GoUInt32), (71099u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71102u32 : GoUInt32), (71216u32 : GoUInt32), (114u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71217u32 : GoUInt32), (71218u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71227u32 : GoUInt32), (71228u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71230u32 : GoUInt32), (71340u32 : GoUInt32), (110u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71342u32 : GoUInt32), (71343u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71350u32 : GoUInt32), (71456u32 : GoUInt32), (106u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71457u32 : GoUInt32), (71462u32 : GoUInt32), (5u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71724u32 : GoUInt32), (71726u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71736u32 : GoUInt32), (71984u32 : GoUInt32), (248u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71985u32 : GoUInt32), (71989u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71991u32 : GoUInt32), (71992u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71997u32 : GoUInt32), (72000u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72002u32 : GoUInt32), (72145u32 : GoUInt32), (143u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72146u32 : GoUInt32), (72147u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72156u32 : GoUInt32), (72159u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72164u32 : GoUInt32), (72249u32 : GoUInt32), (85u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72279u32 : GoUInt32), (72280u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72343u32 : GoUInt32), (72751u32 : GoUInt32), (408u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72766u32 : GoUInt32), (72873u32 : GoUInt32), (107u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72881u32 : GoUInt32), (72884u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73098u32 : GoUInt32), (73102u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73107u32 : GoUInt32), (73108u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73110u32 : GoUInt32), (73461u32 : GoUInt32), (351u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73462u32 : GoUInt32), (94033u32 : GoUInt32), (20571u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94034u32 : GoUInt32), (94087u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94192u32 : GoUInt32), (94193u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119141u32 : GoUInt32), (119142u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119149u32 : GoUInt32), (119154u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Me = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((1160 : GoUInt16), (1161 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6846 : GoUInt16), (8413 : GoUInt16), (1567 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8414 : GoUInt16), (8416 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8418 : GoUInt16), (8420 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((42608 : GoUInt16), (42610 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Mn = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((768 : GoUInt16), (879 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1155 : GoUInt16), (1159 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1425 : GoUInt16), (1469 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1471 : GoUInt16), (1473 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1474 : GoUInt16), (1476 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1477 : GoUInt16), (1479 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1552 : GoUInt16), (1562 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1611 : GoUInt16), (1631 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1648 : GoUInt16), (1750 : GoUInt16), (102 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1751 : GoUInt16), (1756 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1759 : GoUInt16), (1764 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1767 : GoUInt16), (1768 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1770 : GoUInt16), (1773 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1809 : GoUInt16), (1840 : GoUInt16), (31 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1841 : GoUInt16), (1866 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1958 : GoUInt16), (1968 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2027 : GoUInt16), (2035 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2045 : GoUInt16), (2070 : GoUInt16), (25 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2071 : GoUInt16), (2073 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2075 : GoUInt16), (2083 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2085 : GoUInt16), (2087 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2089 : GoUInt16), (2093 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2137 : GoUInt16), (2139 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2259 : GoUInt16), (2273 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2275 : GoUInt16), (2306 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2362 : GoUInt16), (2364 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2369 : GoUInt16), (2376 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2381 : GoUInt16), (2385 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2386 : GoUInt16), (2391 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2402 : GoUInt16), (2403 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2433 : GoUInt16), (2492 : GoUInt16), (59 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2497 : GoUInt16), (2500 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2509 : GoUInt16), (2530 : GoUInt16), (21 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2531 : GoUInt16), (2558 : GoUInt16), (27 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2561 : GoUInt16), (2562 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2620 : GoUInt16), (2625 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2626 : GoUInt16), (2631 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2632 : GoUInt16), (2635 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2636 : GoUInt16), (2637 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2641 : GoUInt16), (2672 : GoUInt16), (31 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2673 : GoUInt16), (2677 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2689 : GoUInt16), (2690 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2748 : GoUInt16), (2753 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2754 : GoUInt16), (2757 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2759 : GoUInt16), (2760 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2765 : GoUInt16), (2786 : GoUInt16), (21 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2787 : GoUInt16), (2810 : GoUInt16), (23 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2811 : GoUInt16), (2815 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2817 : GoUInt16), (2876 : GoUInt16), (59 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2879 : GoUInt16), (2881 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2882 : GoUInt16), (2884 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2893 : GoUInt16), (2901 : GoUInt16), (8 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2902 : GoUInt16), (2914 : GoUInt16), (12 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2915 : GoUInt16), (2946 : GoUInt16), (31 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3008 : GoUInt16), (3021 : GoUInt16), (13 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3072 : GoUInt16), (3076 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3134 : GoUInt16), (3136 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3142 : GoUInt16), (3144 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3146 : GoUInt16), (3149 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3157 : GoUInt16), (3158 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3170 : GoUInt16), (3171 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3201 : GoUInt16), (3260 : GoUInt16), (59 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3263 : GoUInt16), (3270 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3276 : GoUInt16), (3277 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3298 : GoUInt16), (3299 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3328 : GoUInt16), (3329 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3387 : GoUInt16), (3388 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3393 : GoUInt16), (3396 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3405 : GoUInt16), (3426 : GoUInt16), (21 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3427 : GoUInt16), (3457 : GoUInt16), (30 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3530 : GoUInt16), (3538 : GoUInt16), (8 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3539 : GoUInt16), (3540 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3542 : GoUInt16), (3633 : GoUInt16), (91 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3636 : GoUInt16), (3642 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3655 : GoUInt16), (3662 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3761 : GoUInt16), (3764 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3765 : GoUInt16), (3772 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3784 : GoUInt16), (3789 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3864 : GoUInt16), (3865 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3893 : GoUInt16), (3897 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3953 : GoUInt16), (3966 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3968 : GoUInt16), (3972 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3974 : GoUInt16), (3975 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3981 : GoUInt16), (3991 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3993 : GoUInt16), (4028 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4038 : GoUInt16), (4141 : GoUInt16), (103 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4142 : GoUInt16), (4144 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4146 : GoUInt16), (4151 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4153 : GoUInt16), (4154 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4157 : GoUInt16), (4158 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4184 : GoUInt16), (4185 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4190 : GoUInt16), (4192 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4209 : GoUInt16), (4212 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4226 : GoUInt16), (4229 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4230 : GoUInt16), (4237 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4253 : GoUInt16), (4957 : GoUInt16), (704 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4958 : GoUInt16), (4959 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5906 : GoUInt16), (5908 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5938 : GoUInt16), (5940 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5970 : GoUInt16), (5971 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6002 : GoUInt16), (6003 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6068 : GoUInt16), (6069 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6071 : GoUInt16), (6077 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6086 : GoUInt16), (6089 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6090 : GoUInt16), (6099 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6109 : GoUInt16), (6155 : GoUInt16), (46 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6156 : GoUInt16), (6157 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6277 : GoUInt16), (6278 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6313 : GoUInt16), (6432 : GoUInt16), (119 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6433 : GoUInt16), (6434 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6439 : GoUInt16), (6440 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6450 : GoUInt16), (6457 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6458 : GoUInt16), (6459 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6679 : GoUInt16), (6680 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6683 : GoUInt16), (6742 : GoUInt16), (59 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6744 : GoUInt16), (6750 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6752 : GoUInt16), (6754 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6757 : GoUInt16), (6764 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6771 : GoUInt16), (6780 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6783 : GoUInt16), (6832 : GoUInt16), (49 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6833 : GoUInt16), (6845 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6847 : GoUInt16), (6848 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6912 : GoUInt16), (6915 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6964 : GoUInt16), (6966 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6967 : GoUInt16), (6970 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6972 : GoUInt16), (6978 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7019 : GoUInt16), (7027 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7040 : GoUInt16), (7041 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7074 : GoUInt16), (7077 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7080 : GoUInt16), (7081 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7083 : GoUInt16), (7085 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7142 : GoUInt16), (7144 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7145 : GoUInt16), (7149 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7151 : GoUInt16), (7153 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7212 : GoUInt16), (7219 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7222 : GoUInt16), (7223 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7376 : GoUInt16), (7378 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7380 : GoUInt16), (7392 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7394 : GoUInt16), (7400 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7405 : GoUInt16), (7412 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7416 : GoUInt16), (7417 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7616 : GoUInt16), (7673 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7675 : GoUInt16), (7679 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8400 : GoUInt16), (8412 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8417 : GoUInt16), (8421 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8422 : GoUInt16), (8432 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11503 : GoUInt16), (11505 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11647 : GoUInt16), (11744 : GoUInt16), (97 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11745 : GoUInt16), (11775 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12330 : GoUInt16), (12333 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12441 : GoUInt16), (12442 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42607 : GoUInt16), (42612 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42613 : GoUInt16), (42621 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42654 : GoUInt16), (42655 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42736 : GoUInt16), (42737 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43010 : GoUInt16), (43014 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43019 : GoUInt16), (43045 : GoUInt16), (26 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43046 : GoUInt16), (43052 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43204 : GoUInt16), (43205 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43232 : GoUInt16), (43249 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43263 : GoUInt16), (43302 : GoUInt16), (39 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43303 : GoUInt16), (43309 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43335 : GoUInt16), (43345 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43392 : GoUInt16), (43394 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43443 : GoUInt16), (43446 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43447 : GoUInt16), (43449 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43452 : GoUInt16), (43453 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43493 : GoUInt16), (43561 : GoUInt16), (68 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43562 : GoUInt16), (43566 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43569 : GoUInt16), (43570 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43573 : GoUInt16), (43574 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43587 : GoUInt16), (43596 : GoUInt16), (9 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43644 : GoUInt16), (43696 : GoUInt16), (52 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43698 : GoUInt16), (43700 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43703 : GoUInt16), (43704 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43710 : GoUInt16), (43711 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43713 : GoUInt16), (43756 : GoUInt16), (43 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43757 : GoUInt16), (43766 : GoUInt16), (9 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44005 : GoUInt16), (44008 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44013 : GoUInt16), (64286 : GoUInt16), (20273 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65024 : GoUInt16), (65039 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65056 : GoUInt16), (65071 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((66045u32 : GoUInt32), (66272u32 : GoUInt32), (227u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66422u32 : GoUInt32), (66426u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68097u32 : GoUInt32), (68099u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68101u32 : GoUInt32), (68102u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68108u32 : GoUInt32), (68111u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68152u32 : GoUInt32), (68154u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68159u32 : GoUInt32), (68325u32 : GoUInt32), (166u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68326u32 : GoUInt32), (68900u32 : GoUInt32), (574u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68901u32 : GoUInt32), (68903u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69291u32 : GoUInt32), (69292u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69446u32 : GoUInt32), (69456u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69633u32 : GoUInt32), (69688u32 : GoUInt32), (55u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69689u32 : GoUInt32), (69702u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69759u32 : GoUInt32), (69761u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69811u32 : GoUInt32), (69814u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69817u32 : GoUInt32), (69818u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69888u32 : GoUInt32), (69890u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69927u32 : GoUInt32), (69931u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69933u32 : GoUInt32), (69940u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70003u32 : GoUInt32), (70016u32 : GoUInt32), (13u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70017u32 : GoUInt32), (70070u32 : GoUInt32), (53u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70071u32 : GoUInt32), (70078u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70089u32 : GoUInt32), (70092u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70095u32 : GoUInt32), (70191u32 : GoUInt32), (96u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70192u32 : GoUInt32), (70193u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70196u32 : GoUInt32), (70198u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70199u32 : GoUInt32), (70206u32 : GoUInt32), (7u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70367u32 : GoUInt32), (70371u32 : GoUInt32), (4u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70372u32 : GoUInt32), (70378u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70400u32 : GoUInt32), (70401u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70459u32 : GoUInt32), (70460u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70464u32 : GoUInt32), (70502u32 : GoUInt32), (38u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70503u32 : GoUInt32), (70508u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70512u32 : GoUInt32), (70516u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70712u32 : GoUInt32), (70719u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70722u32 : GoUInt32), (70724u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70726u32 : GoUInt32), (70750u32 : GoUInt32), (24u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70835u32 : GoUInt32), (70840u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70842u32 : GoUInt32), (70847u32 : GoUInt32), (5u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70848u32 : GoUInt32), (70850u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70851u32 : GoUInt32), (71090u32 : GoUInt32), (239u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71091u32 : GoUInt32), (71093u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71100u32 : GoUInt32), (71101u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71103u32 : GoUInt32), (71104u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71132u32 : GoUInt32), (71133u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71219u32 : GoUInt32), (71226u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71229u32 : GoUInt32), (71231u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71232u32 : GoUInt32), (71339u32 : GoUInt32), (107u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71341u32 : GoUInt32), (71344u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71345u32 : GoUInt32), (71349u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71351u32 : GoUInt32), (71453u32 : GoUInt32), (102u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71454u32 : GoUInt32), (71455u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71458u32 : GoUInt32), (71461u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71463u32 : GoUInt32), (71467u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71727u32 : GoUInt32), (71735u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71737u32 : GoUInt32), (71738u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71995u32 : GoUInt32), (71996u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71998u32 : GoUInt32), (72003u32 : GoUInt32), (5u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72148u32 : GoUInt32), (72151u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72154u32 : GoUInt32), (72155u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72160u32 : GoUInt32), (72193u32 : GoUInt32), (33u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72194u32 : GoUInt32), (72202u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72243u32 : GoUInt32), (72248u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72251u32 : GoUInt32), (72254u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72263u32 : GoUInt32), (72273u32 : GoUInt32), (10u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72274u32 : GoUInt32), (72278u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72281u32 : GoUInt32), (72283u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72330u32 : GoUInt32), (72342u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72344u32 : GoUInt32), (72345u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72752u32 : GoUInt32), (72758u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72760u32 : GoUInt32), (72765u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72767u32 : GoUInt32), (72850u32 : GoUInt32), (83u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72851u32 : GoUInt32), (72871u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72874u32 : GoUInt32), (72880u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72882u32 : GoUInt32), (72883u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72885u32 : GoUInt32), (72886u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73009u32 : GoUInt32), (73014u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73018u32 : GoUInt32), (73020u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73021u32 : GoUInt32), (73023u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73024u32 : GoUInt32), (73029u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73031u32 : GoUInt32), (73104u32 : GoUInt32), (73u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73105u32 : GoUInt32), (73109u32 : GoUInt32), (4u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73111u32 : GoUInt32), (73459u32 : GoUInt32), (348u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73460u32 : GoUInt32), (92912u32 : GoUInt32), (19452u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92913u32 : GoUInt32), (92916u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92976u32 : GoUInt32), (92982u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94031u32 : GoUInt32), (94095u32 : GoUInt32), (64u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94096u32 : GoUInt32), (94098u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94180u32 : GoUInt32), (113821u32 : GoUInt32), (19641u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((113822u32 : GoUInt32), (119143u32 : GoUInt32), (5321u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119144u32 : GoUInt32), (119145u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119163u32 : GoUInt32), (119170u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119173u32 : GoUInt32), (119179u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119210u32 : GoUInt32), (119213u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119362u32 : GoUInt32), (119364u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121344u32 : GoUInt32), (121398u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121403u32 : GoUInt32), (121452u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121461u32 : GoUInt32), (121476u32 : GoUInt32), (15u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121499u32 : GoUInt32), (121503u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121505u32 : GoUInt32), (121519u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((122880u32 : GoUInt32), (122886u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((122888u32 : GoUInt32), (122904u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((122907u32 : GoUInt32), (122913u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((122915u32 : GoUInt32), (122916u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((122918u32 : GoUInt32), (122922u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123184u32 : GoUInt32), (123190u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123628u32 : GoUInt32), (123631u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125136u32 : GoUInt32), (125142u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125252u32 : GoUInt32), (125258u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((917760u32 : GoUInt32), (917999u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __N = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((48 : GoUInt16), (57 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((178 : GoUInt16), (179 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((185 : GoUInt16), (188 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((189 : GoUInt16), (190 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1632 : GoUInt16), (1641 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1776 : GoUInt16), (1785 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1984 : GoUInt16), (1993 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2406 : GoUInt16), (2415 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2534 : GoUInt16), (2543 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2548 : GoUInt16), (2553 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2662 : GoUInt16), (2671 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2790 : GoUInt16), (2799 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2918 : GoUInt16), (2927 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2930 : GoUInt16), (2935 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3046 : GoUInt16), (3058 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3174 : GoUInt16), (3183 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3192 : GoUInt16), (3198 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3302 : GoUInt16), (3311 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3416 : GoUInt16), (3422 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3430 : GoUInt16), (3448 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3558 : GoUInt16), (3567 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3664 : GoUInt16), (3673 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3792 : GoUInt16), (3801 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3872 : GoUInt16), (3891 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4160 : GoUInt16), (4169 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4240 : GoUInt16), (4249 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4969 : GoUInt16), (4988 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5870 : GoUInt16), (5872 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6112 : GoUInt16), (6121 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6128 : GoUInt16), (6137 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6160 : GoUInt16), (6169 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6470 : GoUInt16), (6479 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6608 : GoUInt16), (6618 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6784 : GoUInt16), (6793 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6800 : GoUInt16), (6809 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6992 : GoUInt16), (7001 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7088 : GoUInt16), (7097 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7232 : GoUInt16), (7241 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7248 : GoUInt16), (7257 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8304 : GoUInt16), (8308 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8309 : GoUInt16), (8313 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8320 : GoUInt16), (8329 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8528 : GoUInt16), (8578 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8581 : GoUInt16), (8585 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9312 : GoUInt16), (9371 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9450 : GoUInt16), (9471 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10102 : GoUInt16), (10131 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11517 : GoUInt16), (12295 : GoUInt16), (778 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12321 : GoUInt16), (12329 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12344 : GoUInt16), (12346 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12690 : GoUInt16), (12693 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12832 : GoUInt16), (12841 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12872 : GoUInt16), (12879 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12881 : GoUInt16), (12895 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12928 : GoUInt16), (12937 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12977 : GoUInt16), (12991 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42528 : GoUInt16), (42537 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42726 : GoUInt16), (42735 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43056 : GoUInt16), (43061 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43216 : GoUInt16), (43225 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43264 : GoUInt16), (43273 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43472 : GoUInt16), (43481 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43504 : GoUInt16), (43513 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43600 : GoUInt16), (43609 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44016 : GoUInt16), (44025 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65296 : GoUInt16), (65305 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((65799u32 : GoUInt32), (65843u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65856u32 : GoUInt32), (65912u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65930u32 : GoUInt32), (65931u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66273u32 : GoUInt32), (66299u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66336u32 : GoUInt32), (66339u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66369u32 : GoUInt32), (66378u32 : GoUInt32), (9u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66513u32 : GoUInt32), (66517u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66720u32 : GoUInt32), (66729u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67672u32 : GoUInt32), (67679u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67705u32 : GoUInt32), (67711u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67751u32 : GoUInt32), (67759u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67835u32 : GoUInt32), (67839u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67862u32 : GoUInt32), (67867u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68028u32 : GoUInt32), (68029u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68032u32 : GoUInt32), (68047u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68050u32 : GoUInt32), (68095u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68160u32 : GoUInt32), (68168u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68221u32 : GoUInt32), (68222u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68253u32 : GoUInt32), (68255u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68331u32 : GoUInt32), (68335u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68440u32 : GoUInt32), (68447u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68472u32 : GoUInt32), (68479u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68521u32 : GoUInt32), (68527u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68858u32 : GoUInt32), (68863u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68912u32 : GoUInt32), (68921u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69216u32 : GoUInt32), (69246u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69405u32 : GoUInt32), (69414u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69457u32 : GoUInt32), (69460u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69573u32 : GoUInt32), (69579u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69714u32 : GoUInt32), (69743u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69872u32 : GoUInt32), (69881u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69942u32 : GoUInt32), (69951u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70096u32 : GoUInt32), (70105u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70113u32 : GoUInt32), (70132u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70384u32 : GoUInt32), (70393u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70736u32 : GoUInt32), (70745u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70864u32 : GoUInt32), (70873u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71248u32 : GoUInt32), (71257u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71360u32 : GoUInt32), (71369u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71472u32 : GoUInt32), (71483u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71904u32 : GoUInt32), (71922u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72016u32 : GoUInt32), (72025u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72784u32 : GoUInt32), (72812u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73040u32 : GoUInt32), (73049u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73120u32 : GoUInt32), (73129u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73664u32 : GoUInt32), (73684u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((74752u32 : GoUInt32), (74862u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92768u32 : GoUInt32), (92777u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93008u32 : GoUInt32), (93017u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93019u32 : GoUInt32), (93025u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93824u32 : GoUInt32), (93846u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119520u32 : GoUInt32), (119539u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119648u32 : GoUInt32), (119672u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120782u32 : GoUInt32), (120831u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123200u32 : GoUInt32), (123209u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123632u32 : GoUInt32), (123641u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125127u32 : GoUInt32), (125135u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125264u32 : GoUInt32), (125273u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126065u32 : GoUInt32), (126123u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126125u32 : GoUInt32), (126127u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126129u32 : GoUInt32), (126132u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126209u32 : GoUInt32), (126253u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126255u32 : GoUInt32), (126269u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127232u32 : GoUInt32), (127244u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((130032u32 : GoUInt32), (130041u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (4 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Nd = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((48 : GoUInt16), (57 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1632 : GoUInt16), (1641 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1776 : GoUInt16), (1785 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1984 : GoUInt16), (1993 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2406 : GoUInt16), (2415 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2534 : GoUInt16), (2543 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2662 : GoUInt16), (2671 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2790 : GoUInt16), (2799 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2918 : GoUInt16), (2927 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3046 : GoUInt16), (3055 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3174 : GoUInt16), (3183 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3302 : GoUInt16), (3311 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3430 : GoUInt16), (3439 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3558 : GoUInt16), (3567 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3664 : GoUInt16), (3673 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3792 : GoUInt16), (3801 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3872 : GoUInt16), (3881 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4160 : GoUInt16), (4169 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4240 : GoUInt16), (4249 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6112 : GoUInt16), (6121 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6160 : GoUInt16), (6169 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6470 : GoUInt16), (6479 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6608 : GoUInt16), (6617 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6784 : GoUInt16), (6793 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6800 : GoUInt16), (6809 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6992 : GoUInt16), (7001 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7088 : GoUInt16), (7097 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7232 : GoUInt16), (7241 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7248 : GoUInt16), (7257 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42528 : GoUInt16), (42537 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43216 : GoUInt16), (43225 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43264 : GoUInt16), (43273 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43472 : GoUInt16), (43481 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43504 : GoUInt16), (43513 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43600 : GoUInt16), (43609 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44016 : GoUInt16), (44025 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65296 : GoUInt16), (65305 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((66720u32 : GoUInt32), (66729u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68912u32 : GoUInt32), (68921u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69734u32 : GoUInt32), (69743u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69872u32 : GoUInt32), (69881u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69942u32 : GoUInt32), (69951u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70096u32 : GoUInt32), (70105u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70384u32 : GoUInt32), (70393u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70736u32 : GoUInt32), (70745u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70864u32 : GoUInt32), (70873u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71248u32 : GoUInt32), (71257u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71360u32 : GoUInt32), (71369u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71472u32 : GoUInt32), (71481u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71904u32 : GoUInt32), (71913u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72016u32 : GoUInt32), (72025u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72784u32 : GoUInt32), (72793u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73040u32 : GoUInt32), (73049u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73120u32 : GoUInt32), (73129u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92768u32 : GoUInt32), (92777u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93008u32 : GoUInt32), (93017u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120782u32 : GoUInt32), (120831u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123200u32 : GoUInt32), (123209u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123632u32 : GoUInt32), (123641u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125264u32 : GoUInt32), (125273u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((130032u32 : GoUInt32), (130041u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (1 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Nl = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((5870 : GoUInt16), (5872 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8544 : GoUInt16), (8578 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8581 : GoUInt16), (8584 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((12295 : GoUInt16), (12321 : GoUInt16), (26 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((12322 : GoUInt16), (12329 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((12344 : GoUInt16), (12346 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((42726 : GoUInt16), (42735 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((65856u32 : GoUInt32), (65908u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((66369u32 : GoUInt32), (66378u32 : GoUInt32), (9u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((66513u32 : GoUInt32), (66517u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((74752u32 : GoUInt32), (74862u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __No = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((178 : GoUInt16), (179 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((185 : GoUInt16), (188 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((189 : GoUInt16), (190 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2548 : GoUInt16), (2553 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2930 : GoUInt16), (2935 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3056 : GoUInt16), (3058 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3192 : GoUInt16), (3198 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3416 : GoUInt16), (3422 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3440 : GoUInt16), (3448 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3882 : GoUInt16), (3891 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4969 : GoUInt16), (4988 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6128 : GoUInt16), (6137 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6618 : GoUInt16), (8304 : GoUInt16), (1686 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8308 : GoUInt16), (8313 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8320 : GoUInt16), (8329 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8528 : GoUInt16), (8543 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8585 : GoUInt16), (9312 : GoUInt16), (727 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9313 : GoUInt16), (9371 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9450 : GoUInt16), (9471 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10102 : GoUInt16), (10131 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11517 : GoUInt16), (12690 : GoUInt16), (1173 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12691 : GoUInt16), (12693 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12832 : GoUInt16), (12841 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12872 : GoUInt16), (12879 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12881 : GoUInt16), (12895 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12928 : GoUInt16), (12937 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12977 : GoUInt16), (12991 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43056 : GoUInt16), (43061 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((65799u32 : GoUInt32), (65843u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65909u32 : GoUInt32), (65912u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65930u32 : GoUInt32), (65931u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66273u32 : GoUInt32), (66299u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66336u32 : GoUInt32), (66339u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67672u32 : GoUInt32), (67679u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67705u32 : GoUInt32), (67711u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67751u32 : GoUInt32), (67759u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67835u32 : GoUInt32), (67839u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67862u32 : GoUInt32), (67867u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68028u32 : GoUInt32), (68029u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68032u32 : GoUInt32), (68047u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68050u32 : GoUInt32), (68095u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68160u32 : GoUInt32), (68168u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68221u32 : GoUInt32), (68222u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68253u32 : GoUInt32), (68255u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68331u32 : GoUInt32), (68335u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68440u32 : GoUInt32), (68447u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68472u32 : GoUInt32), (68479u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68521u32 : GoUInt32), (68527u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68858u32 : GoUInt32), (68863u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69216u32 : GoUInt32), (69246u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69405u32 : GoUInt32), (69414u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69457u32 : GoUInt32), (69460u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69573u32 : GoUInt32), (69579u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69714u32 : GoUInt32), (69733u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70113u32 : GoUInt32), (70132u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71482u32 : GoUInt32), (71483u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71914u32 : GoUInt32), (71922u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72794u32 : GoUInt32), (72812u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73664u32 : GoUInt32), (73684u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93019u32 : GoUInt32), (93025u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93824u32 : GoUInt32), (93846u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119520u32 : GoUInt32), (119539u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119648u32 : GoUInt32), (119672u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125127u32 : GoUInt32), (125135u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126065u32 : GoUInt32), (126123u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126125u32 : GoUInt32), (126127u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126129u32 : GoUInt32), (126132u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126209u32 : GoUInt32), (126253u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126255u32 : GoUInt32), (126269u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127232u32 : GoUInt32), (127244u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (3 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __P = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((33 : GoUInt16), (35 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((37 : GoUInt16), (42 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44 : GoUInt16), (47 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((58 : GoUInt16), (59 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((63 : GoUInt16), (64 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((91 : GoUInt16), (93 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((95 : GoUInt16), (123 : GoUInt16), (28 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((125 : GoUInt16), (161 : GoUInt16), (36 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((167 : GoUInt16), (171 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((182 : GoUInt16), (183 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((187 : GoUInt16), (191 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((894 : GoUInt16), (903 : GoUInt16), (9 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1370 : GoUInt16), (1375 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1417 : GoUInt16), (1418 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1470 : GoUInt16), (1472 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1475 : GoUInt16), (1478 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1523 : GoUInt16), (1524 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1545 : GoUInt16), (1546 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1548 : GoUInt16), (1549 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1563 : GoUInt16), (1566 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1567 : GoUInt16), (1642 : GoUInt16), (75 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1643 : GoUInt16), (1645 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1748 : GoUInt16), (1792 : GoUInt16), (44 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1793 : GoUInt16), (1805 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2039 : GoUInt16), (2041 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2096 : GoUInt16), (2110 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2142 : GoUInt16), (2404 : GoUInt16), (262 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2405 : GoUInt16), (2416 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2557 : GoUInt16), (2678 : GoUInt16), (121 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2800 : GoUInt16), (3191 : GoUInt16), (391 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3204 : GoUInt16), (3572 : GoUInt16), (368 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3663 : GoUInt16), (3674 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3675 : GoUInt16), (3844 : GoUInt16), (169 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3845 : GoUInt16), (3858 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3860 : GoUInt16), (3898 : GoUInt16), (38 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3899 : GoUInt16), (3901 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3973 : GoUInt16), (4048 : GoUInt16), (75 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4049 : GoUInt16), (4052 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4057 : GoUInt16), (4058 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4170 : GoUInt16), (4175 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4347 : GoUInt16), (4960 : GoUInt16), (613 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4961 : GoUInt16), (4968 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5120 : GoUInt16), (5742 : GoUInt16), (622 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5787 : GoUInt16), (5788 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5867 : GoUInt16), (5869 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5941 : GoUInt16), (5942 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6100 : GoUInt16), (6102 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6104 : GoUInt16), (6106 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6144 : GoUInt16), (6154 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6468 : GoUInt16), (6469 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6686 : GoUInt16), (6687 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6816 : GoUInt16), (6822 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6824 : GoUInt16), (6829 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7002 : GoUInt16), (7008 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7164 : GoUInt16), (7167 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7227 : GoUInt16), (7231 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7294 : GoUInt16), (7295 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7360 : GoUInt16), (7367 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7379 : GoUInt16), (8208 : GoUInt16), (829 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8209 : GoUInt16), (8231 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8240 : GoUInt16), (8259 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8261 : GoUInt16), (8273 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8275 : GoUInt16), (8286 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8317 : GoUInt16), (8318 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8333 : GoUInt16), (8334 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8968 : GoUInt16), (8971 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9001 : GoUInt16), (9002 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10088 : GoUInt16), (10101 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10181 : GoUInt16), (10182 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10214 : GoUInt16), (10223 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10627 : GoUInt16), (10648 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10712 : GoUInt16), (10715 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10748 : GoUInt16), (10749 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11513 : GoUInt16), (11516 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11518 : GoUInt16), (11519 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11632 : GoUInt16), (11776 : GoUInt16), (144 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11777 : GoUInt16), (11822 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11824 : GoUInt16), (11855 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11858 : GoUInt16), (12289 : GoUInt16), (431 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12290 : GoUInt16), (12291 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12296 : GoUInt16), (12305 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12308 : GoUInt16), (12319 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12336 : GoUInt16), (12349 : GoUInt16), (13 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12448 : GoUInt16), (12539 : GoUInt16), (91 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42238 : GoUInt16), (42239 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42509 : GoUInt16), (42511 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42611 : GoUInt16), (42622 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42738 : GoUInt16), (42743 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43124 : GoUInt16), (43127 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43214 : GoUInt16), (43215 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43256 : GoUInt16), (43258 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43260 : GoUInt16), (43310 : GoUInt16), (50 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43311 : GoUInt16), (43359 : GoUInt16), (48 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43457 : GoUInt16), (43469 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43486 : GoUInt16), (43487 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43612 : GoUInt16), (43615 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43742 : GoUInt16), (43743 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43760 : GoUInt16), (43761 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44011 : GoUInt16), (64830 : GoUInt16), (20819 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64831 : GoUInt16), (65040 : GoUInt16), (209 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65041 : GoUInt16), (65049 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65072 : GoUInt16), (65106 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65108 : GoUInt16), (65121 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65123 : GoUInt16), (65128 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65130 : GoUInt16), (65131 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65281 : GoUInt16), (65283 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65285 : GoUInt16), (65290 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65292 : GoUInt16), (65295 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65306 : GoUInt16), (65307 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65311 : GoUInt16), (65312 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65339 : GoUInt16), (65341 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65343 : GoUInt16), (65371 : GoUInt16), (28 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65373 : GoUInt16), (65375 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65376 : GoUInt16), (65381 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((65792u32 : GoUInt32), (65794u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66463u32 : GoUInt32), (66512u32 : GoUInt32), (49u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66927u32 : GoUInt32), (67671u32 : GoUInt32), (744u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67871u32 : GoUInt32), (67903u32 : GoUInt32), (32u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68176u32 : GoUInt32), (68184u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68223u32 : GoUInt32), (68336u32 : GoUInt32), (113u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68337u32 : GoUInt32), (68342u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68409u32 : GoUInt32), (68415u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68505u32 : GoUInt32), (68508u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69293u32 : GoUInt32), (69461u32 : GoUInt32), (168u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69462u32 : GoUInt32), (69465u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69703u32 : GoUInt32), (69709u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69819u32 : GoUInt32), (69820u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69822u32 : GoUInt32), (69825u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69952u32 : GoUInt32), (69955u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70004u32 : GoUInt32), (70005u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70085u32 : GoUInt32), (70088u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70093u32 : GoUInt32), (70107u32 : GoUInt32), (14u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70109u32 : GoUInt32), (70111u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70200u32 : GoUInt32), (70205u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70313u32 : GoUInt32), (70731u32 : GoUInt32), (418u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70732u32 : GoUInt32), (70735u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70746u32 : GoUInt32), (70747u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70749u32 : GoUInt32), (70854u32 : GoUInt32), (105u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71105u32 : GoUInt32), (71127u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71233u32 : GoUInt32), (71235u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71264u32 : GoUInt32), (71276u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71484u32 : GoUInt32), (71486u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71739u32 : GoUInt32), (72004u32 : GoUInt32), (265u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72005u32 : GoUInt32), (72006u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72162u32 : GoUInt32), (72255u32 : GoUInt32), (93u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72256u32 : GoUInt32), (72262u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72346u32 : GoUInt32), (72348u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72350u32 : GoUInt32), (72354u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72769u32 : GoUInt32), (72773u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72816u32 : GoUInt32), (72817u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73463u32 : GoUInt32), (73464u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73727u32 : GoUInt32), (74864u32 : GoUInt32), (1137u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((74865u32 : GoUInt32), (74868u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92782u32 : GoUInt32), (92783u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92917u32 : GoUInt32), (92983u32 : GoUInt32), (66u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92984u32 : GoUInt32), (92987u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92996u32 : GoUInt32), (93847u32 : GoUInt32), (851u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93848u32 : GoUInt32), (93850u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94178u32 : GoUInt32), (113823u32 : GoUInt32), (19645u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121479u32 : GoUInt32), (121483u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125278u32 : GoUInt32), (125279u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (11 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Pc = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((95 : GoUInt16), (8255 : GoUInt16), (8160 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8256 : GoUInt16), (8276 : GoUInt16), (20 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((65075 : GoUInt16), (65076 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((65101 : GoUInt16), (65103 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((65343 : GoUInt16), (65343 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Pd = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((45 : GoUInt16), (1418 : GoUInt16), (1373 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1470 : GoUInt16), (5120 : GoUInt16), (3650 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6150 : GoUInt16), (8208 : GoUInt16), (2058 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8209 : GoUInt16), (8213 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11799 : GoUInt16), (11802 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11834 : GoUInt16), (11835 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11840 : GoUInt16), (12316 : GoUInt16), (476 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12336 : GoUInt16), (12448 : GoUInt16), (112 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65073 : GoUInt16), (65074 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65112 : GoUInt16), (65123 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65293 : GoUInt16), (65293 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((69293u32 : GoUInt32), (69293u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Pe = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((41 : GoUInt16), (93 : GoUInt16), (52 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((125 : GoUInt16), (3899 : GoUInt16), (3774 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3901 : GoUInt16), (5788 : GoUInt16), (1887 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8262 : GoUInt16), (8318 : GoUInt16), (56 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8334 : GoUInt16), (8969 : GoUInt16), (635 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8971 : GoUInt16), (9002 : GoUInt16), (31 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10089 : GoUInt16), (10101 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10182 : GoUInt16), (10215 : GoUInt16), (33 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10217 : GoUInt16), (10223 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10628 : GoUInt16), (10648 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10713 : GoUInt16), (10715 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10749 : GoUInt16), (11811 : GoUInt16), (1062 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11813 : GoUInt16), (11817 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12297 : GoUInt16), (12305 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12309 : GoUInt16), (12315 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12318 : GoUInt16), (12319 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64830 : GoUInt16), (65048 : GoUInt16), (218 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65078 : GoUInt16), (65092 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65096 : GoUInt16), (65114 : GoUInt16), (18 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65116 : GoUInt16), (65118 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65289 : GoUInt16), (65341 : GoUInt16), (52 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65373 : GoUInt16), (65379 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), latinOffset : (1 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Pf = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((187 : GoUInt16), (8217 : GoUInt16), (8030 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8221 : GoUInt16), (8250 : GoUInt16), (29 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((11779 : GoUInt16), (11781 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((11786 : GoUInt16), (11789 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((11805 : GoUInt16), (11809 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Pi = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((171 : GoUInt16), (8216 : GoUInt16), (8045 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8219 : GoUInt16), (8220 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8223 : GoUInt16), (8249 : GoUInt16), (26 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((11778 : GoUInt16), (11780 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((11785 : GoUInt16), (11788 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((11804 : GoUInt16), (11808 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Po = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((33 : GoUInt16), (35 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((37 : GoUInt16), (39 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42 : GoUInt16), (46 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((47 : GoUInt16), (58 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((59 : GoUInt16), (63 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64 : GoUInt16), (92 : GoUInt16), (28 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((161 : GoUInt16), (167 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((182 : GoUInt16), (183 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((191 : GoUInt16), (894 : GoUInt16), (703 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((903 : GoUInt16), (1370 : GoUInt16), (467 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1371 : GoUInt16), (1375 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1417 : GoUInt16), (1472 : GoUInt16), (55 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1475 : GoUInt16), (1478 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1523 : GoUInt16), (1524 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1545 : GoUInt16), (1546 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1548 : GoUInt16), (1549 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1563 : GoUInt16), (1566 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1567 : GoUInt16), (1642 : GoUInt16), (75 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1643 : GoUInt16), (1645 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1748 : GoUInt16), (1792 : GoUInt16), (44 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1793 : GoUInt16), (1805 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2039 : GoUInt16), (2041 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2096 : GoUInt16), (2110 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2142 : GoUInt16), (2404 : GoUInt16), (262 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2405 : GoUInt16), (2416 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2557 : GoUInt16), (2678 : GoUInt16), (121 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2800 : GoUInt16), (3191 : GoUInt16), (391 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3204 : GoUInt16), (3572 : GoUInt16), (368 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3663 : GoUInt16), (3674 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3675 : GoUInt16), (3844 : GoUInt16), (169 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3845 : GoUInt16), (3858 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3860 : GoUInt16), (3973 : GoUInt16), (113 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4048 : GoUInt16), (4052 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4057 : GoUInt16), (4058 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4170 : GoUInt16), (4175 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4347 : GoUInt16), (4960 : GoUInt16), (613 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4961 : GoUInt16), (4968 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5742 : GoUInt16), (5867 : GoUInt16), (125 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5868 : GoUInt16), (5869 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5941 : GoUInt16), (5942 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6100 : GoUInt16), (6102 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6104 : GoUInt16), (6106 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6144 : GoUInt16), (6149 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6151 : GoUInt16), (6154 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6468 : GoUInt16), (6469 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6686 : GoUInt16), (6687 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6816 : GoUInt16), (6822 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6824 : GoUInt16), (6829 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7002 : GoUInt16), (7008 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7164 : GoUInt16), (7167 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7227 : GoUInt16), (7231 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7294 : GoUInt16), (7295 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7360 : GoUInt16), (7367 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7379 : GoUInt16), (8214 : GoUInt16), (835 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8215 : GoUInt16), (8224 : GoUInt16), (9 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8225 : GoUInt16), (8231 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8240 : GoUInt16), (8248 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8251 : GoUInt16), (8254 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8257 : GoUInt16), (8259 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8263 : GoUInt16), (8273 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8275 : GoUInt16), (8277 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8278 : GoUInt16), (8286 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11513 : GoUInt16), (11516 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11518 : GoUInt16), (11519 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11632 : GoUInt16), (11776 : GoUInt16), (144 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11777 : GoUInt16), (11782 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11783 : GoUInt16), (11784 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11787 : GoUInt16), (11790 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11791 : GoUInt16), (11798 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11800 : GoUInt16), (11801 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11803 : GoUInt16), (11806 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11807 : GoUInt16), (11818 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11819 : GoUInt16), (11822 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11824 : GoUInt16), (11833 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11836 : GoUInt16), (11839 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11841 : GoUInt16), (11843 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11844 : GoUInt16), (11855 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11858 : GoUInt16), (12289 : GoUInt16), (431 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12290 : GoUInt16), (12291 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12349 : GoUInt16), (12539 : GoUInt16), (190 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42238 : GoUInt16), (42239 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42509 : GoUInt16), (42511 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42611 : GoUInt16), (42622 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42738 : GoUInt16), (42743 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43124 : GoUInt16), (43127 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43214 : GoUInt16), (43215 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43256 : GoUInt16), (43258 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43260 : GoUInt16), (43310 : GoUInt16), (50 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43311 : GoUInt16), (43359 : GoUInt16), (48 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43457 : GoUInt16), (43469 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43486 : GoUInt16), (43487 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43612 : GoUInt16), (43615 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43742 : GoUInt16), (43743 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43760 : GoUInt16), (43761 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44011 : GoUInt16), (65040 : GoUInt16), (21029 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65041 : GoUInt16), (65046 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65049 : GoUInt16), (65072 : GoUInt16), (23 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65093 : GoUInt16), (65094 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65097 : GoUInt16), (65100 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65104 : GoUInt16), (65106 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65108 : GoUInt16), (65111 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65119 : GoUInt16), (65121 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65128 : GoUInt16), (65130 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65131 : GoUInt16), (65281 : GoUInt16), (150 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65282 : GoUInt16), (65283 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65285 : GoUInt16), (65287 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65290 : GoUInt16), (65294 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65295 : GoUInt16), (65306 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65307 : GoUInt16), (65311 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65312 : GoUInt16), (65340 : GoUInt16), (28 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65377 : GoUInt16), (65380 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65381 : GoUInt16), (65381 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((65792u32 : GoUInt32), (65794u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66463u32 : GoUInt32), (66512u32 : GoUInt32), (49u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66927u32 : GoUInt32), (67671u32 : GoUInt32), (744u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67871u32 : GoUInt32), (67903u32 : GoUInt32), (32u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68176u32 : GoUInt32), (68184u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68223u32 : GoUInt32), (68336u32 : GoUInt32), (113u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68337u32 : GoUInt32), (68342u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68409u32 : GoUInt32), (68415u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68505u32 : GoUInt32), (68508u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69461u32 : GoUInt32), (69465u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69703u32 : GoUInt32), (69709u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69819u32 : GoUInt32), (69820u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69822u32 : GoUInt32), (69825u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69952u32 : GoUInt32), (69955u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70004u32 : GoUInt32), (70005u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70085u32 : GoUInt32), (70088u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70093u32 : GoUInt32), (70107u32 : GoUInt32), (14u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70109u32 : GoUInt32), (70111u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70200u32 : GoUInt32), (70205u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70313u32 : GoUInt32), (70731u32 : GoUInt32), (418u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70732u32 : GoUInt32), (70735u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70746u32 : GoUInt32), (70747u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70749u32 : GoUInt32), (70854u32 : GoUInt32), (105u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71105u32 : GoUInt32), (71127u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71233u32 : GoUInt32), (71235u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71264u32 : GoUInt32), (71276u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71484u32 : GoUInt32), (71486u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71739u32 : GoUInt32), (72004u32 : GoUInt32), (265u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72005u32 : GoUInt32), (72006u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72162u32 : GoUInt32), (72255u32 : GoUInt32), (93u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72256u32 : GoUInt32), (72262u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72346u32 : GoUInt32), (72348u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72350u32 : GoUInt32), (72354u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72769u32 : GoUInt32), (72773u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72816u32 : GoUInt32), (72817u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73463u32 : GoUInt32), (73464u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73727u32 : GoUInt32), (74864u32 : GoUInt32), (1137u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((74865u32 : GoUInt32), (74868u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92782u32 : GoUInt32), (92783u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92917u32 : GoUInt32), (92983u32 : GoUInt32), (66u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92984u32 : GoUInt32), (92987u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92996u32 : GoUInt32), (93847u32 : GoUInt32), (851u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93848u32 : GoUInt32), (93850u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94178u32 : GoUInt32), (113823u32 : GoUInt32), (19645u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121479u32 : GoUInt32), (121483u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125278u32 : GoUInt32), (125279u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (8 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Ps = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((40 : GoUInt16), (91 : GoUInt16), (51 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((123 : GoUInt16), (3898 : GoUInt16), (3775 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3900 : GoUInt16), (5787 : GoUInt16), (1887 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8218 : GoUInt16), (8222 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8261 : GoUInt16), (8317 : GoUInt16), (56 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8333 : GoUInt16), (8968 : GoUInt16), (635 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8970 : GoUInt16), (9001 : GoUInt16), (31 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10088 : GoUInt16), (10100 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10181 : GoUInt16), (10214 : GoUInt16), (33 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10216 : GoUInt16), (10222 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10627 : GoUInt16), (10647 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10712 : GoUInt16), (10714 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10748 : GoUInt16), (11810 : GoUInt16), (1062 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11812 : GoUInt16), (11816 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11842 : GoUInt16), (12296 : GoUInt16), (454 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12298 : GoUInt16), (12304 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12308 : GoUInt16), (12314 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12317 : GoUInt16), (64831 : GoUInt16), (52514 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65047 : GoUInt16), (65077 : GoUInt16), (30 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65079 : GoUInt16), (65091 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65095 : GoUInt16), (65113 : GoUInt16), (18 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65115 : GoUInt16), (65117 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65288 : GoUInt16), (65339 : GoUInt16), (51 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65371 : GoUInt16), (65375 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65378 : GoUInt16), (65378 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), latinOffset : (1 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __S = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((36 : GoUInt16), (43 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((60 : GoUInt16), (62 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((94 : GoUInt16), (96 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((124 : GoUInt16), (126 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((162 : GoUInt16), (166 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((168 : GoUInt16), (169 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((172 : GoUInt16), (174 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((175 : GoUInt16), (177 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((180 : GoUInt16), (184 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((215 : GoUInt16), (247 : GoUInt16), (32 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((706 : GoUInt16), (709 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((722 : GoUInt16), (735 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((741 : GoUInt16), (747 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((749 : GoUInt16), (751 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((752 : GoUInt16), (767 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((885 : GoUInt16), (900 : GoUInt16), (15 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((901 : GoUInt16), (1014 : GoUInt16), (113 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1154 : GoUInt16), (1421 : GoUInt16), (267 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1422 : GoUInt16), (1423 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1542 : GoUInt16), (1544 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1547 : GoUInt16), (1550 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1551 : GoUInt16), (1758 : GoUInt16), (207 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1769 : GoUInt16), (1789 : GoUInt16), (20 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1790 : GoUInt16), (2038 : GoUInt16), (248 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2046 : GoUInt16), (2047 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2546 : GoUInt16), (2547 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2554 : GoUInt16), (2555 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2801 : GoUInt16), (2928 : GoUInt16), (127 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3059 : GoUInt16), (3066 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3199 : GoUInt16), (3407 : GoUInt16), (208 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3449 : GoUInt16), (3647 : GoUInt16), (198 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3841 : GoUInt16), (3843 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3859 : GoUInt16), (3861 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3862 : GoUInt16), (3863 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3866 : GoUInt16), (3871 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3892 : GoUInt16), (3896 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4030 : GoUInt16), (4037 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4039 : GoUInt16), (4044 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4046 : GoUInt16), (4047 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4053 : GoUInt16), (4056 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4254 : GoUInt16), (4255 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5008 : GoUInt16), (5017 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5741 : GoUInt16), (6107 : GoUInt16), (366 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6464 : GoUInt16), (6622 : GoUInt16), (158 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6623 : GoUInt16), (6655 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7009 : GoUInt16), (7018 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7028 : GoUInt16), (7036 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8125 : GoUInt16), (8127 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8128 : GoUInt16), (8129 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8141 : GoUInt16), (8143 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8157 : GoUInt16), (8159 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8173 : GoUInt16), (8175 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8189 : GoUInt16), (8190 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8260 : GoUInt16), (8274 : GoUInt16), (14 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8314 : GoUInt16), (8316 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8330 : GoUInt16), (8332 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8352 : GoUInt16), (8383 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8448 : GoUInt16), (8449 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8451 : GoUInt16), (8454 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8456 : GoUInt16), (8457 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8468 : GoUInt16), (8470 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8471 : GoUInt16), (8472 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8478 : GoUInt16), (8483 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8485 : GoUInt16), (8489 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8494 : GoUInt16), (8506 : GoUInt16), (12 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8507 : GoUInt16), (8512 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8513 : GoUInt16), (8516 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8522 : GoUInt16), (8525 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8527 : GoUInt16), (8586 : GoUInt16), (59 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8587 : GoUInt16), (8592 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8593 : GoUInt16), (8967 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8972 : GoUInt16), (9000 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9003 : GoUInt16), (9254 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9280 : GoUInt16), (9290 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9372 : GoUInt16), (9449 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9472 : GoUInt16), (10087 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10132 : GoUInt16), (10180 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10183 : GoUInt16), (10213 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10224 : GoUInt16), (10626 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10649 : GoUInt16), (10711 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10716 : GoUInt16), (10747 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10750 : GoUInt16), (11123 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11126 : GoUInt16), (11157 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11159 : GoUInt16), (11263 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11493 : GoUInt16), (11498 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11856 : GoUInt16), (11857 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11904 : GoUInt16), (11929 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11931 : GoUInt16), (12019 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12032 : GoUInt16), (12245 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12272 : GoUInt16), (12283 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12292 : GoUInt16), (12306 : GoUInt16), (14 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12307 : GoUInt16), (12320 : GoUInt16), (13 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12342 : GoUInt16), (12343 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12350 : GoUInt16), (12351 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12443 : GoUInt16), (12444 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12688 : GoUInt16), (12689 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12694 : GoUInt16), (12703 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12736 : GoUInt16), (12771 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12800 : GoUInt16), (12830 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12842 : GoUInt16), (12871 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12880 : GoUInt16), (12896 : GoUInt16), (16 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12897 : GoUInt16), (12927 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12938 : GoUInt16), (12976 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12992 : GoUInt16), (13311 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((19904 : GoUInt16), (19967 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42128 : GoUInt16), (42182 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42752 : GoUInt16), (42774 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42784 : GoUInt16), (42785 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42889 : GoUInt16), (42890 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43048 : GoUInt16), (43051 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43062 : GoUInt16), (43065 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43639 : GoUInt16), (43641 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43867 : GoUInt16), (43882 : GoUInt16), (15 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43883 : GoUInt16), (64297 : GoUInt16), (20414 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64434 : GoUInt16), (64449 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65020 : GoUInt16), (65021 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65122 : GoUInt16), (65124 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65125 : GoUInt16), (65126 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65129 : GoUInt16), (65284 : GoUInt16), (155 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65291 : GoUInt16), (65308 : GoUInt16), (17 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65309 : GoUInt16), (65310 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65342 : GoUInt16), (65344 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65372 : GoUInt16), (65374 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65504 : GoUInt16), (65510 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65512 : GoUInt16), (65518 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65532 : GoUInt16), (65533 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((65847u32 : GoUInt32), (65855u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65913u32 : GoUInt32), (65929u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65932u32 : GoUInt32), (65934u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65936u32 : GoUInt32), (65948u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65952u32 : GoUInt32), (66000u32 : GoUInt32), (48u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66001u32 : GoUInt32), (66044u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67703u32 : GoUInt32), (67704u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68296u32 : GoUInt32), (71487u32 : GoUInt32), (3191u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73685u32 : GoUInt32), (73713u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92988u32 : GoUInt32), (92991u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92997u32 : GoUInt32), (113820u32 : GoUInt32), (20823u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((118784u32 : GoUInt32), (119029u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119040u32 : GoUInt32), (119078u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119081u32 : GoUInt32), (119140u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119146u32 : GoUInt32), (119148u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119171u32 : GoUInt32), (119172u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119180u32 : GoUInt32), (119209u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119214u32 : GoUInt32), (119272u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119296u32 : GoUInt32), (119361u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119365u32 : GoUInt32), (119552u32 : GoUInt32), (187u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119553u32 : GoUInt32), (119638u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120513u32 : GoUInt32), (120539u32 : GoUInt32), (26u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120571u32 : GoUInt32), (120597u32 : GoUInt32), (26u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120629u32 : GoUInt32), (120655u32 : GoUInt32), (26u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120687u32 : GoUInt32), (120713u32 : GoUInt32), (26u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120745u32 : GoUInt32), (120771u32 : GoUInt32), (26u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120832u32 : GoUInt32), (121343u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121399u32 : GoUInt32), (121402u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121453u32 : GoUInt32), (121460u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121462u32 : GoUInt32), (121475u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121477u32 : GoUInt32), (121478u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123215u32 : GoUInt32), (123647u32 : GoUInt32), (432u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126124u32 : GoUInt32), (126128u32 : GoUInt32), (4u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126254u32 : GoUInt32), (126704u32 : GoUInt32), (450u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126705u32 : GoUInt32), (126976u32 : GoUInt32), (271u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126977u32 : GoUInt32), (127019u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127024u32 : GoUInt32), (127123u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127136u32 : GoUInt32), (127150u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127153u32 : GoUInt32), (127167u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127169u32 : GoUInt32), (127183u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127185u32 : GoUInt32), (127221u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127245u32 : GoUInt32), (127405u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127462u32 : GoUInt32), (127490u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127504u32 : GoUInt32), (127547u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127552u32 : GoUInt32), (127560u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127568u32 : GoUInt32), (127569u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127584u32 : GoUInt32), (127589u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127744u32 : GoUInt32), (128727u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((128736u32 : GoUInt32), (128748u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((128752u32 : GoUInt32), (128764u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((128768u32 : GoUInt32), (128883u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((128896u32 : GoUInt32), (128984u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((128992u32 : GoUInt32), (129003u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129024u32 : GoUInt32), (129035u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129040u32 : GoUInt32), (129095u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129104u32 : GoUInt32), (129113u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129120u32 : GoUInt32), (129159u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129168u32 : GoUInt32), (129197u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129200u32 : GoUInt32), (129201u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129280u32 : GoUInt32), (129400u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129402u32 : GoUInt32), (129483u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129485u32 : GoUInt32), (129619u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129632u32 : GoUInt32), (129645u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129648u32 : GoUInt32), (129652u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129656u32 : GoUInt32), (129658u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129664u32 : GoUInt32), (129670u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129680u32 : GoUInt32), (129704u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129712u32 : GoUInt32), (129718u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129728u32 : GoUInt32), (129730u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129744u32 : GoUInt32), (129750u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129792u32 : GoUInt32), (129938u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129940u32 : GoUInt32), (129994u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (10 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Sc = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((36 : GoUInt16), (162 : GoUInt16), (126 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((163 : GoUInt16), (165 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1423 : GoUInt16), (1547 : GoUInt16), (124 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2046 : GoUInt16), (2047 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2546 : GoUInt16), (2547 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2555 : GoUInt16), (2801 : GoUInt16), (246 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3065 : GoUInt16), (3647 : GoUInt16), (582 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6107 : GoUInt16), (8352 : GoUInt16), (2245 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8353 : GoUInt16), (8383 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43064 : GoUInt16), (65020 : GoUInt16), (21956 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65129 : GoUInt16), (65284 : GoUInt16), (155 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65504 : GoUInt16), (65505 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65509 : GoUInt16), (65510 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((73693u32 : GoUInt32), (73696u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((123647u32 : GoUInt32), (126128u32 : GoUInt32), (2481u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (2 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Sk = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((94 : GoUInt16), (96 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((168 : GoUInt16), (175 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((180 : GoUInt16), (184 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((706 : GoUInt16), (709 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((722 : GoUInt16), (735 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((741 : GoUInt16), (747 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((749 : GoUInt16), (751 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((752 : GoUInt16), (767 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((885 : GoUInt16), (900 : GoUInt16), (15 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((901 : GoUInt16), (8125 : GoUInt16), (7224 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8127 : GoUInt16), (8129 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8141 : GoUInt16), (8143 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8157 : GoUInt16), (8159 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8173 : GoUInt16), (8175 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8189 : GoUInt16), (8190 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12443 : GoUInt16), (12444 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42752 : GoUInt16), (42774 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42784 : GoUInt16), (42785 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42889 : GoUInt16), (42890 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43867 : GoUInt16), (43882 : GoUInt16), (15 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43883 : GoUInt16), (64434 : GoUInt16), (20551 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64435 : GoUInt16), (64449 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65342 : GoUInt16), (65344 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65507 : GoUInt16), (65507 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((127995u32 : GoUInt32), (127999u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (3 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Sm = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((43 : GoUInt16), (60 : GoUInt16), (17 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((61 : GoUInt16), (62 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((124 : GoUInt16), (126 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((172 : GoUInt16), (177 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((215 : GoUInt16), (247 : GoUInt16), (32 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1014 : GoUInt16), (1542 : GoUInt16), (528 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1543 : GoUInt16), (1544 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8260 : GoUInt16), (8274 : GoUInt16), (14 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8314 : GoUInt16), (8316 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8330 : GoUInt16), (8332 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8472 : GoUInt16), (8512 : GoUInt16), (40 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8513 : GoUInt16), (8516 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8523 : GoUInt16), (8592 : GoUInt16), (69 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8593 : GoUInt16), (8596 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8602 : GoUInt16), (8603 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8608 : GoUInt16), (8614 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8622 : GoUInt16), (8654 : GoUInt16), (32 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8655 : GoUInt16), (8658 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8660 : GoUInt16), (8692 : GoUInt16), (32 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8693 : GoUInt16), (8959 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8992 : GoUInt16), (8993 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9084 : GoUInt16), (9115 : GoUInt16), (31 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9116 : GoUInt16), (9139 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9180 : GoUInt16), (9185 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9655 : GoUInt16), (9665 : GoUInt16), (10 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9720 : GoUInt16), (9727 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9839 : GoUInt16), (10176 : GoUInt16), (337 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10177 : GoUInt16), (10180 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10183 : GoUInt16), (10213 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10224 : GoUInt16), (10239 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10496 : GoUInt16), (10626 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10649 : GoUInt16), (10711 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10716 : GoUInt16), (10747 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10750 : GoUInt16), (11007 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11056 : GoUInt16), (11076 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11079 : GoUInt16), (11084 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64297 : GoUInt16), (65122 : GoUInt16), (825 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65124 : GoUInt16), (65126 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65291 : GoUInt16), (65308 : GoUInt16), (17 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65309 : GoUInt16), (65310 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65372 : GoUInt16), (65374 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65506 : GoUInt16), (65513 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65514 : GoUInt16), (65516 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((120513u32 : GoUInt32), (120539u32 : GoUInt32), (26u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((120571u32 : GoUInt32), (120597u32 : GoUInt32), (26u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((120629u32 : GoUInt32), (120655u32 : GoUInt32), (26u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((120687u32 : GoUInt32), (120713u32 : GoUInt32), (26u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((120745u32 : GoUInt32), (120771u32 : GoUInt32), (26u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((126704u32 : GoUInt32), (126705u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (5 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __So = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((166 : GoUInt16), (169 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((174 : GoUInt16), (176 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1154 : GoUInt16), (1421 : GoUInt16), (267 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1422 : GoUInt16), (1550 : GoUInt16), (128 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1551 : GoUInt16), (1758 : GoUInt16), (207 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1769 : GoUInt16), (1789 : GoUInt16), (20 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1790 : GoUInt16), (2038 : GoUInt16), (248 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2554 : GoUInt16), (2928 : GoUInt16), (374 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3059 : GoUInt16), (3064 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3066 : GoUInt16), (3199 : GoUInt16), (133 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3407 : GoUInt16), (3449 : GoUInt16), (42 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3841 : GoUInt16), (3843 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3859 : GoUInt16), (3861 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3862 : GoUInt16), (3863 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3866 : GoUInt16), (3871 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3892 : GoUInt16), (3896 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4030 : GoUInt16), (4037 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4039 : GoUInt16), (4044 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4046 : GoUInt16), (4047 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4053 : GoUInt16), (4056 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4254 : GoUInt16), (4255 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5008 : GoUInt16), (5017 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5741 : GoUInt16), (6464 : GoUInt16), (723 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6622 : GoUInt16), (6655 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7009 : GoUInt16), (7018 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7028 : GoUInt16), (7036 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8448 : GoUInt16), (8449 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8451 : GoUInt16), (8454 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8456 : GoUInt16), (8457 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8468 : GoUInt16), (8470 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8471 : GoUInt16), (8478 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8479 : GoUInt16), (8483 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8485 : GoUInt16), (8489 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8494 : GoUInt16), (8506 : GoUInt16), (12 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8507 : GoUInt16), (8522 : GoUInt16), (15 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8524 : GoUInt16), (8525 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8527 : GoUInt16), (8586 : GoUInt16), (59 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8587 : GoUInt16), (8597 : GoUInt16), (10 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8598 : GoUInt16), (8601 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8604 : GoUInt16), (8607 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8609 : GoUInt16), (8610 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8612 : GoUInt16), (8613 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8615 : GoUInt16), (8621 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8623 : GoUInt16), (8653 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8656 : GoUInt16), (8657 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8659 : GoUInt16), (8661 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8662 : GoUInt16), (8691 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8960 : GoUInt16), (8967 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8972 : GoUInt16), (8991 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8994 : GoUInt16), (9000 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9003 : GoUInt16), (9083 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9085 : GoUInt16), (9114 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9140 : GoUInt16), (9179 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9186 : GoUInt16), (9254 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9280 : GoUInt16), (9290 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9372 : GoUInt16), (9449 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9472 : GoUInt16), (9654 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9656 : GoUInt16), (9664 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9666 : GoUInt16), (9719 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9728 : GoUInt16), (9838 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9840 : GoUInt16), (10087 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10132 : GoUInt16), (10175 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10240 : GoUInt16), (10495 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11008 : GoUInt16), (11055 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11077 : GoUInt16), (11078 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11085 : GoUInt16), (11123 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11126 : GoUInt16), (11157 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11159 : GoUInt16), (11263 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11493 : GoUInt16), (11498 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11856 : GoUInt16), (11857 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11904 : GoUInt16), (11929 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11931 : GoUInt16), (12019 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12032 : GoUInt16), (12245 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12272 : GoUInt16), (12283 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12292 : GoUInt16), (12306 : GoUInt16), (14 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12307 : GoUInt16), (12320 : GoUInt16), (13 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12342 : GoUInt16), (12343 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12350 : GoUInt16), (12351 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12688 : GoUInt16), (12689 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12694 : GoUInt16), (12703 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12736 : GoUInt16), (12771 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12800 : GoUInt16), (12830 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12842 : GoUInt16), (12871 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12880 : GoUInt16), (12896 : GoUInt16), (16 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12897 : GoUInt16), (12927 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12938 : GoUInt16), (12976 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12992 : GoUInt16), (13311 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((19904 : GoUInt16), (19967 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42128 : GoUInt16), (42182 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43048 : GoUInt16), (43051 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43062 : GoUInt16), (43063 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43065 : GoUInt16), (43639 : GoUInt16), (574 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43640 : GoUInt16), (43641 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65021 : GoUInt16), (65508 : GoUInt16), (487 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65512 : GoUInt16), (65517 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65518 : GoUInt16), (65532 : GoUInt16), (14 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65533 : GoUInt16), (65533 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((65847u32 : GoUInt32), (65855u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65913u32 : GoUInt32), (65929u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65932u32 : GoUInt32), (65934u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65936u32 : GoUInt32), (65948u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65952u32 : GoUInt32), (66000u32 : GoUInt32), (48u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66001u32 : GoUInt32), (66044u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67703u32 : GoUInt32), (67704u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68296u32 : GoUInt32), (71487u32 : GoUInt32), (3191u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73685u32 : GoUInt32), (73692u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73697u32 : GoUInt32), (73713u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92988u32 : GoUInt32), (92991u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92997u32 : GoUInt32), (113820u32 : GoUInt32), (20823u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((118784u32 : GoUInt32), (119029u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119040u32 : GoUInt32), (119078u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119081u32 : GoUInt32), (119140u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119146u32 : GoUInt32), (119148u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119171u32 : GoUInt32), (119172u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119180u32 : GoUInt32), (119209u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119214u32 : GoUInt32), (119272u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119296u32 : GoUInt32), (119361u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119365u32 : GoUInt32), (119552u32 : GoUInt32), (187u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119553u32 : GoUInt32), (119638u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120832u32 : GoUInt32), (121343u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121399u32 : GoUInt32), (121402u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121453u32 : GoUInt32), (121460u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121462u32 : GoUInt32), (121475u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121477u32 : GoUInt32), (121478u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123215u32 : GoUInt32), (126124u32 : GoUInt32), (2909u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126254u32 : GoUInt32), (126976u32 : GoUInt32), (722u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126977u32 : GoUInt32), (127019u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127024u32 : GoUInt32), (127123u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127136u32 : GoUInt32), (127150u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127153u32 : GoUInt32), (127167u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127169u32 : GoUInt32), (127183u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127185u32 : GoUInt32), (127221u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127245u32 : GoUInt32), (127405u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127462u32 : GoUInt32), (127490u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127504u32 : GoUInt32), (127547u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127552u32 : GoUInt32), (127560u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127568u32 : GoUInt32), (127569u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127584u32 : GoUInt32), (127589u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127744u32 : GoUInt32), (127994u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((128000u32 : GoUInt32), (128727u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((128736u32 : GoUInt32), (128748u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((128752u32 : GoUInt32), (128764u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((128768u32 : GoUInt32), (128883u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((128896u32 : GoUInt32), (128984u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((128992u32 : GoUInt32), (129003u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129024u32 : GoUInt32), (129035u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129040u32 : GoUInt32), (129095u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129104u32 : GoUInt32), (129113u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129120u32 : GoUInt32), (129159u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129168u32 : GoUInt32), (129197u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129200u32 : GoUInt32), (129201u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129280u32 : GoUInt32), (129400u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129402u32 : GoUInt32), (129483u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129485u32 : GoUInt32), (129619u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129632u32 : GoUInt32), (129645u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129648u32 : GoUInt32), (129652u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129656u32 : GoUInt32), (129658u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129664u32 : GoUInt32), (129670u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129680u32 : GoUInt32), (129704u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129712u32 : GoUInt32), (129718u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129728u32 : GoUInt32), (129730u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129744u32 : GoUInt32), (129750u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129792u32 : GoUInt32), (129938u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129940u32 : GoUInt32), (129994u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (2 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Z = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((32 : GoUInt16), (160 : GoUInt16), (128 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((5760 : GoUInt16), (8192 : GoUInt16), (2432 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8193 : GoUInt16), (8202 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8232 : GoUInt16), (8233 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8239 : GoUInt16), (8287 : GoUInt16), (48 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((12288 : GoUInt16), (12288 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), latinOffset : (1 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Zl = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((8232 : GoUInt16), (8232 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Zp = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((8233 : GoUInt16), (8233 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Zs = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((32 : GoUInt16), (160 : GoUInt16), (128 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((5760 : GoUInt16), (8192 : GoUInt16), (2432 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8193 : GoUInt16), (8202 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8239 : GoUInt16), (8287 : GoUInt16), (48 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((12288 : GoUInt16), (12288 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), latinOffset : (1 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    // These variables have type *RangeTable.
    
    // Cc is the set of Unicode characters in category Cc (Other, control).
**/
var cc = __Cc;
/**
    // These variables have type *RangeTable.
    
    // Cf is the set of Unicode characters in category Cf (Other, format).
**/
var cf = __Cf;
/**
    // These variables have type *RangeTable.
    
    // Co is the set of Unicode characters in category Co (Other, private use).
**/
var co = __Co;
/**
    // These variables have type *RangeTable.
    
    // Cs is the set of Unicode characters in category Cs (Other, surrogate).
**/
var cs = __Cs;
/**
    // These variables have type *RangeTable.
    
    // Digit is the set of Unicode characters with the "decimal digit" property.
**/
var digit = __Nd;
/**
    // These variables have type *RangeTable.
    
    // Nd is the set of Unicode characters in category Nd (Number, decimal digit).
**/
var nd = __Nd;
/**
    // These variables have type *RangeTable.
    
    // Letter/L is the set of Unicode letters, category L.
**/
var letter = __L;
/**
    // These variables have type *RangeTable.
    
    
**/
var l = __L;
/**
    // These variables have type *RangeTable.
    
    // Lm is the set of Unicode characters in category Lm (Letter, modifier).
**/
var lm = __Lm;
/**
    // These variables have type *RangeTable.
    
    // Lo is the set of Unicode characters in category Lo (Letter, other).
**/
var lo = __Lo;
/**
    // These variables have type *RangeTable.
    
    // Lower is the set of Unicode lower case letters.
**/
var lower = __Ll;
/**
    // These variables have type *RangeTable.
    
    // Ll is the set of Unicode characters in category Ll (Letter, lowercase).
**/
var ll = __Ll;
/**
    // These variables have type *RangeTable.
    
    // Mark/M is the set of Unicode mark characters, category M.
**/
var mark = __M;
/**
    // These variables have type *RangeTable.
    
    
**/
var m = __M;
/**
    // These variables have type *RangeTable.
    
    // Mc is the set of Unicode characters in category Mc (Mark, spacing combining).
**/
var mc = __Mc;
/**
    // These variables have type *RangeTable.
    
    // Me is the set of Unicode characters in category Me (Mark, enclosing).
**/
var me = __Me;
/**
    // These variables have type *RangeTable.
    
    // Mn is the set of Unicode characters in category Mn (Mark, nonspacing).
**/
var mn = __Mn;
/**
    // These variables have type *RangeTable.
    
    // Nl is the set of Unicode characters in category Nl (Number, letter).
**/
var nl = __Nl;
/**
    // These variables have type *RangeTable.
    
    // No is the set of Unicode characters in category No (Number, other).
**/
var no = __No;
/**
    // These variables have type *RangeTable.
    
    // Number/N is the set of Unicode number characters, category N.
**/
var number = __N;
/**
    // These variables have type *RangeTable.
    
    
**/
var n = __N;
/**
    // These variables have type *RangeTable.
    
    // Other/C is the set of Unicode control and special characters, category C.
**/
var other = __C;
/**
    // These variables have type *RangeTable.
    
    
**/
var c = __C;
/**
    // These variables have type *RangeTable.
    
    // Pc is the set of Unicode characters in category Pc (Punctuation, connector).
**/
var pc = __Pc;
/**
    // These variables have type *RangeTable.
    
    // Pd is the set of Unicode characters in category Pd (Punctuation, dash).
**/
var pd = __Pd;
/**
    // These variables have type *RangeTable.
    
    // Pe is the set of Unicode characters in category Pe (Punctuation, close).
**/
var pe = __Pe;
/**
    // These variables have type *RangeTable.
    
    // Pf is the set of Unicode characters in category Pf (Punctuation, final quote).
**/
var pf = __Pf;
/**
    // These variables have type *RangeTable.
    
    // Pi is the set of Unicode characters in category Pi (Punctuation, initial quote).
**/
var pi = __Pi;
/**
    // These variables have type *RangeTable.
    
    // Po is the set of Unicode characters in category Po (Punctuation, other).
**/
var po = __Po;
/**
    // These variables have type *RangeTable.
    
    // Ps is the set of Unicode characters in category Ps (Punctuation, open).
**/
var ps = __Ps;
/**
    // These variables have type *RangeTable.
    
    // Punct/P is the set of Unicode punctuation characters, category P.
**/
var punct = __P;
/**
    // These variables have type *RangeTable.
    
    
**/
var p = __P;
/**
    // These variables have type *RangeTable.
    
    // Sc is the set of Unicode characters in category Sc (Symbol, currency).
**/
var sc = __Sc;
/**
    // These variables have type *RangeTable.
    
    // Sk is the set of Unicode characters in category Sk (Symbol, modifier).
**/
var sk = __Sk;
/**
    // These variables have type *RangeTable.
    
    // Sm is the set of Unicode characters in category Sm (Symbol, math).
**/
var sm = __Sm;
/**
    // These variables have type *RangeTable.
    
    // So is the set of Unicode characters in category So (Symbol, other).
**/
var so = __So;
/**
    // These variables have type *RangeTable.
    
    // Space/Z is the set of Unicode space characters, category Z.
**/
var space = __Z;
/**
    // These variables have type *RangeTable.
    
    
**/
var z = __Z;
/**
    // These variables have type *RangeTable.
    
    // Symbol/S is the set of Unicode symbol characters, category S.
**/
var symbol = __S;
/**
    // These variables have type *RangeTable.
    
    
**/
var s = __S;
/**
    // PrintRanges defines the set of printable characters according to Go.
    // ASCII space, U+0020, is handled separately.
    
    
**/
var printRanges = (new Slice<Ref<stdgo.unicode.Unicode.RangeTable>>(0, 0, l, m, n, p, s) : Slice<Ref<stdgo.unicode.Unicode.RangeTable>>);
/**
    // These variables have type *RangeTable.
    
    // Title is the set of Unicode title case letters.
**/
var title = __Lt;
/**
    // These variables have type *RangeTable.
    
    // Lt is the set of Unicode characters in category Lt (Letter, titlecase).
**/
var lt = __Lt;
/**
    // These variables have type *RangeTable.
    
    // Upper is the set of Unicode upper case letters.
**/
var upper = __Lu;
/**
    // These variables have type *RangeTable.
    
    // Lu is the set of Unicode characters in category Lu (Letter, uppercase).
**/
var lu = __Lu;
/**
    // These variables have type *RangeTable.
    
    // Zl is the set of Unicode characters in category Zl (Separator, line).
**/
var zl = __Zl;
/**
    // These variables have type *RangeTable.
    
    // Zp is the set of Unicode characters in category Zp (Separator, paragraph).
**/
var zp = __Zp;
/**
    // These variables have type *RangeTable.
    
    // Zs is the set of Unicode characters in category Zs (Separator, space).
**/
var zs = __Zs;
/**
    // GraphicRanges defines the set of graphic characters according to Unicode.
    
    
**/
var graphicRanges = (new Slice<Ref<stdgo.unicode.Unicode.RangeTable>>(0, 0, l, m, n, p, s, zs) : Slice<Ref<stdgo.unicode.Unicode.RangeTable>>);
/**
    // Categories is the set of Unicode category tables.
    
    
**/
var categories = ({
    final x = new stdgo.GoMap.GoObjectMap<GoString, Ref<stdgo.unicode.Unicode.RangeTable>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.unicode.Unicode.RangeTable", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "r16", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.unicode.Unicode.Range16", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "hi", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "stride", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "r32", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.unicode.Unicode.Range32", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "hi", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "stride", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "latinOffset", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) }) })));
    @:privateAccess x._keys = [
("C" : GoString),
("Cc" : GoString),
("Cf" : GoString),
("Co" : GoString),
("Cs" : GoString),
("L" : GoString),
("Ll" : GoString),
("Lm" : GoString),
("Lo" : GoString),
("Lt" : GoString),
("Lu" : GoString),
("M" : GoString),
("Mc" : GoString),
("Me" : GoString),
("Mn" : GoString),
("N" : GoString),
("Nd" : GoString),
("Nl" : GoString),
("No" : GoString),
("P" : GoString),
("Pc" : GoString),
("Pd" : GoString),
("Pe" : GoString),
("Pf" : GoString),
("Pi" : GoString),
("Po" : GoString),
("Ps" : GoString),
("S" : GoString),
("Sc" : GoString),
("Sk" : GoString),
("Sm" : GoString),
("So" : GoString),
("Z" : GoString),
("Zl" : GoString),
("Zp" : GoString),
("Zs" : GoString)];
    @:privateAccess x._values = [
c,
cc,
cf,
co,
cs,
l,
ll,
lm,
lo,
lt,
lu,
m,
mc,
me,
mn,
n,
nd,
nl,
no,
p,
pc,
pd,
pe,
pf,
pi,
po,
ps,
s,
sc,
sk,
sm,
so,
z,
zl,
zp,
zs];
    x;
} : stdgo.GoMap<GoString, Ref<stdgo.unicode.Unicode.RangeTable>>);
/**
    
    
    
**/
private var __Adlam = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((125184u32 : GoUInt32), (125259u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((125264u32 : GoUInt32), (125273u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((125278u32 : GoUInt32), (125279u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Ahom = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((71424u32 : GoUInt32), (71450u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((71453u32 : GoUInt32), (71467u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((71472u32 : GoUInt32), (71487u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Anatolian_Hieroglyphs = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((82944u32 : GoUInt32), (83526u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Arabic = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((1536 : GoUInt16), (1540 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1542 : GoUInt16), (1547 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1549 : GoUInt16), (1562 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1564 : GoUInt16), (1568 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1569 : GoUInt16), (1599 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1601 : GoUInt16), (1610 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1622 : GoUInt16), (1647 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1649 : GoUInt16), (1756 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1758 : GoUInt16), (1791 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1872 : GoUInt16), (1919 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2208 : GoUInt16), (2228 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2230 : GoUInt16), (2247 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2259 : GoUInt16), (2273 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2275 : GoUInt16), (2303 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64336 : GoUInt16), (64449 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64467 : GoUInt16), (64829 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64848 : GoUInt16), (64911 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64914 : GoUInt16), (64967 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65008 : GoUInt16), (65021 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65136 : GoUInt16), (65140 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65142 : GoUInt16), (65276 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((69216u32 : GoUInt32), (69246u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126464u32 : GoUInt32), (126467u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126469u32 : GoUInt32), (126495u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126497u32 : GoUInt32), (126498u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126500u32 : GoUInt32), (126503u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126505u32 : GoUInt32), (126514u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126516u32 : GoUInt32), (126519u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126521u32 : GoUInt32), (126523u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126530u32 : GoUInt32), (126535u32 : GoUInt32), (5u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126537u32 : GoUInt32), (126541u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126542u32 : GoUInt32), (126543u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126545u32 : GoUInt32), (126546u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126548u32 : GoUInt32), (126551u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126553u32 : GoUInt32), (126561u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126562u32 : GoUInt32), (126564u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126567u32 : GoUInt32), (126570u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126572u32 : GoUInt32), (126578u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126580u32 : GoUInt32), (126583u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126585u32 : GoUInt32), (126588u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126590u32 : GoUInt32), (126592u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126593u32 : GoUInt32), (126601u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126603u32 : GoUInt32), (126619u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126625u32 : GoUInt32), (126627u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126629u32 : GoUInt32), (126633u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126635u32 : GoUInt32), (126651u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126704u32 : GoUInt32), (126705u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Armenian = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((1329 : GoUInt16), (1366 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((1369 : GoUInt16), (1418 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((1421 : GoUInt16), (1423 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((64275 : GoUInt16), (64279 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Avestan = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((68352u32 : GoUInt32), (68405u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68409u32 : GoUInt32), (68415u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Balinese = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((6912 : GoUInt16), (6987 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6992 : GoUInt16), (7036 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Bamum = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((42656 : GoUInt16), (42743 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((92160u32 : GoUInt32), (92728u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Bassa_Vah = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((92880u32 : GoUInt32), (92909u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((92912u32 : GoUInt32), (92917u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Batak = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((7104 : GoUInt16), (7155 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((7164 : GoUInt16), (7167 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Bengali = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((2432 : GoUInt16), (2435 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2437 : GoUInt16), (2444 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2447 : GoUInt16), (2448 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2451 : GoUInt16), (2472 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2474 : GoUInt16), (2480 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2482 : GoUInt16), (2486 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2487 : GoUInt16), (2489 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2492 : GoUInt16), (2500 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2503 : GoUInt16), (2504 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2507 : GoUInt16), (2510 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2519 : GoUInt16), (2524 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2525 : GoUInt16), (2527 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2528 : GoUInt16), (2531 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2534 : GoUInt16), (2558 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Bhaiksuki = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((72704u32 : GoUInt32), (72712u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((72714u32 : GoUInt32), (72758u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((72760u32 : GoUInt32), (72773u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((72784u32 : GoUInt32), (72812u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Bopomofo = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((746 : GoUInt16), (747 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((12549 : GoUInt16), (12591 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((12704 : GoUInt16), (12735 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Brahmi = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((69632u32 : GoUInt32), (69709u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((69714u32 : GoUInt32), (69743u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((69759u32 : GoUInt32), (69759u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Braille = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((10240 : GoUInt16), (10495 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Buginese = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((6656 : GoUInt16), (6683 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6686 : GoUInt16), (6687 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Buhid = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((5952 : GoUInt16), (5971 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Canadian_Aboriginal = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((5120 : GoUInt16), (5759 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6320 : GoUInt16), (6389 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Carian = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((66208u32 : GoUInt32), (66256u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Caucasian_Albanian = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((66864u32 : GoUInt32), (66915u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((66927u32 : GoUInt32), (66927u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Chakma = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((69888u32 : GoUInt32), (69940u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((69942u32 : GoUInt32), (69959u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Cham = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((43520 : GoUInt16), (43574 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((43584 : GoUInt16), (43597 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((43600 : GoUInt16), (43609 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((43612 : GoUInt16), (43615 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Cherokee = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((5024 : GoUInt16), (5109 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((5112 : GoUInt16), (5117 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((43888 : GoUInt16), (43967 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Chorasmian = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((69552u32 : GoUInt32), (69579u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Common = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((0 : GoUInt16), (64 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((91 : GoUInt16), (96 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((123 : GoUInt16), (169 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((171 : GoUInt16), (185 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((187 : GoUInt16), (191 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((215 : GoUInt16), (247 : GoUInt16), (32 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((697 : GoUInt16), (735 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((741 : GoUInt16), (745 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((748 : GoUInt16), (767 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((884 : GoUInt16), (894 : GoUInt16), (10 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((901 : GoUInt16), (903 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1541 : GoUInt16), (1548 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1563 : GoUInt16), (1567 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1600 : GoUInt16), (1757 : GoUInt16), (157 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2274 : GoUInt16), (2404 : GoUInt16), (130 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2405 : GoUInt16), (3647 : GoUInt16), (1242 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4053 : GoUInt16), (4056 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4347 : GoUInt16), (5867 : GoUInt16), (1520 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5868 : GoUInt16), (5869 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5941 : GoUInt16), (5942 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6146 : GoUInt16), (6147 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6149 : GoUInt16), (7379 : GoUInt16), (1230 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7393 : GoUInt16), (7401 : GoUInt16), (8 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7402 : GoUInt16), (7404 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7406 : GoUInt16), (7411 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7413 : GoUInt16), (7415 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7418 : GoUInt16), (8192 : GoUInt16), (774 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8193 : GoUInt16), (8203 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8206 : GoUInt16), (8292 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8294 : GoUInt16), (8304 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8308 : GoUInt16), (8318 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8320 : GoUInt16), (8334 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8352 : GoUInt16), (8383 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8448 : GoUInt16), (8485 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8487 : GoUInt16), (8489 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8492 : GoUInt16), (8497 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8499 : GoUInt16), (8525 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8527 : GoUInt16), (8543 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8585 : GoUInt16), (8587 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8592 : GoUInt16), (9254 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9280 : GoUInt16), (9290 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9312 : GoUInt16), (10239 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10496 : GoUInt16), (11123 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11126 : GoUInt16), (11157 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11159 : GoUInt16), (11263 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11776 : GoUInt16), (11858 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12272 : GoUInt16), (12283 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12288 : GoUInt16), (12292 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12294 : GoUInt16), (12296 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12297 : GoUInt16), (12320 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12336 : GoUInt16), (12343 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12348 : GoUInt16), (12351 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12443 : GoUInt16), (12444 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12448 : GoUInt16), (12539 : GoUInt16), (91 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12540 : GoUInt16), (12688 : GoUInt16), (148 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12689 : GoUInt16), (12703 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12736 : GoUInt16), (12771 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12832 : GoUInt16), (12895 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12927 : GoUInt16), (13007 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((13055 : GoUInt16), (13144 : GoUInt16), (89 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((13145 : GoUInt16), (13311 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((19904 : GoUInt16), (19967 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42752 : GoUInt16), (42785 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42888 : GoUInt16), (42890 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43056 : GoUInt16), (43065 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43310 : GoUInt16), (43471 : GoUInt16), (161 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43867 : GoUInt16), (43882 : GoUInt16), (15 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43883 : GoUInt16), (64830 : GoUInt16), (20947 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64831 : GoUInt16), (65040 : GoUInt16), (209 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65041 : GoUInt16), (65049 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65072 : GoUInt16), (65106 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65108 : GoUInt16), (65126 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65128 : GoUInt16), (65131 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65279 : GoUInt16), (65281 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65282 : GoUInt16), (65312 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65339 : GoUInt16), (65344 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65371 : GoUInt16), (65381 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65392 : GoUInt16), (65438 : GoUInt16), (46 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65439 : GoUInt16), (65504 : GoUInt16), (65 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65505 : GoUInt16), (65510 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65512 : GoUInt16), (65518 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65529 : GoUInt16), (65533 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((65792u32 : GoUInt32), (65794u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65799u32 : GoUInt32), (65843u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65847u32 : GoUInt32), (65855u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((65936u32 : GoUInt32), (65948u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66000u32 : GoUInt32), (66044u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((66273u32 : GoUInt32), (66299u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94178u32 : GoUInt32), (94179u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((113824u32 : GoUInt32), (113827u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((118784u32 : GoUInt32), (119029u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119040u32 : GoUInt32), (119078u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119081u32 : GoUInt32), (119142u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119146u32 : GoUInt32), (119162u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119171u32 : GoUInt32), (119172u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119180u32 : GoUInt32), (119209u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119214u32 : GoUInt32), (119272u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119520u32 : GoUInt32), (119539u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119552u32 : GoUInt32), (119638u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119648u32 : GoUInt32), (119672u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119808u32 : GoUInt32), (119892u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119894u32 : GoUInt32), (119964u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119966u32 : GoUInt32), (119967u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119970u32 : GoUInt32), (119973u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119974u32 : GoUInt32), (119977u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119978u32 : GoUInt32), (119980u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119982u32 : GoUInt32), (119993u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119995u32 : GoUInt32), (119997u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119998u32 : GoUInt32), (120003u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120005u32 : GoUInt32), (120069u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120071u32 : GoUInt32), (120074u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120077u32 : GoUInt32), (120084u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120086u32 : GoUInt32), (120092u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120094u32 : GoUInt32), (120121u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120123u32 : GoUInt32), (120126u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120128u32 : GoUInt32), (120132u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120134u32 : GoUInt32), (120138u32 : GoUInt32), (4u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120139u32 : GoUInt32), (120144u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120146u32 : GoUInt32), (120485u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120488u32 : GoUInt32), (120779u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120782u32 : GoUInt32), (120831u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126065u32 : GoUInt32), (126132u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126209u32 : GoUInt32), (126269u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126976u32 : GoUInt32), (127019u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127024u32 : GoUInt32), (127123u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127136u32 : GoUInt32), (127150u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127153u32 : GoUInt32), (127167u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127169u32 : GoUInt32), (127183u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127185u32 : GoUInt32), (127221u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127232u32 : GoUInt32), (127405u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127462u32 : GoUInt32), (127487u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127489u32 : GoUInt32), (127490u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127504u32 : GoUInt32), (127547u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127552u32 : GoUInt32), (127560u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127568u32 : GoUInt32), (127569u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127584u32 : GoUInt32), (127589u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127744u32 : GoUInt32), (128727u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((128736u32 : GoUInt32), (128748u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((128752u32 : GoUInt32), (128764u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((128768u32 : GoUInt32), (128883u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((128896u32 : GoUInt32), (128984u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((128992u32 : GoUInt32), (129003u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129024u32 : GoUInt32), (129035u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129040u32 : GoUInt32), (129095u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129104u32 : GoUInt32), (129113u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129120u32 : GoUInt32), (129159u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129168u32 : GoUInt32), (129197u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129200u32 : GoUInt32), (129201u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129280u32 : GoUInt32), (129400u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129402u32 : GoUInt32), (129483u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129485u32 : GoUInt32), (129619u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129632u32 : GoUInt32), (129645u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129648u32 : GoUInt32), (129652u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129656u32 : GoUInt32), (129658u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129664u32 : GoUInt32), (129670u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129680u32 : GoUInt32), (129704u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129712u32 : GoUInt32), (129718u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129728u32 : GoUInt32), (129730u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129744u32 : GoUInt32), (129750u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129792u32 : GoUInt32), (129938u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((129940u32 : GoUInt32), (129994u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((130032u32 : GoUInt32), (130041u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((917505u32 : GoUInt32), (917536u32 : GoUInt32), (31u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((917537u32 : GoUInt32), (917631u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (6 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Coptic = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((994 : GoUInt16), (1007 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((11392 : GoUInt16), (11507 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((11513 : GoUInt16), (11519 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Cuneiform = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((73728u32 : GoUInt32), (74649u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((74752u32 : GoUInt32), (74862u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((74864u32 : GoUInt32), (74868u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((74880u32 : GoUInt32), (75075u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Cypriot = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((67584u32 : GoUInt32), (67589u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((67592u32 : GoUInt32), (67594u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((67595u32 : GoUInt32), (67637u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((67639u32 : GoUInt32), (67640u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((67644u32 : GoUInt32), (67647u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Cyrillic = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((1024 : GoUInt16), (1156 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((1159 : GoUInt16), (1327 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((7296 : GoUInt16), (7304 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((7467 : GoUInt16), (7544 : GoUInt16), (77 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((11744 : GoUInt16), (11775 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((42560 : GoUInt16), (42655 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((65070 : GoUInt16), (65071 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Deseret = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((66560u32 : GoUInt32), (66639u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Devanagari = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((2304 : GoUInt16), (2384 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((2389 : GoUInt16), (2403 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((2406 : GoUInt16), (2431 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((43232 : GoUInt16), (43263 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Dives_Akuru = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((71936u32 : GoUInt32), (71942u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((71945u32 : GoUInt32), (71948u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((71949u32 : GoUInt32), (71955u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((71957u32 : GoUInt32), (71958u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((71960u32 : GoUInt32), (71989u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((71991u32 : GoUInt32), (71992u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((71995u32 : GoUInt32), (72006u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((72016u32 : GoUInt32), (72025u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Dogra = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((71680u32 : GoUInt32), (71739u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Duployan = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((113664u32 : GoUInt32), (113770u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((113776u32 : GoUInt32), (113788u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((113792u32 : GoUInt32), (113800u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((113808u32 : GoUInt32), (113817u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((113820u32 : GoUInt32), (113823u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Egyptian_Hieroglyphs = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((77824u32 : GoUInt32), (78894u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((78896u32 : GoUInt32), (78904u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Elbasan = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((66816u32 : GoUInt32), (66855u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Elymaic = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((69600u32 : GoUInt32), (69622u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Ethiopic = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((4608 : GoUInt16), (4680 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4682 : GoUInt16), (4685 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4688 : GoUInt16), (4694 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4696 : GoUInt16), (4698 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4699 : GoUInt16), (4701 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4704 : GoUInt16), (4744 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4746 : GoUInt16), (4749 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4752 : GoUInt16), (4784 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4786 : GoUInt16), (4789 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4792 : GoUInt16), (4798 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4800 : GoUInt16), (4802 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4803 : GoUInt16), (4805 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4808 : GoUInt16), (4822 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4824 : GoUInt16), (4880 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4882 : GoUInt16), (4885 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4888 : GoUInt16), (4954 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4957 : GoUInt16), (4988 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4992 : GoUInt16), (5017 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11648 : GoUInt16), (11670 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11680 : GoUInt16), (11686 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11688 : GoUInt16), (11694 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11696 : GoUInt16), (11702 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11704 : GoUInt16), (11710 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11712 : GoUInt16), (11718 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11720 : GoUInt16), (11726 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11728 : GoUInt16), (11734 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11736 : GoUInt16), (11742 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43777 : GoUInt16), (43782 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43785 : GoUInt16), (43790 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43793 : GoUInt16), (43798 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43808 : GoUInt16), (43814 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43816 : GoUInt16), (43822 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Georgian = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((4256 : GoUInt16), (4293 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((4295 : GoUInt16), (4301 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((4304 : GoUInt16), (4346 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((4348 : GoUInt16), (4351 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((7312 : GoUInt16), (7354 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((7357 : GoUInt16), (7359 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((11520 : GoUInt16), (11557 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((11559 : GoUInt16), (11565 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Glagolitic = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((11264 : GoUInt16), (11310 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((11312 : GoUInt16), (11358 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((122880u32 : GoUInt32), (122886u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((122888u32 : GoUInt32), (122904u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((122907u32 : GoUInt32), (122913u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((122915u32 : GoUInt32), (122916u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((122918u32 : GoUInt32), (122922u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Gothic = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((66352u32 : GoUInt32), (66378u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Grantha = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((70400u32 : GoUInt32), (70403u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70405u32 : GoUInt32), (70412u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70415u32 : GoUInt32), (70416u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70419u32 : GoUInt32), (70440u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70442u32 : GoUInt32), (70448u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70450u32 : GoUInt32), (70451u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70453u32 : GoUInt32), (70457u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70460u32 : GoUInt32), (70468u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70471u32 : GoUInt32), (70472u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70475u32 : GoUInt32), (70477u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70480u32 : GoUInt32), (70487u32 : GoUInt32), (7u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70493u32 : GoUInt32), (70499u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70502u32 : GoUInt32), (70508u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70512u32 : GoUInt32), (70516u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Greek = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((880 : GoUInt16), (883 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((885 : GoUInt16), (887 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((890 : GoUInt16), (893 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((895 : GoUInt16), (900 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((902 : GoUInt16), (904 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((905 : GoUInt16), (906 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((908 : GoUInt16), (910 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((911 : GoUInt16), (929 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((931 : GoUInt16), (993 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1008 : GoUInt16), (1023 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7462 : GoUInt16), (7466 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7517 : GoUInt16), (7521 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7526 : GoUInt16), (7530 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7615 : GoUInt16), (7936 : GoUInt16), (321 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7937 : GoUInt16), (7957 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7960 : GoUInt16), (7965 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7968 : GoUInt16), (8005 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8008 : GoUInt16), (8013 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8016 : GoUInt16), (8023 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8025 : GoUInt16), (8031 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8032 : GoUInt16), (8061 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8064 : GoUInt16), (8116 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8118 : GoUInt16), (8132 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8134 : GoUInt16), (8147 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8150 : GoUInt16), (8155 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8157 : GoUInt16), (8175 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8178 : GoUInt16), (8180 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8182 : GoUInt16), (8190 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8486 : GoUInt16), (43877 : GoUInt16), (35391 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((65856u32 : GoUInt32), (65934u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((65952u32 : GoUInt32), (119296u32 : GoUInt32), (53344u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((119297u32 : GoUInt32), (119365u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Gujarati = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((2689 : GoUInt16), (2691 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2693 : GoUInt16), (2701 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2703 : GoUInt16), (2705 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2707 : GoUInt16), (2728 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2730 : GoUInt16), (2736 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2738 : GoUInt16), (2739 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2741 : GoUInt16), (2745 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2748 : GoUInt16), (2757 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2759 : GoUInt16), (2761 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2763 : GoUInt16), (2765 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2768 : GoUInt16), (2784 : GoUInt16), (16 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2785 : GoUInt16), (2787 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2790 : GoUInt16), (2801 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2809 : GoUInt16), (2815 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Gunjala_Gondi = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((73056u32 : GoUInt32), (73061u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((73063u32 : GoUInt32), (73064u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((73066u32 : GoUInt32), (73102u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((73104u32 : GoUInt32), (73105u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((73107u32 : GoUInt32), (73112u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((73120u32 : GoUInt32), (73129u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Gurmukhi = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((2561 : GoUInt16), (2563 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2565 : GoUInt16), (2570 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2575 : GoUInt16), (2576 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2579 : GoUInt16), (2600 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2602 : GoUInt16), (2608 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2610 : GoUInt16), (2611 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2613 : GoUInt16), (2614 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2616 : GoUInt16), (2617 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2620 : GoUInt16), (2622 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2623 : GoUInt16), (2626 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2631 : GoUInt16), (2632 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2635 : GoUInt16), (2637 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2641 : GoUInt16), (2649 : GoUInt16), (8 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2650 : GoUInt16), (2652 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2654 : GoUInt16), (2662 : GoUInt16), (8 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2663 : GoUInt16), (2678 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Han = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((11904 : GoUInt16), (11929 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11931 : GoUInt16), (12019 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12032 : GoUInt16), (12245 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12293 : GoUInt16), (12295 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12321 : GoUInt16), (12329 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12344 : GoUInt16), (12347 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((13312 : GoUInt16), (19903 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((19968 : GoUInt16), (40956 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((63744 : GoUInt16), (64109 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64112 : GoUInt16), (64217 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((94192u32 : GoUInt32), (94193u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((131072u32 : GoUInt32), (173789u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((173824u32 : GoUInt32), (177972u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((177984u32 : GoUInt32), (178205u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((178208u32 : GoUInt32), (183969u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((183984u32 : GoUInt32), (191456u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((194560u32 : GoUInt32), (195101u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((196608u32 : GoUInt32), (201546u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Hangul = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((4352 : GoUInt16), (4607 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12334 : GoUInt16), (12335 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12593 : GoUInt16), (12686 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12800 : GoUInt16), (12830 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12896 : GoUInt16), (12926 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43360 : GoUInt16), (43388 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44032 : GoUInt16), (55203 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((55216 : GoUInt16), (55238 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((55243 : GoUInt16), (55291 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65440 : GoUInt16), (65470 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65474 : GoUInt16), (65479 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65482 : GoUInt16), (65487 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65490 : GoUInt16), (65495 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65498 : GoUInt16), (65500 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Hanifi_Rohingya = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((68864u32 : GoUInt32), (68903u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68912u32 : GoUInt32), (68921u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Hanunoo = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((5920 : GoUInt16), (5940 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Hatran = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((67808u32 : GoUInt32), (67826u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((67828u32 : GoUInt32), (67829u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((67835u32 : GoUInt32), (67839u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Hebrew = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((1425 : GoUInt16), (1479 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1488 : GoUInt16), (1514 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1519 : GoUInt16), (1524 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64285 : GoUInt16), (64310 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64312 : GoUInt16), (64316 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64318 : GoUInt16), (64320 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64321 : GoUInt16), (64323 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64324 : GoUInt16), (64326 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64327 : GoUInt16), (64335 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Hiragana = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((12353 : GoUInt16), (12438 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((12445 : GoUInt16), (12447 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((110593u32 : GoUInt32), (110878u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((110928u32 : GoUInt32), (110930u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((127488u32 : GoUInt32), (127488u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Imperial_Aramaic = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((67648u32 : GoUInt32), (67669u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((67671u32 : GoUInt32), (67679u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Inherited = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((768 : GoUInt16), (879 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1157 : GoUInt16), (1158 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1611 : GoUInt16), (1621 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1648 : GoUInt16), (2385 : GoUInt16), (737 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2386 : GoUInt16), (2388 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6832 : GoUInt16), (6848 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7376 : GoUInt16), (7378 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7380 : GoUInt16), (7392 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7394 : GoUInt16), (7400 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7405 : GoUInt16), (7412 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7416 : GoUInt16), (7417 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7616 : GoUInt16), (7673 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7675 : GoUInt16), (7679 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8204 : GoUInt16), (8205 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8400 : GoUInt16), (8432 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12330 : GoUInt16), (12333 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12441 : GoUInt16), (12442 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65024 : GoUInt16), (65039 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65056 : GoUInt16), (65069 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((66045u32 : GoUInt32), (66272u32 : GoUInt32), (227u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((70459u32 : GoUInt32), (119143u32 : GoUInt32), (48684u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((119144u32 : GoUInt32), (119145u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((119163u32 : GoUInt32), (119170u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((119173u32 : GoUInt32), (119179u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((119210u32 : GoUInt32), (119213u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((917760u32 : GoUInt32), (917999u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Inscriptional_Pahlavi = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((68448u32 : GoUInt32), (68466u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68472u32 : GoUInt32), (68479u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Inscriptional_Parthian = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((68416u32 : GoUInt32), (68437u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68440u32 : GoUInt32), (68447u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Javanese = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((43392 : GoUInt16), (43469 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((43472 : GoUInt16), (43481 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((43486 : GoUInt16), (43487 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Kaithi = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((69760u32 : GoUInt32), (69825u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((69837u32 : GoUInt32), (69837u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Kannada = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((3200 : GoUInt16), (3212 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3214 : GoUInt16), (3216 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3218 : GoUInt16), (3240 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3242 : GoUInt16), (3251 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3253 : GoUInt16), (3257 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3260 : GoUInt16), (3268 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3270 : GoUInt16), (3272 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3274 : GoUInt16), (3277 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3285 : GoUInt16), (3286 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3294 : GoUInt16), (3296 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3297 : GoUInt16), (3299 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3302 : GoUInt16), (3311 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3313 : GoUInt16), (3314 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Katakana = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((12449 : GoUInt16), (12538 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((12541 : GoUInt16), (12543 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((12784 : GoUInt16), (12799 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((13008 : GoUInt16), (13054 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((13056 : GoUInt16), (13143 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((65382 : GoUInt16), (65391 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((65393 : GoUInt16), (65437 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((110592u32 : GoUInt32), (110948u32 : GoUInt32), (356u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((110949u32 : GoUInt32), (110951u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Kayah_Li = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((43264 : GoUInt16), (43309 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((43311 : GoUInt16), (43311 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Kharoshthi = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((68096u32 : GoUInt32), (68099u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68101u32 : GoUInt32), (68102u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68108u32 : GoUInt32), (68115u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68117u32 : GoUInt32), (68119u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68121u32 : GoUInt32), (68149u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68152u32 : GoUInt32), (68154u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68159u32 : GoUInt32), (68168u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68176u32 : GoUInt32), (68184u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Khitan_Small_Script = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((94180u32 : GoUInt32), (101120u32 : GoUInt32), (6940u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((101121u32 : GoUInt32), (101589u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Khmer = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((6016 : GoUInt16), (6109 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6112 : GoUInt16), (6121 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6128 : GoUInt16), (6137 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6624 : GoUInt16), (6655 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Khojki = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((70144u32 : GoUInt32), (70161u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((70163u32 : GoUInt32), (70206u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Khudawadi = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((70320u32 : GoUInt32), (70378u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((70384u32 : GoUInt32), (70393u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Lao = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((3713 : GoUInt16), (3714 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3716 : GoUInt16), (3718 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3719 : GoUInt16), (3722 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3724 : GoUInt16), (3747 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3749 : GoUInt16), (3751 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3752 : GoUInt16), (3773 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3776 : GoUInt16), (3780 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3782 : GoUInt16), (3784 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3785 : GoUInt16), (3789 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3792 : GoUInt16), (3801 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3804 : GoUInt16), (3807 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Latin = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((65 : GoUInt16), (90 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((97 : GoUInt16), (122 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((170 : GoUInt16), (186 : GoUInt16), (16 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((192 : GoUInt16), (214 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((216 : GoUInt16), (246 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((248 : GoUInt16), (696 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((736 : GoUInt16), (740 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7424 : GoUInt16), (7461 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7468 : GoUInt16), (7516 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7522 : GoUInt16), (7525 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7531 : GoUInt16), (7543 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7545 : GoUInt16), (7614 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7680 : GoUInt16), (7935 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8305 : GoUInt16), (8319 : GoUInt16), (14 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8336 : GoUInt16), (8348 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8490 : GoUInt16), (8491 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8498 : GoUInt16), (8526 : GoUInt16), (28 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8544 : GoUInt16), (8584 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11360 : GoUInt16), (11391 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42786 : GoUInt16), (42887 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42891 : GoUInt16), (42943 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42946 : GoUInt16), (42954 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42997 : GoUInt16), (43007 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43824 : GoUInt16), (43866 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43868 : GoUInt16), (43876 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43878 : GoUInt16), (43881 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64256 : GoUInt16), (64262 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65313 : GoUInt16), (65338 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65345 : GoUInt16), (65370 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), latinOffset : (5 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Lepcha = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((7168 : GoUInt16), (7223 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((7227 : GoUInt16), (7241 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((7245 : GoUInt16), (7247 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Limbu = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((6400 : GoUInt16), (6430 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6432 : GoUInt16), (6443 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6448 : GoUInt16), (6459 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6464 : GoUInt16), (6468 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6469 : GoUInt16), (6479 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Linear_A = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((67072u32 : GoUInt32), (67382u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((67392u32 : GoUInt32), (67413u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((67424u32 : GoUInt32), (67431u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Linear_B = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((65536u32 : GoUInt32), (65547u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((65549u32 : GoUInt32), (65574u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((65576u32 : GoUInt32), (65594u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((65596u32 : GoUInt32), (65597u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((65599u32 : GoUInt32), (65613u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((65616u32 : GoUInt32), (65629u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((65664u32 : GoUInt32), (65786u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Lisu = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((42192 : GoUInt16), (42239 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((73648u32 : GoUInt32), (73648u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Lycian = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((66176u32 : GoUInt32), (66204u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Lydian = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((67872u32 : GoUInt32), (67897u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((67903u32 : GoUInt32), (67903u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Mahajani = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((69968u32 : GoUInt32), (70006u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Makasar = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((73440u32 : GoUInt32), (73464u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Malayalam = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((3328 : GoUInt16), (3340 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((3342 : GoUInt16), (3344 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((3346 : GoUInt16), (3396 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((3398 : GoUInt16), (3400 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((3402 : GoUInt16), (3407 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((3412 : GoUInt16), (3427 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((3430 : GoUInt16), (3455 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Mandaic = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((2112 : GoUInt16), (2139 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((2142 : GoUInt16), (2142 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Manichaean = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((68288u32 : GoUInt32), (68326u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68331u32 : GoUInt32), (68342u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Marchen = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((72816u32 : GoUInt32), (72847u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((72850u32 : GoUInt32), (72871u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((72873u32 : GoUInt32), (72886u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Masaram_Gondi = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((72960u32 : GoUInt32), (72966u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((72968u32 : GoUInt32), (72969u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((72971u32 : GoUInt32), (73014u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((73018u32 : GoUInt32), (73020u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((73021u32 : GoUInt32), (73023u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((73024u32 : GoUInt32), (73031u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((73040u32 : GoUInt32), (73049u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Medefaidrin = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((93760u32 : GoUInt32), (93850u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Meetei_Mayek = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((43744 : GoUInt16), (43766 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((43968 : GoUInt16), (44013 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((44016 : GoUInt16), (44025 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Mende_Kikakui = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((124928u32 : GoUInt32), (125124u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((125127u32 : GoUInt32), (125142u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Meroitic_Cursive = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((68000u32 : GoUInt32), (68023u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68028u32 : GoUInt32), (68047u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68050u32 : GoUInt32), (68095u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Meroitic_Hieroglyphs = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((67968u32 : GoUInt32), (67999u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Miao = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((93952u32 : GoUInt32), (94026u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((94031u32 : GoUInt32), (94087u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((94095u32 : GoUInt32), (94111u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Modi = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((71168u32 : GoUInt32), (71236u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((71248u32 : GoUInt32), (71257u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Mongolian = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((6144 : GoUInt16), (6145 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6148 : GoUInt16), (6150 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6151 : GoUInt16), (6158 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6160 : GoUInt16), (6169 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6176 : GoUInt16), (6264 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6272 : GoUInt16), (6314 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((71264u32 : GoUInt32), (71276u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Mro = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((92736u32 : GoUInt32), (92766u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((92768u32 : GoUInt32), (92777u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((92782u32 : GoUInt32), (92783u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Multani = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((70272u32 : GoUInt32), (70278u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((70280u32 : GoUInt32), (70282u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((70283u32 : GoUInt32), (70285u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((70287u32 : GoUInt32), (70301u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((70303u32 : GoUInt32), (70313u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Myanmar = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((4096 : GoUInt16), (4255 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((43488 : GoUInt16), (43518 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((43616 : GoUInt16), (43647 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Nabataean = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((67712u32 : GoUInt32), (67742u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((67751u32 : GoUInt32), (67759u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Nandinagari = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((72096u32 : GoUInt32), (72103u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((72106u32 : GoUInt32), (72151u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((72154u32 : GoUInt32), (72164u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __New_Tai_Lue = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((6528 : GoUInt16), (6571 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6576 : GoUInt16), (6601 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6608 : GoUInt16), (6618 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6622 : GoUInt16), (6623 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Newa = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((70656u32 : GoUInt32), (70747u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((70749u32 : GoUInt32), (70753u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Nko = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((1984 : GoUInt16), (2042 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((2045 : GoUInt16), (2047 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Nushu = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((94177u32 : GoUInt32), (110960u32 : GoUInt32), (16783u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((110961u32 : GoUInt32), (111355u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Nyiakeng_Puachue_Hmong = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((123136u32 : GoUInt32), (123180u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((123184u32 : GoUInt32), (123197u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((123200u32 : GoUInt32), (123209u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((123214u32 : GoUInt32), (123215u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Ogham = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((5760 : GoUInt16), (5788 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Ol_Chiki = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((7248 : GoUInt16), (7295 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Old_Hungarian = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((68736u32 : GoUInt32), (68786u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68800u32 : GoUInt32), (68850u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68858u32 : GoUInt32), (68863u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Old_Italic = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((66304u32 : GoUInt32), (66339u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((66349u32 : GoUInt32), (66351u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Old_North_Arabian = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((68224u32 : GoUInt32), (68255u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Old_Permic = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((66384u32 : GoUInt32), (66426u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Old_Persian = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((66464u32 : GoUInt32), (66499u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((66504u32 : GoUInt32), (66517u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Old_Sogdian = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((69376u32 : GoUInt32), (69415u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Old_South_Arabian = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((68192u32 : GoUInt32), (68223u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Old_Turkic = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((68608u32 : GoUInt32), (68680u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Oriya = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((2817 : GoUInt16), (2819 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2821 : GoUInt16), (2828 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2831 : GoUInt16), (2832 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2835 : GoUInt16), (2856 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2858 : GoUInt16), (2864 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2866 : GoUInt16), (2867 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2869 : GoUInt16), (2873 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2876 : GoUInt16), (2884 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2887 : GoUInt16), (2888 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2891 : GoUInt16), (2893 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2901 : GoUInt16), (2903 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2908 : GoUInt16), (2909 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2911 : GoUInt16), (2915 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2918 : GoUInt16), (2935 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Osage = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((66736u32 : GoUInt32), (66771u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((66776u32 : GoUInt32), (66811u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Osmanya = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((66688u32 : GoUInt32), (66717u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((66720u32 : GoUInt32), (66729u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Pahawh_Hmong = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((92928u32 : GoUInt32), (92997u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((93008u32 : GoUInt32), (93017u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((93019u32 : GoUInt32), (93025u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((93027u32 : GoUInt32), (93047u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((93053u32 : GoUInt32), (93071u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Palmyrene = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((67680u32 : GoUInt32), (67711u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Pau_Cin_Hau = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((72384u32 : GoUInt32), (72440u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Phags_Pa = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((43072 : GoUInt16), (43127 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Phoenician = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((67840u32 : GoUInt32), (67867u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((67871u32 : GoUInt32), (67871u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Psalter_Pahlavi = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((68480u32 : GoUInt32), (68497u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68505u32 : GoUInt32), (68508u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68521u32 : GoUInt32), (68527u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Rejang = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((43312 : GoUInt16), (43347 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((43359 : GoUInt16), (43359 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Runic = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((5792 : GoUInt16), (5866 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((5870 : GoUInt16), (5880 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Samaritan = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((2048 : GoUInt16), (2093 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((2096 : GoUInt16), (2110 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Saurashtra = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((43136 : GoUInt16), (43205 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((43214 : GoUInt16), (43225 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Sharada = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((70016u32 : GoUInt32), (70111u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Shavian = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((66640u32 : GoUInt32), (66687u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Siddham = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((71040u32 : GoUInt32), (71093u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((71096u32 : GoUInt32), (71133u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __SignWriting = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((120832u32 : GoUInt32), (121483u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((121499u32 : GoUInt32), (121503u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((121505u32 : GoUInt32), (121519u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Sinhala = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((3457 : GoUInt16), (3459 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3461 : GoUInt16), (3478 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3482 : GoUInt16), (3505 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3507 : GoUInt16), (3515 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3517 : GoUInt16), (3520 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3521 : GoUInt16), (3526 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3530 : GoUInt16), (3535 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3536 : GoUInt16), (3540 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3542 : GoUInt16), (3544 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3545 : GoUInt16), (3551 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3558 : GoUInt16), (3567 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3570 : GoUInt16), (3572 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((70113u32 : GoUInt32), (70132u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Sogdian = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((69424u32 : GoUInt32), (69465u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Sora_Sompeng = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((69840u32 : GoUInt32), (69864u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((69872u32 : GoUInt32), (69881u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Soyombo = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((72272u32 : GoUInt32), (72354u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Sundanese = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((7040 : GoUInt16), (7103 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((7360 : GoUInt16), (7367 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Syloti_Nagri = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((43008 : GoUInt16), (43052 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Syriac = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((1792 : GoUInt16), (1805 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((1807 : GoUInt16), (1866 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((1869 : GoUInt16), (1871 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((2144 : GoUInt16), (2154 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Tagalog = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((5888 : GoUInt16), (5900 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((5902 : GoUInt16), (5908 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Tagbanwa = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((5984 : GoUInt16), (5996 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((5998 : GoUInt16), (6000 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6002 : GoUInt16), (6003 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Tai_Le = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((6480 : GoUInt16), (6509 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6512 : GoUInt16), (6516 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Tai_Tham = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((6688 : GoUInt16), (6750 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6752 : GoUInt16), (6780 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6783 : GoUInt16), (6793 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6800 : GoUInt16), (6809 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6816 : GoUInt16), (6829 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Tai_Viet = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((43648 : GoUInt16), (43714 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((43739 : GoUInt16), (43743 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Takri = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((71296u32 : GoUInt32), (71352u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((71360u32 : GoUInt32), (71369u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Tamil = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((2946 : GoUInt16), (2947 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2949 : GoUInt16), (2954 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2958 : GoUInt16), (2960 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2962 : GoUInt16), (2965 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2969 : GoUInt16), (2970 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2972 : GoUInt16), (2974 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2975 : GoUInt16), (2979 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2980 : GoUInt16), (2984 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2985 : GoUInt16), (2986 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2990 : GoUInt16), (3001 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3006 : GoUInt16), (3010 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3014 : GoUInt16), (3016 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3018 : GoUInt16), (3021 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3024 : GoUInt16), (3031 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3046 : GoUInt16), (3066 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((73664u32 : GoUInt32), (73713u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((73727u32 : GoUInt32), (73727u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Tangut = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((94176u32 : GoUInt32), (94208u32 : GoUInt32), (32u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((94209u32 : GoUInt32), (100343u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((100352u32 : GoUInt32), (101119u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((101632u32 : GoUInt32), (101640u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Telugu = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((3072 : GoUInt16), (3084 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3086 : GoUInt16), (3088 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3090 : GoUInt16), (3112 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3114 : GoUInt16), (3129 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3133 : GoUInt16), (3140 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3142 : GoUInt16), (3144 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3146 : GoUInt16), (3149 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3157 : GoUInt16), (3158 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3160 : GoUInt16), (3162 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3168 : GoUInt16), (3171 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3174 : GoUInt16), (3183 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3191 : GoUInt16), (3199 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Thaana = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((1920 : GoUInt16), (1969 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Thai = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((3585 : GoUInt16), (3642 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((3648 : GoUInt16), (3675 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Tibetan = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((3840 : GoUInt16), (3911 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((3913 : GoUInt16), (3948 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((3953 : GoUInt16), (3991 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((3993 : GoUInt16), (4028 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((4030 : GoUInt16), (4044 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((4046 : GoUInt16), (4052 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((4057 : GoUInt16), (4058 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Tifinagh = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((11568 : GoUInt16), (11623 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((11631 : GoUInt16), (11632 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((11647 : GoUInt16), (11647 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Tirhuta = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((70784u32 : GoUInt32), (70855u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((70864u32 : GoUInt32), (70873u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Ugaritic = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((66432u32 : GoUInt32), (66461u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((66463u32 : GoUInt32), (66463u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Vai = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((42240 : GoUInt16), (42539 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Wancho = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((123584u32 : GoUInt32), (123641u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((123647u32 : GoUInt32), (123647u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Warang_Citi = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((71840u32 : GoUInt32), (71922u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((71935u32 : GoUInt32), (71935u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Yezidi = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((69248u32 : GoUInt32), (69289u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((69291u32 : GoUInt32), (69293u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((69296u32 : GoUInt32), (69297u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Yi = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((40960 : GoUInt16), (42124 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((42128 : GoUInt16), (42182 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Zanabazar_Square = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((72192u32 : GoUInt32), (72263u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    // These variables have type *RangeTable.
    
    // Adlam is the set of Unicode characters in script Adlam.
**/
var adlam = __Adlam;
/**
    // These variables have type *RangeTable.
    
    // Ahom is the set of Unicode characters in script Ahom.
**/
var ahom = __Ahom;
/**
    // These variables have type *RangeTable.
    
    // Anatolian_Hieroglyphs is the set of Unicode characters in script Anatolian_Hieroglyphs.
**/
var anatolian_Hieroglyphs = __Anatolian_Hieroglyphs;
/**
    // These variables have type *RangeTable.
    
    // Arabic is the set of Unicode characters in script Arabic.
**/
var arabic = __Arabic;
/**
    // These variables have type *RangeTable.
    
    // Armenian is the set of Unicode characters in script Armenian.
**/
var armenian = __Armenian;
/**
    // These variables have type *RangeTable.
    
    // Avestan is the set of Unicode characters in script Avestan.
**/
var avestan = __Avestan;
/**
    // These variables have type *RangeTable.
    
    // Balinese is the set of Unicode characters in script Balinese.
**/
var balinese = __Balinese;
/**
    // These variables have type *RangeTable.
    
    // Bamum is the set of Unicode characters in script Bamum.
**/
var bamum = __Bamum;
/**
    // These variables have type *RangeTable.
    
    // Bassa_Vah is the set of Unicode characters in script Bassa_Vah.
**/
var bassa_Vah = __Bassa_Vah;
/**
    // These variables have type *RangeTable.
    
    // Batak is the set of Unicode characters in script Batak.
**/
var batak = __Batak;
/**
    // These variables have type *RangeTable.
    
    // Bengali is the set of Unicode characters in script Bengali.
**/
var bengali = __Bengali;
/**
    // These variables have type *RangeTable.
    
    // Bhaiksuki is the set of Unicode characters in script Bhaiksuki.
**/
var bhaiksuki = __Bhaiksuki;
/**
    // These variables have type *RangeTable.
    
    // Bopomofo is the set of Unicode characters in script Bopomofo.
**/
var bopomofo = __Bopomofo;
/**
    // These variables have type *RangeTable.
    
    // Brahmi is the set of Unicode characters in script Brahmi.
**/
var brahmi = __Brahmi;
/**
    // These variables have type *RangeTable.
    
    // Braille is the set of Unicode characters in script Braille.
**/
var braille = __Braille;
/**
    // These variables have type *RangeTable.
    
    // Buginese is the set of Unicode characters in script Buginese.
**/
var buginese = __Buginese;
/**
    // These variables have type *RangeTable.
    
    // Buhid is the set of Unicode characters in script Buhid.
**/
var buhid = __Buhid;
/**
    // These variables have type *RangeTable.
    
    // Canadian_Aboriginal is the set of Unicode characters in script Canadian_Aboriginal.
**/
var canadian_Aboriginal = __Canadian_Aboriginal;
/**
    // These variables have type *RangeTable.
    
    // Carian is the set of Unicode characters in script Carian.
**/
var carian = __Carian;
/**
    // These variables have type *RangeTable.
    
    // Caucasian_Albanian is the set of Unicode characters in script Caucasian_Albanian.
**/
var caucasian_Albanian = __Caucasian_Albanian;
/**
    // These variables have type *RangeTable.
    
    // Chakma is the set of Unicode characters in script Chakma.
**/
var chakma = __Chakma;
/**
    // These variables have type *RangeTable.
    
    // Cham is the set of Unicode characters in script Cham.
**/
var cham = __Cham;
/**
    // These variables have type *RangeTable.
    
    // Cherokee is the set of Unicode characters in script Cherokee.
**/
var cherokee = __Cherokee;
/**
    // These variables have type *RangeTable.
    
    // Chorasmian is the set of Unicode characters in script Chorasmian.
**/
var chorasmian = __Chorasmian;
/**
    // These variables have type *RangeTable.
    
    // Common is the set of Unicode characters in script Common.
**/
var common = __Common;
/**
    // These variables have type *RangeTable.
    
    // Coptic is the set of Unicode characters in script Coptic.
**/
var coptic = __Coptic;
/**
    // These variables have type *RangeTable.
    
    // Cuneiform is the set of Unicode characters in script Cuneiform.
**/
var cuneiform = __Cuneiform;
/**
    // These variables have type *RangeTable.
    
    // Cypriot is the set of Unicode characters in script Cypriot.
**/
var cypriot = __Cypriot;
/**
    // These variables have type *RangeTable.
    
    // Cyrillic is the set of Unicode characters in script Cyrillic.
**/
var cyrillic = __Cyrillic;
/**
    // These variables have type *RangeTable.
    
    // Deseret is the set of Unicode characters in script Deseret.
**/
var deseret = __Deseret;
/**
    // These variables have type *RangeTable.
    
    // Devanagari is the set of Unicode characters in script Devanagari.
**/
var devanagari = __Devanagari;
/**
    // These variables have type *RangeTable.
    
    // Dives_Akuru is the set of Unicode characters in script Dives_Akuru.
**/
var dives_Akuru = __Dives_Akuru;
/**
    // These variables have type *RangeTable.
    
    // Dogra is the set of Unicode characters in script Dogra.
**/
var dogra = __Dogra;
/**
    // These variables have type *RangeTable.
    
    // Duployan is the set of Unicode characters in script Duployan.
**/
var duployan = __Duployan;
/**
    // These variables have type *RangeTable.
    
    // Egyptian_Hieroglyphs is the set of Unicode characters in script Egyptian_Hieroglyphs.
**/
var egyptian_Hieroglyphs = __Egyptian_Hieroglyphs;
/**
    // These variables have type *RangeTable.
    
    // Elbasan is the set of Unicode characters in script Elbasan.
**/
var elbasan = __Elbasan;
/**
    // These variables have type *RangeTable.
    
    // Elymaic is the set of Unicode characters in script Elymaic.
**/
var elymaic = __Elymaic;
/**
    // These variables have type *RangeTable.
    
    // Ethiopic is the set of Unicode characters in script Ethiopic.
**/
var ethiopic = __Ethiopic;
/**
    // These variables have type *RangeTable.
    
    // Georgian is the set of Unicode characters in script Georgian.
**/
var georgian = __Georgian;
/**
    // These variables have type *RangeTable.
    
    // Glagolitic is the set of Unicode characters in script Glagolitic.
**/
var glagolitic = __Glagolitic;
/**
    // These variables have type *RangeTable.
    
    // Gothic is the set of Unicode characters in script Gothic.
**/
var gothic = __Gothic;
/**
    // These variables have type *RangeTable.
    
    // Grantha is the set of Unicode characters in script Grantha.
**/
var grantha = __Grantha;
/**
    // These variables have type *RangeTable.
    
    // Greek is the set of Unicode characters in script Greek.
**/
var greek = __Greek;
/**
    // These variables have type *RangeTable.
    
    // Gujarati is the set of Unicode characters in script Gujarati.
**/
var gujarati = __Gujarati;
/**
    // These variables have type *RangeTable.
    
    // Gunjala_Gondi is the set of Unicode characters in script Gunjala_Gondi.
**/
var gunjala_Gondi = __Gunjala_Gondi;
/**
    // These variables have type *RangeTable.
    
    // Gurmukhi is the set of Unicode characters in script Gurmukhi.
**/
var gurmukhi = __Gurmukhi;
/**
    // These variables have type *RangeTable.
    
    // Han is the set of Unicode characters in script Han.
**/
var han = __Han;
/**
    // These variables have type *RangeTable.
    
    // Hangul is the set of Unicode characters in script Hangul.
**/
var hangul = __Hangul;
/**
    // These variables have type *RangeTable.
    
    // Hanifi_Rohingya is the set of Unicode characters in script Hanifi_Rohingya.
**/
var hanifi_Rohingya = __Hanifi_Rohingya;
/**
    // These variables have type *RangeTable.
    
    // Hanunoo is the set of Unicode characters in script Hanunoo.
**/
var hanunoo = __Hanunoo;
/**
    // These variables have type *RangeTable.
    
    // Hatran is the set of Unicode characters in script Hatran.
**/
var hatran = __Hatran;
/**
    // These variables have type *RangeTable.
    
    // Hebrew is the set of Unicode characters in script Hebrew.
**/
var hebrew = __Hebrew;
/**
    // These variables have type *RangeTable.
    
    // Hiragana is the set of Unicode characters in script Hiragana.
**/
var hiragana = __Hiragana;
/**
    // These variables have type *RangeTable.
    
    // Imperial_Aramaic is the set of Unicode characters in script Imperial_Aramaic.
**/
var imperial_Aramaic = __Imperial_Aramaic;
/**
    // These variables have type *RangeTable.
    
    // Inherited is the set of Unicode characters in script Inherited.
**/
var inherited = __Inherited;
/**
    // These variables have type *RangeTable.
    
    // Inscriptional_Pahlavi is the set of Unicode characters in script Inscriptional_Pahlavi.
**/
var inscriptional_Pahlavi = __Inscriptional_Pahlavi;
/**
    // These variables have type *RangeTable.
    
    // Inscriptional_Parthian is the set of Unicode characters in script Inscriptional_Parthian.
**/
var inscriptional_Parthian = __Inscriptional_Parthian;
/**
    // These variables have type *RangeTable.
    
    // Javanese is the set of Unicode characters in script Javanese.
**/
var javanese = __Javanese;
/**
    // These variables have type *RangeTable.
    
    // Kaithi is the set of Unicode characters in script Kaithi.
**/
var kaithi = __Kaithi;
/**
    // These variables have type *RangeTable.
    
    // Kannada is the set of Unicode characters in script Kannada.
**/
var kannada = __Kannada;
/**
    // These variables have type *RangeTable.
    
    // Katakana is the set of Unicode characters in script Katakana.
**/
var katakana = __Katakana;
/**
    // These variables have type *RangeTable.
    
    // Kayah_Li is the set of Unicode characters in script Kayah_Li.
**/
var kayah_Li = __Kayah_Li;
/**
    // These variables have type *RangeTable.
    
    // Kharoshthi is the set of Unicode characters in script Kharoshthi.
**/
var kharoshthi = __Kharoshthi;
/**
    // These variables have type *RangeTable.
    
    // Khitan_Small_Script is the set of Unicode characters in script Khitan_Small_Script.
**/
var khitan_Small_Script = __Khitan_Small_Script;
/**
    // These variables have type *RangeTable.
    
    // Khmer is the set of Unicode characters in script Khmer.
**/
var khmer = __Khmer;
/**
    // These variables have type *RangeTable.
    
    // Khojki is the set of Unicode characters in script Khojki.
**/
var khojki = __Khojki;
/**
    // These variables have type *RangeTable.
    
    // Khudawadi is the set of Unicode characters in script Khudawadi.
**/
var khudawadi = __Khudawadi;
/**
    // These variables have type *RangeTable.
    
    // Lao is the set of Unicode characters in script Lao.
**/
var lao = __Lao;
/**
    // These variables have type *RangeTable.
    
    // Latin is the set of Unicode characters in script Latin.
**/
var latin = __Latin;
/**
    // These variables have type *RangeTable.
    
    // Lepcha is the set of Unicode characters in script Lepcha.
**/
var lepcha = __Lepcha;
/**
    // These variables have type *RangeTable.
    
    // Limbu is the set of Unicode characters in script Limbu.
**/
var limbu = __Limbu;
/**
    // These variables have type *RangeTable.
    
    // Linear_A is the set of Unicode characters in script Linear_A.
**/
var linear_A = __Linear_A;
/**
    // These variables have type *RangeTable.
    
    // Linear_B is the set of Unicode characters in script Linear_B.
**/
var linear_B = __Linear_B;
/**
    // These variables have type *RangeTable.
    
    // Lisu is the set of Unicode characters in script Lisu.
**/
var lisu = __Lisu;
/**
    // These variables have type *RangeTable.
    
    // Lycian is the set of Unicode characters in script Lycian.
**/
var lycian = __Lycian;
/**
    // These variables have type *RangeTable.
    
    // Lydian is the set of Unicode characters in script Lydian.
**/
var lydian = __Lydian;
/**
    // These variables have type *RangeTable.
    
    // Mahajani is the set of Unicode characters in script Mahajani.
**/
var mahajani = __Mahajani;
/**
    // These variables have type *RangeTable.
    
    // Makasar is the set of Unicode characters in script Makasar.
**/
var makasar = __Makasar;
/**
    // These variables have type *RangeTable.
    
    // Malayalam is the set of Unicode characters in script Malayalam.
**/
var malayalam = __Malayalam;
/**
    // These variables have type *RangeTable.
    
    // Mandaic is the set of Unicode characters in script Mandaic.
**/
var mandaic = __Mandaic;
/**
    // These variables have type *RangeTable.
    
    // Manichaean is the set of Unicode characters in script Manichaean.
**/
var manichaean = __Manichaean;
/**
    // These variables have type *RangeTable.
    
    // Marchen is the set of Unicode characters in script Marchen.
**/
var marchen = __Marchen;
/**
    // These variables have type *RangeTable.
    
    // Masaram_Gondi is the set of Unicode characters in script Masaram_Gondi.
**/
var masaram_Gondi = __Masaram_Gondi;
/**
    // These variables have type *RangeTable.
    
    // Medefaidrin is the set of Unicode characters in script Medefaidrin.
**/
var medefaidrin = __Medefaidrin;
/**
    // These variables have type *RangeTable.
    
    // Meetei_Mayek is the set of Unicode characters in script Meetei_Mayek.
**/
var meetei_Mayek = __Meetei_Mayek;
/**
    // These variables have type *RangeTable.
    
    // Mende_Kikakui is the set of Unicode characters in script Mende_Kikakui.
**/
var mende_Kikakui = __Mende_Kikakui;
/**
    // These variables have type *RangeTable.
    
    // Meroitic_Cursive is the set of Unicode characters in script Meroitic_Cursive.
**/
var meroitic_Cursive = __Meroitic_Cursive;
/**
    // These variables have type *RangeTable.
    
    // Meroitic_Hieroglyphs is the set of Unicode characters in script Meroitic_Hieroglyphs.
**/
var meroitic_Hieroglyphs = __Meroitic_Hieroglyphs;
/**
    // These variables have type *RangeTable.
    
    // Miao is the set of Unicode characters in script Miao.
**/
var miao = __Miao;
/**
    // These variables have type *RangeTable.
    
    // Modi is the set of Unicode characters in script Modi.
**/
var modi = __Modi;
/**
    // These variables have type *RangeTable.
    
    // Mongolian is the set of Unicode characters in script Mongolian.
**/
var mongolian = __Mongolian;
/**
    // These variables have type *RangeTable.
    
    // Mro is the set of Unicode characters in script Mro.
**/
var mro = __Mro;
/**
    // These variables have type *RangeTable.
    
    // Multani is the set of Unicode characters in script Multani.
**/
var multani = __Multani;
/**
    // These variables have type *RangeTable.
    
    // Myanmar is the set of Unicode characters in script Myanmar.
**/
var myanmar = __Myanmar;
/**
    // These variables have type *RangeTable.
    
    // Nabataean is the set of Unicode characters in script Nabataean.
**/
var nabataean = __Nabataean;
/**
    // These variables have type *RangeTable.
    
    // Nandinagari is the set of Unicode characters in script Nandinagari.
**/
var nandinagari = __Nandinagari;
/**
    // These variables have type *RangeTable.
    
    // New_Tai_Lue is the set of Unicode characters in script New_Tai_Lue.
**/
var new_Tai_Lue = __New_Tai_Lue;
/**
    // These variables have type *RangeTable.
    
    // Newa is the set of Unicode characters in script Newa.
**/
var newa = __Newa;
/**
    // These variables have type *RangeTable.
    
    // Nko is the set of Unicode characters in script Nko.
**/
var nko = __Nko;
/**
    // These variables have type *RangeTable.
    
    // Nushu is the set of Unicode characters in script Nushu.
**/
var nushu = __Nushu;
/**
    // These variables have type *RangeTable.
    
    // Nyiakeng_Puachue_Hmong is the set of Unicode characters in script Nyiakeng_Puachue_Hmong.
**/
var nyiakeng_Puachue_Hmong = __Nyiakeng_Puachue_Hmong;
/**
    // These variables have type *RangeTable.
    
    // Ogham is the set of Unicode characters in script Ogham.
**/
var ogham = __Ogham;
/**
    // These variables have type *RangeTable.
    
    // Ol_Chiki is the set of Unicode characters in script Ol_Chiki.
**/
var ol_Chiki = __Ol_Chiki;
/**
    // These variables have type *RangeTable.
    
    // Old_Hungarian is the set of Unicode characters in script Old_Hungarian.
**/
var old_Hungarian = __Old_Hungarian;
/**
    // These variables have type *RangeTable.
    
    // Old_Italic is the set of Unicode characters in script Old_Italic.
**/
var old_Italic = __Old_Italic;
/**
    // These variables have type *RangeTable.
    
    // Old_North_Arabian is the set of Unicode characters in script Old_North_Arabian.
**/
var old_North_Arabian = __Old_North_Arabian;
/**
    // These variables have type *RangeTable.
    
    // Old_Permic is the set of Unicode characters in script Old_Permic.
**/
var old_Permic = __Old_Permic;
/**
    // These variables have type *RangeTable.
    
    // Old_Persian is the set of Unicode characters in script Old_Persian.
**/
var old_Persian = __Old_Persian;
/**
    // These variables have type *RangeTable.
    
    // Old_Sogdian is the set of Unicode characters in script Old_Sogdian.
**/
var old_Sogdian = __Old_Sogdian;
/**
    // These variables have type *RangeTable.
    
    // Old_South_Arabian is the set of Unicode characters in script Old_South_Arabian.
**/
var old_South_Arabian = __Old_South_Arabian;
/**
    // These variables have type *RangeTable.
    
    // Old_Turkic is the set of Unicode characters in script Old_Turkic.
**/
var old_Turkic = __Old_Turkic;
/**
    // These variables have type *RangeTable.
    
    // Oriya is the set of Unicode characters in script Oriya.
**/
var oriya = __Oriya;
/**
    // These variables have type *RangeTable.
    
    // Osage is the set of Unicode characters in script Osage.
**/
var osage = __Osage;
/**
    // These variables have type *RangeTable.
    
    // Osmanya is the set of Unicode characters in script Osmanya.
**/
var osmanya = __Osmanya;
/**
    // These variables have type *RangeTable.
    
    // Pahawh_Hmong is the set of Unicode characters in script Pahawh_Hmong.
**/
var pahawh_Hmong = __Pahawh_Hmong;
/**
    // These variables have type *RangeTable.
    
    // Palmyrene is the set of Unicode characters in script Palmyrene.
**/
var palmyrene = __Palmyrene;
/**
    // These variables have type *RangeTable.
    
    // Pau_Cin_Hau is the set of Unicode characters in script Pau_Cin_Hau.
**/
var pau_Cin_Hau = __Pau_Cin_Hau;
/**
    // These variables have type *RangeTable.
    
    // Phags_Pa is the set of Unicode characters in script Phags_Pa.
**/
var phags_Pa = __Phags_Pa;
/**
    // These variables have type *RangeTable.
    
    // Phoenician is the set of Unicode characters in script Phoenician.
**/
var phoenician = __Phoenician;
/**
    // These variables have type *RangeTable.
    
    // Psalter_Pahlavi is the set of Unicode characters in script Psalter_Pahlavi.
**/
var psalter_Pahlavi = __Psalter_Pahlavi;
/**
    // These variables have type *RangeTable.
    
    // Rejang is the set of Unicode characters in script Rejang.
**/
var rejang = __Rejang;
/**
    // These variables have type *RangeTable.
    
    // Runic is the set of Unicode characters in script Runic.
**/
var runic = __Runic;
/**
    // These variables have type *RangeTable.
    
    // Samaritan is the set of Unicode characters in script Samaritan.
**/
var samaritan = __Samaritan;
/**
    // These variables have type *RangeTable.
    
    // Saurashtra is the set of Unicode characters in script Saurashtra.
**/
var saurashtra = __Saurashtra;
/**
    // These variables have type *RangeTable.
    
    // Sharada is the set of Unicode characters in script Sharada.
**/
var sharada = __Sharada;
/**
    // These variables have type *RangeTable.
    
    // Shavian is the set of Unicode characters in script Shavian.
**/
var shavian = __Shavian;
/**
    // These variables have type *RangeTable.
    
    // Siddham is the set of Unicode characters in script Siddham.
**/
var siddham = __Siddham;
/**
    // These variables have type *RangeTable.
    
    // SignWriting is the set of Unicode characters in script SignWriting.
**/
var signWriting = __SignWriting;
/**
    // These variables have type *RangeTable.
    
    // Sinhala is the set of Unicode characters in script Sinhala.
**/
var sinhala = __Sinhala;
/**
    // These variables have type *RangeTable.
    
    // Sogdian is the set of Unicode characters in script Sogdian.
**/
var sogdian = __Sogdian;
/**
    // These variables have type *RangeTable.
    
    // Sora_Sompeng is the set of Unicode characters in script Sora_Sompeng.
**/
var sora_Sompeng = __Sora_Sompeng;
/**
    // These variables have type *RangeTable.
    
    // Soyombo is the set of Unicode characters in script Soyombo.
**/
var soyombo = __Soyombo;
/**
    // These variables have type *RangeTable.
    
    // Sundanese is the set of Unicode characters in script Sundanese.
**/
var sundanese = __Sundanese;
/**
    // These variables have type *RangeTable.
    
    // Syloti_Nagri is the set of Unicode characters in script Syloti_Nagri.
**/
var syloti_Nagri = __Syloti_Nagri;
/**
    // These variables have type *RangeTable.
    
    // Syriac is the set of Unicode characters in script Syriac.
**/
var syriac = __Syriac;
/**
    // These variables have type *RangeTable.
    
    // Tagalog is the set of Unicode characters in script Tagalog.
**/
var tagalog = __Tagalog;
/**
    // These variables have type *RangeTable.
    
    // Tagbanwa is the set of Unicode characters in script Tagbanwa.
**/
var tagbanwa = __Tagbanwa;
/**
    // These variables have type *RangeTable.
    
    // Tai_Le is the set of Unicode characters in script Tai_Le.
**/
var tai_Le = __Tai_Le;
/**
    // These variables have type *RangeTable.
    
    // Tai_Tham is the set of Unicode characters in script Tai_Tham.
**/
var tai_Tham = __Tai_Tham;
/**
    // These variables have type *RangeTable.
    
    // Tai_Viet is the set of Unicode characters in script Tai_Viet.
**/
var tai_Viet = __Tai_Viet;
/**
    // These variables have type *RangeTable.
    
    // Takri is the set of Unicode characters in script Takri.
**/
var takri = __Takri;
/**
    // These variables have type *RangeTable.
    
    // Tamil is the set of Unicode characters in script Tamil.
**/
var tamil = __Tamil;
/**
    // These variables have type *RangeTable.
    
    // Tangut is the set of Unicode characters in script Tangut.
**/
var tangut = __Tangut;
/**
    // These variables have type *RangeTable.
    
    // Telugu is the set of Unicode characters in script Telugu.
**/
var telugu = __Telugu;
/**
    // These variables have type *RangeTable.
    
    // Thaana is the set of Unicode characters in script Thaana.
**/
var thaana = __Thaana;
/**
    // These variables have type *RangeTable.
    
    // Thai is the set of Unicode characters in script Thai.
**/
var thai = __Thai;
/**
    // These variables have type *RangeTable.
    
    // Tibetan is the set of Unicode characters in script Tibetan.
**/
var tibetan = __Tibetan;
/**
    // These variables have type *RangeTable.
    
    // Tifinagh is the set of Unicode characters in script Tifinagh.
**/
var tifinagh = __Tifinagh;
/**
    // These variables have type *RangeTable.
    
    // Tirhuta is the set of Unicode characters in script Tirhuta.
**/
var tirhuta = __Tirhuta;
/**
    // These variables have type *RangeTable.
    
    // Ugaritic is the set of Unicode characters in script Ugaritic.
**/
var ugaritic = __Ugaritic;
/**
    // These variables have type *RangeTable.
    
    // Vai is the set of Unicode characters in script Vai.
**/
var vai = __Vai;
/**
    // These variables have type *RangeTable.
    
    // Wancho is the set of Unicode characters in script Wancho.
**/
var wancho = __Wancho;
/**
    // These variables have type *RangeTable.
    
    // Warang_Citi is the set of Unicode characters in script Warang_Citi.
**/
var warang_Citi = __Warang_Citi;
/**
    // These variables have type *RangeTable.
    
    // Yezidi is the set of Unicode characters in script Yezidi.
**/
var yezidi = __Yezidi;
/**
    // These variables have type *RangeTable.
    
    // Yi is the set of Unicode characters in script Yi.
**/
var yi = __Yi;
/**
    // These variables have type *RangeTable.
    
    // Zanabazar_Square is the set of Unicode characters in script Zanabazar_Square.
**/
var zanabazar_Square = __Zanabazar_Square;
/**
    // Scripts is the set of Unicode script tables.
    
    
**/
var scripts = ({
    final x = new stdgo.GoMap.GoObjectMap<GoString, Ref<stdgo.unicode.Unicode.RangeTable>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.unicode.Unicode.RangeTable", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "r16", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.unicode.Unicode.Range16", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "hi", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "stride", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "r32", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.unicode.Unicode.Range32", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "hi", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "stride", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "latinOffset", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) }) })));
    @:privateAccess x._keys = [
("Adlam" : GoString),
("Ahom" : GoString),
("Anatolian_Hieroglyphs" : GoString),
("Arabic" : GoString),
("Armenian" : GoString),
("Avestan" : GoString),
("Balinese" : GoString),
("Bamum" : GoString),
("Bassa_Vah" : GoString),
("Batak" : GoString),
("Bengali" : GoString),
("Bhaiksuki" : GoString),
("Bopomofo" : GoString),
("Brahmi" : GoString),
("Braille" : GoString),
("Buginese" : GoString),
("Buhid" : GoString),
("Canadian_Aboriginal" : GoString),
("Carian" : GoString),
("Caucasian_Albanian" : GoString),
("Chakma" : GoString),
("Cham" : GoString),
("Cherokee" : GoString),
("Chorasmian" : GoString),
("Common" : GoString),
("Coptic" : GoString),
("Cuneiform" : GoString),
("Cypriot" : GoString),
("Cyrillic" : GoString),
("Deseret" : GoString),
("Devanagari" : GoString),
("Dives_Akuru" : GoString),
("Dogra" : GoString),
("Duployan" : GoString),
("Egyptian_Hieroglyphs" : GoString),
("Elbasan" : GoString),
("Elymaic" : GoString),
("Ethiopic" : GoString),
("Georgian" : GoString),
("Glagolitic" : GoString),
("Gothic" : GoString),
("Grantha" : GoString),
("Greek" : GoString),
("Gujarati" : GoString),
("Gunjala_Gondi" : GoString),
("Gurmukhi" : GoString),
("Han" : GoString),
("Hangul" : GoString),
("Hanifi_Rohingya" : GoString),
("Hanunoo" : GoString),
("Hatran" : GoString),
("Hebrew" : GoString),
("Hiragana" : GoString),
("Imperial_Aramaic" : GoString),
("Inherited" : GoString),
("Inscriptional_Pahlavi" : GoString),
("Inscriptional_Parthian" : GoString),
("Javanese" : GoString),
("Kaithi" : GoString),
("Kannada" : GoString),
("Katakana" : GoString),
("Kayah_Li" : GoString),
("Kharoshthi" : GoString),
("Khitan_Small_Script" : GoString),
("Khmer" : GoString),
("Khojki" : GoString),
("Khudawadi" : GoString),
("Lao" : GoString),
("Latin" : GoString),
("Lepcha" : GoString),
("Limbu" : GoString),
("Linear_A" : GoString),
("Linear_B" : GoString),
("Lisu" : GoString),
("Lycian" : GoString),
("Lydian" : GoString),
("Mahajani" : GoString),
("Makasar" : GoString),
("Malayalam" : GoString),
("Mandaic" : GoString),
("Manichaean" : GoString),
("Marchen" : GoString),
("Masaram_Gondi" : GoString),
("Medefaidrin" : GoString),
("Meetei_Mayek" : GoString),
("Mende_Kikakui" : GoString),
("Meroitic_Cursive" : GoString),
("Meroitic_Hieroglyphs" : GoString),
("Miao" : GoString),
("Modi" : GoString),
("Mongolian" : GoString),
("Mro" : GoString),
("Multani" : GoString),
("Myanmar" : GoString),
("Nabataean" : GoString),
("Nandinagari" : GoString),
("New_Tai_Lue" : GoString),
("Newa" : GoString),
("Nko" : GoString),
("Nushu" : GoString),
("Nyiakeng_Puachue_Hmong" : GoString),
("Ogham" : GoString),
("Ol_Chiki" : GoString),
("Old_Hungarian" : GoString),
("Old_Italic" : GoString),
("Old_North_Arabian" : GoString),
("Old_Permic" : GoString),
("Old_Persian" : GoString),
("Old_Sogdian" : GoString),
("Old_South_Arabian" : GoString),
("Old_Turkic" : GoString),
("Oriya" : GoString),
("Osage" : GoString),
("Osmanya" : GoString),
("Pahawh_Hmong" : GoString),
("Palmyrene" : GoString),
("Pau_Cin_Hau" : GoString),
("Phags_Pa" : GoString),
("Phoenician" : GoString),
("Psalter_Pahlavi" : GoString),
("Rejang" : GoString),
("Runic" : GoString),
("Samaritan" : GoString),
("Saurashtra" : GoString),
("Sharada" : GoString),
("Shavian" : GoString),
("Siddham" : GoString),
("SignWriting" : GoString),
("Sinhala" : GoString),
("Sogdian" : GoString),
("Sora_Sompeng" : GoString),
("Soyombo" : GoString),
("Sundanese" : GoString),
("Syloti_Nagri" : GoString),
("Syriac" : GoString),
("Tagalog" : GoString),
("Tagbanwa" : GoString),
("Tai_Le" : GoString),
("Tai_Tham" : GoString),
("Tai_Viet" : GoString),
("Takri" : GoString),
("Tamil" : GoString),
("Tangut" : GoString),
("Telugu" : GoString),
("Thaana" : GoString),
("Thai" : GoString),
("Tibetan" : GoString),
("Tifinagh" : GoString),
("Tirhuta" : GoString),
("Ugaritic" : GoString),
("Vai" : GoString),
("Wancho" : GoString),
("Warang_Citi" : GoString),
("Yezidi" : GoString),
("Yi" : GoString),
("Zanabazar_Square" : GoString)];
    @:privateAccess x._values = [
adlam,
ahom,
anatolian_Hieroglyphs,
arabic,
armenian,
avestan,
balinese,
bamum,
bassa_Vah,
batak,
bengali,
bhaiksuki,
bopomofo,
brahmi,
braille,
buginese,
buhid,
canadian_Aboriginal,
carian,
caucasian_Albanian,
chakma,
cham,
cherokee,
chorasmian,
common,
coptic,
cuneiform,
cypriot,
cyrillic,
deseret,
devanagari,
dives_Akuru,
dogra,
duployan,
egyptian_Hieroglyphs,
elbasan,
elymaic,
ethiopic,
georgian,
glagolitic,
gothic,
grantha,
greek,
gujarati,
gunjala_Gondi,
gurmukhi,
han,
hangul,
hanifi_Rohingya,
hanunoo,
hatran,
hebrew,
hiragana,
imperial_Aramaic,
inherited,
inscriptional_Pahlavi,
inscriptional_Parthian,
javanese,
kaithi,
kannada,
katakana,
kayah_Li,
kharoshthi,
khitan_Small_Script,
khmer,
khojki,
khudawadi,
lao,
latin,
lepcha,
limbu,
linear_A,
linear_B,
lisu,
lycian,
lydian,
mahajani,
makasar,
malayalam,
mandaic,
manichaean,
marchen,
masaram_Gondi,
medefaidrin,
meetei_Mayek,
mende_Kikakui,
meroitic_Cursive,
meroitic_Hieroglyphs,
miao,
modi,
mongolian,
mro,
multani,
myanmar,
nabataean,
nandinagari,
new_Tai_Lue,
newa,
nko,
nushu,
nyiakeng_Puachue_Hmong,
ogham,
ol_Chiki,
old_Hungarian,
old_Italic,
old_North_Arabian,
old_Permic,
old_Persian,
old_Sogdian,
old_South_Arabian,
old_Turkic,
oriya,
osage,
osmanya,
pahawh_Hmong,
palmyrene,
pau_Cin_Hau,
phags_Pa,
phoenician,
psalter_Pahlavi,
rejang,
runic,
samaritan,
saurashtra,
sharada,
shavian,
siddham,
signWriting,
sinhala,
sogdian,
sora_Sompeng,
soyombo,
sundanese,
syloti_Nagri,
syriac,
tagalog,
tagbanwa,
tai_Le,
tai_Tham,
tai_Viet,
takri,
tamil,
tangut,
telugu,
thaana,
thai,
tibetan,
tifinagh,
tirhuta,
ugaritic,
vai,
wancho,
warang_Citi,
yezidi,
yi,
zanabazar_Square];
    x;
} : stdgo.GoMap<GoString, Ref<stdgo.unicode.Unicode.RangeTable>>);
/**
    
    
    
**/
private var __ASCII_Hex_Digit = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((48 : GoUInt16), (57 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((65 : GoUInt16), (70 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((97 : GoUInt16), (102 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), latinOffset : (3 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Bidi_Control = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((1564 : GoUInt16), (8206 : GoUInt16), (6642 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8207 : GoUInt16), (8234 : GoUInt16), (27 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8235 : GoUInt16), (8238 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8294 : GoUInt16), (8297 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Dash = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((45 : GoUInt16), (1418 : GoUInt16), (1373 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1470 : GoUInt16), (5120 : GoUInt16), (3650 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6150 : GoUInt16), (8208 : GoUInt16), (2058 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8209 : GoUInt16), (8213 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8275 : GoUInt16), (8315 : GoUInt16), (40 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8331 : GoUInt16), (8722 : GoUInt16), (391 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11799 : GoUInt16), (11802 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11834 : GoUInt16), (11835 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11840 : GoUInt16), (12316 : GoUInt16), (476 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12336 : GoUInt16), (12448 : GoUInt16), (112 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65073 : GoUInt16), (65074 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65112 : GoUInt16), (65123 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65293 : GoUInt16), (65293 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((69293u32 : GoUInt32), (69293u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Deprecated = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((329 : GoUInt16), (1651 : GoUInt16), (1322 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((3959 : GoUInt16), (3961 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6051 : GoUInt16), (6052 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8298 : GoUInt16), (8303 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((9001 : GoUInt16), (9002 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((917505u32 : GoUInt32), (917505u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Diacritic = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((94 : GoUInt16), (96 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((168 : GoUInt16), (175 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((180 : GoUInt16), (183 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((184 : GoUInt16), (688 : GoUInt16), (504 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((689 : GoUInt16), (846 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((848 : GoUInt16), (855 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((861 : GoUInt16), (866 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((884 : GoUInt16), (885 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((890 : GoUInt16), (900 : GoUInt16), (10 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((901 : GoUInt16), (1155 : GoUInt16), (254 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1156 : GoUInt16), (1159 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1369 : GoUInt16), (1425 : GoUInt16), (56 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1426 : GoUInt16), (1441 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1443 : GoUInt16), (1469 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1471 : GoUInt16), (1473 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1474 : GoUInt16), (1476 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1611 : GoUInt16), (1618 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1623 : GoUInt16), (1624 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1759 : GoUInt16), (1760 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1765 : GoUInt16), (1766 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1770 : GoUInt16), (1772 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1840 : GoUInt16), (1866 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1958 : GoUInt16), (1968 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2027 : GoUInt16), (2037 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2072 : GoUInt16), (2073 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2275 : GoUInt16), (2302 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2364 : GoUInt16), (2381 : GoUInt16), (17 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2385 : GoUInt16), (2388 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2417 : GoUInt16), (2492 : GoUInt16), (75 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2509 : GoUInt16), (2620 : GoUInt16), (111 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2637 : GoUInt16), (2748 : GoUInt16), (111 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2765 : GoUInt16), (2813 : GoUInt16), (48 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2814 : GoUInt16), (2815 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2876 : GoUInt16), (2893 : GoUInt16), (17 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2901 : GoUInt16), (3021 : GoUInt16), (120 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3149 : GoUInt16), (3260 : GoUInt16), (111 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3277 : GoUInt16), (3387 : GoUInt16), (110 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3388 : GoUInt16), (3405 : GoUInt16), (17 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3530 : GoUInt16), (3655 : GoUInt16), (125 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3656 : GoUInt16), (3660 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3662 : GoUInt16), (3770 : GoUInt16), (108 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3784 : GoUInt16), (3788 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3864 : GoUInt16), (3865 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3893 : GoUInt16), (3897 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3902 : GoUInt16), (3903 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3970 : GoUInt16), (3972 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3974 : GoUInt16), (3975 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4038 : GoUInt16), (4151 : GoUInt16), (113 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4153 : GoUInt16), (4154 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4195 : GoUInt16), (4196 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4201 : GoUInt16), (4205 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4231 : GoUInt16), (4237 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4239 : GoUInt16), (4250 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4251 : GoUInt16), (4957 : GoUInt16), (706 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4958 : GoUInt16), (4959 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6089 : GoUInt16), (6099 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6109 : GoUInt16), (6457 : GoUInt16), (348 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6458 : GoUInt16), (6459 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6773 : GoUInt16), (6780 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6783 : GoUInt16), (6832 : GoUInt16), (49 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6833 : GoUInt16), (6845 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6964 : GoUInt16), (6980 : GoUInt16), (16 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7019 : GoUInt16), (7027 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7082 : GoUInt16), (7083 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7222 : GoUInt16), (7223 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7288 : GoUInt16), (7293 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7376 : GoUInt16), (7400 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7405 : GoUInt16), (7412 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7415 : GoUInt16), (7417 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7468 : GoUInt16), (7530 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7620 : GoUInt16), (7631 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7669 : GoUInt16), (7673 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7677 : GoUInt16), (7679 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8125 : GoUInt16), (8127 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8128 : GoUInt16), (8129 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8141 : GoUInt16), (8143 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8157 : GoUInt16), (8159 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8173 : GoUInt16), (8175 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8189 : GoUInt16), (8190 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11503 : GoUInt16), (11505 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11823 : GoUInt16), (12330 : GoUInt16), (507 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12331 : GoUInt16), (12335 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12441 : GoUInt16), (12444 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12540 : GoUInt16), (42607 : GoUInt16), (30067 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42620 : GoUInt16), (42621 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42623 : GoUInt16), (42652 : GoUInt16), (29 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42653 : GoUInt16), (42736 : GoUInt16), (83 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42737 : GoUInt16), (42752 : GoUInt16), (15 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42753 : GoUInt16), (42785 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42888 : GoUInt16), (42890 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43000 : GoUInt16), (43001 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43204 : GoUInt16), (43232 : GoUInt16), (28 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43233 : GoUInt16), (43249 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43307 : GoUInt16), (43310 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43347 : GoUInt16), (43443 : GoUInt16), (96 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43456 : GoUInt16), (43493 : GoUInt16), (37 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43643 : GoUInt16), (43645 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43711 : GoUInt16), (43714 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43766 : GoUInt16), (43867 : GoUInt16), (101 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43868 : GoUInt16), (43871 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43881 : GoUInt16), (43883 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44012 : GoUInt16), (44013 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64286 : GoUInt16), (65056 : GoUInt16), (770 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65057 : GoUInt16), (65071 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65342 : GoUInt16), (65344 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65392 : GoUInt16), (65438 : GoUInt16), (46 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65439 : GoUInt16), (65507 : GoUInt16), (68 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((66272u32 : GoUInt32), (68325u32 : GoUInt32), (2053u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68326u32 : GoUInt32), (68898u32 : GoUInt32), (572u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68899u32 : GoUInt32), (68903u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69446u32 : GoUInt32), (69456u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69817u32 : GoUInt32), (69818u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69939u32 : GoUInt32), (69940u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70003u32 : GoUInt32), (70080u32 : GoUInt32), (77u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70090u32 : GoUInt32), (70092u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70197u32 : GoUInt32), (70198u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70377u32 : GoUInt32), (70378u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70460u32 : GoUInt32), (70477u32 : GoUInt32), (17u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70502u32 : GoUInt32), (70508u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70512u32 : GoUInt32), (70516u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70722u32 : GoUInt32), (70726u32 : GoUInt32), (4u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70850u32 : GoUInt32), (70851u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71103u32 : GoUInt32), (71104u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71231u32 : GoUInt32), (71350u32 : GoUInt32), (119u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71351u32 : GoUInt32), (71467u32 : GoUInt32), (116u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71737u32 : GoUInt32), (71738u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71997u32 : GoUInt32), (71998u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72003u32 : GoUInt32), (72160u32 : GoUInt32), (157u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72244u32 : GoUInt32), (72263u32 : GoUInt32), (19u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72345u32 : GoUInt32), (72767u32 : GoUInt32), (422u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73026u32 : GoUInt32), (73028u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73029u32 : GoUInt32), (73111u32 : GoUInt32), (82u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92912u32 : GoUInt32), (92916u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92976u32 : GoUInt32), (92982u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94095u32 : GoUInt32), (94111u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94192u32 : GoUInt32), (94193u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119143u32 : GoUInt32), (119145u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119149u32 : GoUInt32), (119154u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119163u32 : GoUInt32), (119170u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119173u32 : GoUInt32), (119179u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119210u32 : GoUInt32), (119213u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123184u32 : GoUInt32), (123190u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((123628u32 : GoUInt32), (123631u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125136u32 : GoUInt32), (125142u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125252u32 : GoUInt32), (125254u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125256u32 : GoUInt32), (125258u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (3 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Extender = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((183 : GoUInt16), (720 : GoUInt16), (537 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((721 : GoUInt16), (1600 : GoUInt16), (879 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2042 : GoUInt16), (2901 : GoUInt16), (859 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3654 : GoUInt16), (3782 : GoUInt16), (128 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6154 : GoUInt16), (6211 : GoUInt16), (57 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6823 : GoUInt16), (7222 : GoUInt16), (399 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7291 : GoUInt16), (12293 : GoUInt16), (5002 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12337 : GoUInt16), (12341 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12445 : GoUInt16), (12446 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12540 : GoUInt16), (12542 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((40981 : GoUInt16), (42508 : GoUInt16), (1527 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43471 : GoUInt16), (43494 : GoUInt16), (23 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43632 : GoUInt16), (43741 : GoUInt16), (109 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43763 : GoUInt16), (43764 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65392 : GoUInt16), (65392 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((70493u32 : GoUInt32), (71110u32 : GoUInt32), (617u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((71111u32 : GoUInt32), (71112u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((72344u32 : GoUInt32), (92994u32 : GoUInt32), (20650u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((92995u32 : GoUInt32), (94176u32 : GoUInt32), (1181u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((94177u32 : GoUInt32), (94179u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((123196u32 : GoUInt32), (123197u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((125252u32 : GoUInt32), (125254u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Hex_Digit = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((48 : GoUInt16), (57 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((65 : GoUInt16), (70 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((97 : GoUInt16), (102 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((65296 : GoUInt16), (65305 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((65313 : GoUInt16), (65318 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((65345 : GoUInt16), (65350 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), latinOffset : (3 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Hyphen = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((45 : GoUInt16), (173 : GoUInt16), (128 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((1418 : GoUInt16), (6150 : GoUInt16), (4732 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8208 : GoUInt16), (8209 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((11799 : GoUInt16), (12539 : GoUInt16), (740 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((65123 : GoUInt16), (65293 : GoUInt16), (170 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((65381 : GoUInt16), (65381 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), latinOffset : (1 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __IDS_Binary_Operator = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((12272 : GoUInt16), (12273 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((12276 : GoUInt16), (12283 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __IDS_Trinary_Operator = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((12274 : GoUInt16), (12275 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Ideographic = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((12294 : GoUInt16), (12295 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((12321 : GoUInt16), (12329 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((12344 : GoUInt16), (12346 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((13312 : GoUInt16), (19903 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((19968 : GoUInt16), (40956 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((63744 : GoUInt16), (64109 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((64112 : GoUInt16), (64217 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((94180u32 : GoUInt32), (94208u32 : GoUInt32), (28u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94209u32 : GoUInt32), (100343u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((100352u32 : GoUInt32), (101589u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((101632u32 : GoUInt32), (101640u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((110960u32 : GoUInt32), (111355u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((131072u32 : GoUInt32), (173789u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((173824u32 : GoUInt32), (177972u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((177984u32 : GoUInt32), (178205u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((178208u32 : GoUInt32), (183969u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((183984u32 : GoUInt32), (191456u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((194560u32 : GoUInt32), (195101u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((196608u32 : GoUInt32), (201546u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Join_Control = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((8204 : GoUInt16), (8205 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Logical_Order_Exception = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((3648 : GoUInt16), (3652 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((3776 : GoUInt16), (3780 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6581 : GoUInt16), (6583 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6586 : GoUInt16), (43701 : GoUInt16), (37115 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((43702 : GoUInt16), (43705 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((43707 : GoUInt16), (43708 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Noncharacter_Code_Point = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((64976 : GoUInt16), (65007 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((65534 : GoUInt16), (65535 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((131070u32 : GoUInt32), (131071u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((196606u32 : GoUInt32), (196607u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((262142u32 : GoUInt32), (262143u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((327678u32 : GoUInt32), (327679u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((393214u32 : GoUInt32), (393215u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((458750u32 : GoUInt32), (458751u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((524286u32 : GoUInt32), (524287u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((589822u32 : GoUInt32), (589823u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((655358u32 : GoUInt32), (655359u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((720894u32 : GoUInt32), (720895u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((786430u32 : GoUInt32), (786431u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((851966u32 : GoUInt32), (851967u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((917502u32 : GoUInt32), (917503u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((983038u32 : GoUInt32), (983039u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((1048574u32 : GoUInt32), (1048575u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((1114110u32 : GoUInt32), (1114111u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Other_Alphabetic = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((837 : GoUInt16), (1456 : GoUInt16), (619 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1457 : GoUInt16), (1469 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1471 : GoUInt16), (1473 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1474 : GoUInt16), (1476 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1477 : GoUInt16), (1479 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1552 : GoUInt16), (1562 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1611 : GoUInt16), (1623 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1625 : GoUInt16), (1631 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1648 : GoUInt16), (1750 : GoUInt16), (102 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1751 : GoUInt16), (1756 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1761 : GoUInt16), (1764 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1767 : GoUInt16), (1768 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1773 : GoUInt16), (1809 : GoUInt16), (36 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1840 : GoUInt16), (1855 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1958 : GoUInt16), (1968 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2070 : GoUInt16), (2071 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2075 : GoUInt16), (2083 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2085 : GoUInt16), (2087 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2089 : GoUInt16), (2092 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2260 : GoUInt16), (2271 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2275 : GoUInt16), (2281 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2288 : GoUInt16), (2307 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2362 : GoUInt16), (2363 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2366 : GoUInt16), (2380 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2382 : GoUInt16), (2383 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2389 : GoUInt16), (2391 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2402 : GoUInt16), (2403 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2433 : GoUInt16), (2435 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2494 : GoUInt16), (2500 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2503 : GoUInt16), (2504 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2507 : GoUInt16), (2508 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2519 : GoUInt16), (2530 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2531 : GoUInt16), (2561 : GoUInt16), (30 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2562 : GoUInt16), (2563 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2622 : GoUInt16), (2626 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2631 : GoUInt16), (2632 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2635 : GoUInt16), (2636 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2641 : GoUInt16), (2672 : GoUInt16), (31 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2673 : GoUInt16), (2677 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2689 : GoUInt16), (2691 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2750 : GoUInt16), (2757 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2759 : GoUInt16), (2761 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2763 : GoUInt16), (2764 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2786 : GoUInt16), (2787 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2810 : GoUInt16), (2812 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2817 : GoUInt16), (2819 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2878 : GoUInt16), (2884 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2887 : GoUInt16), (2888 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2891 : GoUInt16), (2892 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2902 : GoUInt16), (2903 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2914 : GoUInt16), (2915 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2946 : GoUInt16), (3006 : GoUInt16), (60 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3007 : GoUInt16), (3010 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3014 : GoUInt16), (3016 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3018 : GoUInt16), (3020 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3031 : GoUInt16), (3072 : GoUInt16), (41 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3073 : GoUInt16), (3075 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3134 : GoUInt16), (3140 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3142 : GoUInt16), (3144 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3146 : GoUInt16), (3148 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3157 : GoUInt16), (3158 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3170 : GoUInt16), (3171 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3201 : GoUInt16), (3203 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3262 : GoUInt16), (3268 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3270 : GoUInt16), (3272 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3274 : GoUInt16), (3276 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3285 : GoUInt16), (3286 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3298 : GoUInt16), (3299 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3328 : GoUInt16), (3331 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3390 : GoUInt16), (3396 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3398 : GoUInt16), (3400 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3402 : GoUInt16), (3404 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3415 : GoUInt16), (3426 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3427 : GoUInt16), (3457 : GoUInt16), (30 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3458 : GoUInt16), (3459 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3535 : GoUInt16), (3540 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3542 : GoUInt16), (3544 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3545 : GoUInt16), (3551 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3570 : GoUInt16), (3571 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3633 : GoUInt16), (3636 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3637 : GoUInt16), (3642 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3661 : GoUInt16), (3761 : GoUInt16), (100 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3764 : GoUInt16), (3769 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3771 : GoUInt16), (3772 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3789 : GoUInt16), (3953 : GoUInt16), (164 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3954 : GoUInt16), (3969 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3981 : GoUInt16), (3991 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3993 : GoUInt16), (4028 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4139 : GoUInt16), (4150 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4152 : GoUInt16), (4155 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4156 : GoUInt16), (4158 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4182 : GoUInt16), (4185 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4190 : GoUInt16), (4192 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4194 : GoUInt16), (4196 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4199 : GoUInt16), (4205 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4209 : GoUInt16), (4212 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4226 : GoUInt16), (4237 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4239 : GoUInt16), (4250 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4251 : GoUInt16), (4253 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5906 : GoUInt16), (5907 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5938 : GoUInt16), (5939 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5970 : GoUInt16), (5971 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6002 : GoUInt16), (6003 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6070 : GoUInt16), (6088 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6277 : GoUInt16), (6278 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6313 : GoUInt16), (6432 : GoUInt16), (119 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6433 : GoUInt16), (6443 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6448 : GoUInt16), (6456 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6679 : GoUInt16), (6683 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6741 : GoUInt16), (6750 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6753 : GoUInt16), (6772 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6847 : GoUInt16), (6848 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6912 : GoUInt16), (6916 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6965 : GoUInt16), (6979 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7040 : GoUInt16), (7042 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7073 : GoUInt16), (7081 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7084 : GoUInt16), (7085 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7143 : GoUInt16), (7153 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7204 : GoUInt16), (7222 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7655 : GoUInt16), (7668 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9398 : GoUInt16), (9449 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11744 : GoUInt16), (11775 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42612 : GoUInt16), (42619 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42654 : GoUInt16), (42655 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43010 : GoUInt16), (43019 : GoUInt16), (9 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43043 : GoUInt16), (43047 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43136 : GoUInt16), (43137 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43188 : GoUInt16), (43203 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43205 : GoUInt16), (43263 : GoUInt16), (58 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43302 : GoUInt16), (43306 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43335 : GoUInt16), (43346 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43392 : GoUInt16), (43395 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43444 : GoUInt16), (43455 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43493 : GoUInt16), (43561 : GoUInt16), (68 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43562 : GoUInt16), (43574 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43587 : GoUInt16), (43596 : GoUInt16), (9 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43597 : GoUInt16), (43643 : GoUInt16), (46 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43644 : GoUInt16), (43645 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43696 : GoUInt16), (43698 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43699 : GoUInt16), (43700 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43703 : GoUInt16), (43704 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43710 : GoUInt16), (43755 : GoUInt16), (45 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43756 : GoUInt16), (43759 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43765 : GoUInt16), (44003 : GoUInt16), (238 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44004 : GoUInt16), (44010 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64286 : GoUInt16), (64286 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((66422u32 : GoUInt32), (66426u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68097u32 : GoUInt32), (68099u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68101u32 : GoUInt32), (68102u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68108u32 : GoUInt32), (68111u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68900u32 : GoUInt32), (68903u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69291u32 : GoUInt32), (69292u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69632u32 : GoUInt32), (69634u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69688u32 : GoUInt32), (69701u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69762u32 : GoUInt32), (69808u32 : GoUInt32), (46u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69809u32 : GoUInt32), (69816u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69888u32 : GoUInt32), (69890u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69927u32 : GoUInt32), (69938u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69957u32 : GoUInt32), (69958u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70016u32 : GoUInt32), (70018u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70067u32 : GoUInt32), (70079u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70094u32 : GoUInt32), (70095u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70188u32 : GoUInt32), (70196u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70199u32 : GoUInt32), (70206u32 : GoUInt32), (7u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70367u32 : GoUInt32), (70376u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70400u32 : GoUInt32), (70403u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70462u32 : GoUInt32), (70468u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70471u32 : GoUInt32), (70472u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70475u32 : GoUInt32), (70476u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70487u32 : GoUInt32), (70498u32 : GoUInt32), (11u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70499u32 : GoUInt32), (70709u32 : GoUInt32), (210u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70710u32 : GoUInt32), (70721u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70723u32 : GoUInt32), (70725u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70832u32 : GoUInt32), (70849u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71087u32 : GoUInt32), (71093u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71096u32 : GoUInt32), (71102u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71132u32 : GoUInt32), (71133u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71216u32 : GoUInt32), (71230u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71232u32 : GoUInt32), (71339u32 : GoUInt32), (107u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71340u32 : GoUInt32), (71349u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71453u32 : GoUInt32), (71466u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71724u32 : GoUInt32), (71736u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71984u32 : GoUInt32), (71989u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71991u32 : GoUInt32), (71992u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71995u32 : GoUInt32), (71996u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72000u32 : GoUInt32), (72002u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72145u32 : GoUInt32), (72151u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72154u32 : GoUInt32), (72159u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72164u32 : GoUInt32), (72193u32 : GoUInt32), (29u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72194u32 : GoUInt32), (72202u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72245u32 : GoUInt32), (72249u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72251u32 : GoUInt32), (72254u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72273u32 : GoUInt32), (72283u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72330u32 : GoUInt32), (72343u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72751u32 : GoUInt32), (72758u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72760u32 : GoUInt32), (72766u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72850u32 : GoUInt32), (72871u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72873u32 : GoUInt32), (72886u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73009u32 : GoUInt32), (73014u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73018u32 : GoUInt32), (73020u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73021u32 : GoUInt32), (73023u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73024u32 : GoUInt32), (73025u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73027u32 : GoUInt32), (73031u32 : GoUInt32), (4u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73098u32 : GoUInt32), (73102u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73104u32 : GoUInt32), (73105u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73107u32 : GoUInt32), (73110u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73459u32 : GoUInt32), (73462u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94031u32 : GoUInt32), (94033u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94034u32 : GoUInt32), (94087u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94095u32 : GoUInt32), (94098u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((94192u32 : GoUInt32), (94193u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((113822u32 : GoUInt32), (122880u32 : GoUInt32), (9058u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((122881u32 : GoUInt32), (122886u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((122888u32 : GoUInt32), (122904u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((122907u32 : GoUInt32), (122913u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((122915u32 : GoUInt32), (122916u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((122918u32 : GoUInt32), (122922u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((125255u32 : GoUInt32), (127280u32 : GoUInt32), (2025u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127281u32 : GoUInt32), (127305u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127312u32 : GoUInt32), (127337u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((127344u32 : GoUInt32), (127369u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Other_Default_Ignorable_Code_Point = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((847 : GoUInt16), (4447 : GoUInt16), (3600 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((4448 : GoUInt16), (6068 : GoUInt16), (1620 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6069 : GoUInt16), (8293 : GoUInt16), (2224 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((12644 : GoUInt16), (65440 : GoUInt16), (52796 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((65520 : GoUInt16), (65528 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((917504u32 : GoUInt32), (917506u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((917507u32 : GoUInt32), (917535u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((917632u32 : GoUInt32), (917759u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((918000u32 : GoUInt32), (921599u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Other_Grapheme_Extend = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((2494 : GoUInt16), (2519 : GoUInt16), (25 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2878 : GoUInt16), (2903 : GoUInt16), (25 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3006 : GoUInt16), (3031 : GoUInt16), (25 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3266 : GoUInt16), (3285 : GoUInt16), (19 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3286 : GoUInt16), (3390 : GoUInt16), (104 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3415 : GoUInt16), (3535 : GoUInt16), (120 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3551 : GoUInt16), (6965 : GoUInt16), (3414 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8204 : GoUInt16), (12334 : GoUInt16), (4130 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12335 : GoUInt16), (65438 : GoUInt16), (53103 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65439 : GoUInt16), (65439 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((70462u32 : GoUInt32), (70487u32 : GoUInt32), (25u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((70832u32 : GoUInt32), (70845u32 : GoUInt32), (13u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((71087u32 : GoUInt32), (71984u32 : GoUInt32), (897u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((119141u32 : GoUInt32), (119150u32 : GoUInt32), (9u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((119151u32 : GoUInt32), (119154u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((917536u32 : GoUInt32), (917631u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Other_ID_Continue = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((183 : GoUInt16), (903 : GoUInt16), (720 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((4969 : GoUInt16), (4977 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((6618 : GoUInt16), (6618 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Other_ID_Start = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((6277 : GoUInt16), (6278 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8472 : GoUInt16), (8494 : GoUInt16), (22 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((12443 : GoUInt16), (12444 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Other_Lowercase = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((170 : GoUInt16), (186 : GoUInt16), (16 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((688 : GoUInt16), (696 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((704 : GoUInt16), (705 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((736 : GoUInt16), (740 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((837 : GoUInt16), (890 : GoUInt16), (53 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7468 : GoUInt16), (7530 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7544 : GoUInt16), (7579 : GoUInt16), (35 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7580 : GoUInt16), (7615 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8305 : GoUInt16), (8319 : GoUInt16), (14 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8336 : GoUInt16), (8348 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8560 : GoUInt16), (8575 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9424 : GoUInt16), (9449 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11388 : GoUInt16), (11389 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42652 : GoUInt16), (42653 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42864 : GoUInt16), (43000 : GoUInt16), (136 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43001 : GoUInt16), (43868 : GoUInt16), (867 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43869 : GoUInt16), (43871 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), latinOffset : (1 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Other_Math = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((94 : GoUInt16), (976 : GoUInt16), (882 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((977 : GoUInt16), (978 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((981 : GoUInt16), (1008 : GoUInt16), (27 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1009 : GoUInt16), (1012 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1013 : GoUInt16), (8214 : GoUInt16), (7201 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8242 : GoUInt16), (8244 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8256 : GoUInt16), (8289 : GoUInt16), (33 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8290 : GoUInt16), (8292 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8317 : GoUInt16), (8318 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8333 : GoUInt16), (8334 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8400 : GoUInt16), (8412 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8417 : GoUInt16), (8421 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8422 : GoUInt16), (8427 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8428 : GoUInt16), (8431 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8450 : GoUInt16), (8455 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8458 : GoUInt16), (8467 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8469 : GoUInt16), (8473 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8474 : GoUInt16), (8477 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8484 : GoUInt16), (8488 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8489 : GoUInt16), (8492 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8493 : GoUInt16), (8495 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8496 : GoUInt16), (8497 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8499 : GoUInt16), (8504 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8508 : GoUInt16), (8511 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8517 : GoUInt16), (8521 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8597 : GoUInt16), (8601 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8604 : GoUInt16), (8607 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8609 : GoUInt16), (8610 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8612 : GoUInt16), (8613 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8615 : GoUInt16), (8617 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8618 : GoUInt16), (8621 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8624 : GoUInt16), (8625 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8630 : GoUInt16), (8631 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8636 : GoUInt16), (8653 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8656 : GoUInt16), (8657 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8659 : GoUInt16), (8661 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8662 : GoUInt16), (8667 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8669 : GoUInt16), (8676 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8677 : GoUInt16), (8968 : GoUInt16), (291 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8969 : GoUInt16), (8971 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9140 : GoUInt16), (9141 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9143 : GoUInt16), (9168 : GoUInt16), (25 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9186 : GoUInt16), (9632 : GoUInt16), (446 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9633 : GoUInt16), (9646 : GoUInt16), (13 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9647 : GoUInt16), (9654 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9660 : GoUInt16), (9664 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9670 : GoUInt16), (9671 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9674 : GoUInt16), (9675 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9679 : GoUInt16), (9683 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9698 : GoUInt16), (9700 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9703 : GoUInt16), (9708 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9733 : GoUInt16), (9734 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9792 : GoUInt16), (9794 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9824 : GoUInt16), (9827 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9837 : GoUInt16), (9838 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10181 : GoUInt16), (10182 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10214 : GoUInt16), (10223 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10627 : GoUInt16), (10648 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10712 : GoUInt16), (10715 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10748 : GoUInt16), (10749 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65121 : GoUInt16), (65123 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65128 : GoUInt16), (65340 : GoUInt16), (212 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65342 : GoUInt16), (65342 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((119808u32 : GoUInt32), (119892u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119894u32 : GoUInt32), (119964u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119966u32 : GoUInt32), (119967u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119970u32 : GoUInt32), (119973u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119974u32 : GoUInt32), (119977u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119978u32 : GoUInt32), (119980u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119982u32 : GoUInt32), (119993u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119995u32 : GoUInt32), (119997u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119998u32 : GoUInt32), (120003u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120005u32 : GoUInt32), (120069u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120071u32 : GoUInt32), (120074u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120077u32 : GoUInt32), (120084u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120086u32 : GoUInt32), (120092u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120094u32 : GoUInt32), (120121u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120123u32 : GoUInt32), (120126u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120128u32 : GoUInt32), (120132u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120134u32 : GoUInt32), (120138u32 : GoUInt32), (4u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120139u32 : GoUInt32), (120144u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120146u32 : GoUInt32), (120485u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120488u32 : GoUInt32), (120512u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120514u32 : GoUInt32), (120538u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120540u32 : GoUInt32), (120570u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120572u32 : GoUInt32), (120596u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120598u32 : GoUInt32), (120628u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120630u32 : GoUInt32), (120654u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120656u32 : GoUInt32), (120686u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120688u32 : GoUInt32), (120712u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120714u32 : GoUInt32), (120744u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120746u32 : GoUInt32), (120770u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120772u32 : GoUInt32), (120779u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120782u32 : GoUInt32), (120831u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126464u32 : GoUInt32), (126467u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126469u32 : GoUInt32), (126495u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126497u32 : GoUInt32), (126498u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126500u32 : GoUInt32), (126503u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126505u32 : GoUInt32), (126514u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126516u32 : GoUInt32), (126519u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126521u32 : GoUInt32), (126523u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126530u32 : GoUInt32), (126535u32 : GoUInt32), (5u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126537u32 : GoUInt32), (126541u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126542u32 : GoUInt32), (126543u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126545u32 : GoUInt32), (126546u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126548u32 : GoUInt32), (126551u32 : GoUInt32), (3u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126553u32 : GoUInt32), (126561u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126562u32 : GoUInt32), (126564u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126567u32 : GoUInt32), (126570u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126572u32 : GoUInt32), (126578u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126580u32 : GoUInt32), (126583u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126585u32 : GoUInt32), (126588u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126590u32 : GoUInt32), (126592u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126593u32 : GoUInt32), (126601u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126603u32 : GoUInt32), (126619u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126625u32 : GoUInt32), (126627u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126629u32 : GoUInt32), (126633u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((126635u32 : GoUInt32), (126651u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Other_Uppercase = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((8544 : GoUInt16), (8559 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((9398 : GoUInt16), (9423 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((127280u32 : GoUInt32), (127305u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((127312u32 : GoUInt32), (127337u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((127344u32 : GoUInt32), (127369u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Pattern_Syntax = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((33 : GoUInt16), (47 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((58 : GoUInt16), (64 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((91 : GoUInt16), (94 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((96 : GoUInt16), (123 : GoUInt16), (27 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((124 : GoUInt16), (126 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((161 : GoUInt16), (167 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((169 : GoUInt16), (171 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((172 : GoUInt16), (176 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((177 : GoUInt16), (187 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((191 : GoUInt16), (215 : GoUInt16), (24 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((247 : GoUInt16), (8208 : GoUInt16), (7961 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8209 : GoUInt16), (8231 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8240 : GoUInt16), (8254 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8257 : GoUInt16), (8275 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8277 : GoUInt16), (8286 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8592 : GoUInt16), (9311 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((9472 : GoUInt16), (10101 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((10132 : GoUInt16), (11263 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11776 : GoUInt16), (11903 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12289 : GoUInt16), (12291 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12296 : GoUInt16), (12320 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12336 : GoUInt16), (64830 : GoUInt16), (52494 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((64831 : GoUInt16), (65093 : GoUInt16), (262 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65094 : GoUInt16), (65094 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), latinOffset : (10 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Pattern_White_Space = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((9 : GoUInt16), (13 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((32 : GoUInt16), (133 : GoUInt16), (101 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8206 : GoUInt16), (8207 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8232 : GoUInt16), (8233 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), latinOffset : (2 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Prepended_Concatenation_Mark = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((1536 : GoUInt16), (1541 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((1757 : GoUInt16), (1807 : GoUInt16), (50 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((2274 : GoUInt16), (2274 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((69821u32 : GoUInt32), (69837u32 : GoUInt32), (16u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Quotation_Mark = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((34 : GoUInt16), (39 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((171 : GoUInt16), (187 : GoUInt16), (16 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8216 : GoUInt16), (8223 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8249 : GoUInt16), (8250 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11842 : GoUInt16), (12300 : GoUInt16), (458 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12301 : GoUInt16), (12303 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12317 : GoUInt16), (12319 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65089 : GoUInt16), (65092 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65282 : GoUInt16), (65287 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65378 : GoUInt16), (65379 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), latinOffset : (2 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Radical = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((11904 : GoUInt16), (11929 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((11931 : GoUInt16), (12019 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((12032 : GoUInt16), (12245 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Regional_Indicator = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((127462u32 : GoUInt32), (127487u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Sentence_Terminal = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((33 : GoUInt16), (46 : GoUInt16), (13 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((63 : GoUInt16), (1417 : GoUInt16), (1354 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1566 : GoUInt16), (1567 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1748 : GoUInt16), (1792 : GoUInt16), (44 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1793 : GoUInt16), (1794 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2041 : GoUInt16), (2103 : GoUInt16), (62 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2105 : GoUInt16), (2109 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2110 : GoUInt16), (2404 : GoUInt16), (294 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2405 : GoUInt16), (4170 : GoUInt16), (1765 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4171 : GoUInt16), (4962 : GoUInt16), (791 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4967 : GoUInt16), (4968 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5742 : GoUInt16), (5941 : GoUInt16), (199 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5942 : GoUInt16), (6147 : GoUInt16), (205 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6153 : GoUInt16), (6468 : GoUInt16), (315 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6469 : GoUInt16), (6824 : GoUInt16), (355 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6825 : GoUInt16), (6827 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7002 : GoUInt16), (7003 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7006 : GoUInt16), (7007 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7227 : GoUInt16), (7228 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7294 : GoUInt16), (7295 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8252 : GoUInt16), (8253 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8263 : GoUInt16), (8265 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11822 : GoUInt16), (11836 : GoUInt16), (14 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12290 : GoUInt16), (42239 : GoUInt16), (29949 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42510 : GoUInt16), (42511 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42739 : GoUInt16), (42743 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43126 : GoUInt16), (43127 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43214 : GoUInt16), (43215 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43311 : GoUInt16), (43464 : GoUInt16), (153 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43465 : GoUInt16), (43613 : GoUInt16), (148 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43614 : GoUInt16), (43615 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43760 : GoUInt16), (43761 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((44011 : GoUInt16), (65106 : GoUInt16), (21095 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65110 : GoUInt16), (65111 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65281 : GoUInt16), (65294 : GoUInt16), (13 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65311 : GoUInt16), (65377 : GoUInt16), (66 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((68182u32 : GoUInt32), (68183u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69461u32 : GoUInt32), (69465u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69703u32 : GoUInt32), (69704u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69822u32 : GoUInt32), (69825u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69953u32 : GoUInt32), (69955u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70085u32 : GoUInt32), (70086u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70093u32 : GoUInt32), (70110u32 : GoUInt32), (17u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70111u32 : GoUInt32), (70200u32 : GoUInt32), (89u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70201u32 : GoUInt32), (70203u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70204u32 : GoUInt32), (70313u32 : GoUInt32), (109u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70731u32 : GoUInt32), (70732u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71106u32 : GoUInt32), (71107u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71113u32 : GoUInt32), (71127u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71233u32 : GoUInt32), (71234u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71484u32 : GoUInt32), (71486u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72004u32 : GoUInt32), (72006u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72258u32 : GoUInt32), (72259u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72347u32 : GoUInt32), (72348u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72769u32 : GoUInt32), (72770u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73463u32 : GoUInt32), (73464u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92782u32 : GoUInt32), (92783u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92917u32 : GoUInt32), (92983u32 : GoUInt32), (66u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92984u32 : GoUInt32), (92996u32 : GoUInt32), (12u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93848u32 : GoUInt32), (113823u32 : GoUInt32), (19975u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121480u32 : GoUInt32), (121480u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (1 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Soft_Dotted = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((105 : GoUInt16), (106 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((303 : GoUInt16), (585 : GoUInt16), (282 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((616 : GoUInt16), (669 : GoUInt16), (53 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((690 : GoUInt16), (1011 : GoUInt16), (321 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1110 : GoUInt16), (1112 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7522 : GoUInt16), (7574 : GoUInt16), (52 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7588 : GoUInt16), (7592 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7725 : GoUInt16), (7883 : GoUInt16), (158 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8305 : GoUInt16), (8520 : GoUInt16), (215 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8521 : GoUInt16), (11388 : GoUInt16), (2867 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((119842u32 : GoUInt32), (119843u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119894u32 : GoUInt32), (119895u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119946u32 : GoUInt32), (119947u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((119998u32 : GoUInt32), (119999u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120050u32 : GoUInt32), (120051u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120102u32 : GoUInt32), (120103u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120154u32 : GoUInt32), (120155u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120206u32 : GoUInt32), (120207u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120258u32 : GoUInt32), (120259u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120310u32 : GoUInt32), (120311u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120362u32 : GoUInt32), (120363u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120414u32 : GoUInt32), (120415u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((120466u32 : GoUInt32), (120467u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (1 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Terminal_Punctuation = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((33 : GoUInt16), (44 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((46 : GoUInt16), (58 : GoUInt16), (12 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((59 : GoUInt16), (63 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((894 : GoUInt16), (903 : GoUInt16), (9 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1417 : GoUInt16), (1475 : GoUInt16), (58 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1548 : GoUInt16), (1563 : GoUInt16), (15 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1566 : GoUInt16), (1567 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1748 : GoUInt16), (1792 : GoUInt16), (44 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1793 : GoUInt16), (1802 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1804 : GoUInt16), (2040 : GoUInt16), (236 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2041 : GoUInt16), (2096 : GoUInt16), (55 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2097 : GoUInt16), (2110 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2142 : GoUInt16), (2404 : GoUInt16), (262 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((2405 : GoUInt16), (3674 : GoUInt16), (1269 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3675 : GoUInt16), (3848 : GoUInt16), (173 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((3853 : GoUInt16), (3858 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4170 : GoUInt16), (4171 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4961 : GoUInt16), (4968 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5742 : GoUInt16), (5867 : GoUInt16), (125 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5868 : GoUInt16), (5869 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5941 : GoUInt16), (5942 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6100 : GoUInt16), (6102 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6106 : GoUInt16), (6146 : GoUInt16), (40 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6147 : GoUInt16), (6149 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6152 : GoUInt16), (6153 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6468 : GoUInt16), (6469 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((6824 : GoUInt16), (6827 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7002 : GoUInt16), (7003 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7005 : GoUInt16), (7007 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7227 : GoUInt16), (7231 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7294 : GoUInt16), (7295 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8252 : GoUInt16), (8253 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8263 : GoUInt16), (8265 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11822 : GoUInt16), (11836 : GoUInt16), (14 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11841 : GoUInt16), (11852 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11854 : GoUInt16), (11855 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((12289 : GoUInt16), (12290 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42238 : GoUInt16), (42239 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42509 : GoUInt16), (42511 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42739 : GoUInt16), (42743 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43126 : GoUInt16), (43127 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43214 : GoUInt16), (43215 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43311 : GoUInt16), (43463 : GoUInt16), (152 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43464 : GoUInt16), (43465 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43613 : GoUInt16), (43615 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43743 : GoUInt16), (43760 : GoUInt16), (17 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43761 : GoUInt16), (44011 : GoUInt16), (250 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65104 : GoUInt16), (65106 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65108 : GoUInt16), (65111 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65281 : GoUInt16), (65292 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65294 : GoUInt16), (65306 : GoUInt16), (12 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65307 : GoUInt16), (65311 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65377 : GoUInt16), (65380 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(
0,
0,
(new stdgo.unicode.Unicode.Range32((66463u32 : GoUInt32), (66512u32 : GoUInt32), (49u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((67671u32 : GoUInt32), (67871u32 : GoUInt32), (200u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68182u32 : GoUInt32), (68183u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68336u32 : GoUInt32), (68341u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68410u32 : GoUInt32), (68415u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((68505u32 : GoUInt32), (68508u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69461u32 : GoUInt32), (69465u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69703u32 : GoUInt32), (69709u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69822u32 : GoUInt32), (69825u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((69953u32 : GoUInt32), (69955u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70085u32 : GoUInt32), (70086u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70093u32 : GoUInt32), (70110u32 : GoUInt32), (17u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70111u32 : GoUInt32), (70200u32 : GoUInt32), (89u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70201u32 : GoUInt32), (70204u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70313u32 : GoUInt32), (70731u32 : GoUInt32), (418u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70732u32 : GoUInt32), (70733u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((70746u32 : GoUInt32), (70747u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71106u32 : GoUInt32), (71109u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71113u32 : GoUInt32), (71127u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71233u32 : GoUInt32), (71234u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((71484u32 : GoUInt32), (71486u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72004u32 : GoUInt32), (72006u32 : GoUInt32), (2u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72258u32 : GoUInt32), (72259u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72347u32 : GoUInt32), (72348u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72353u32 : GoUInt32), (72354u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72769u32 : GoUInt32), (72771u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((72817u32 : GoUInt32), (73463u32 : GoUInt32), (646u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((73464u32 : GoUInt32), (74864u32 : GoUInt32), (1400u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((74865u32 : GoUInt32), (74868u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92782u32 : GoUInt32), (92783u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92917u32 : GoUInt32), (92983u32 : GoUInt32), (66u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92984u32 : GoUInt32), (92985u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((92996u32 : GoUInt32), (93847u32 : GoUInt32), (851u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((93848u32 : GoUInt32), (113823u32 : GoUInt32), (19975u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32),
(new stdgo.unicode.Unicode.Range32((121479u32 : GoUInt32), (121482u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (3 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Unified_Ideograph = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((13312 : GoUInt16), (19903 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((19968 : GoUInt16), (40956 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((64014 : GoUInt16), (64015 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((64017 : GoUInt16), (64019 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((64020 : GoUInt16), (64031 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((64033 : GoUInt16), (64035 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((64036 : GoUInt16), (64039 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((64040 : GoUInt16), (64041 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((131072u32 : GoUInt32), (173789u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((173824u32 : GoUInt32), (177972u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((177984u32 : GoUInt32), (178205u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((178208u32 : GoUInt32), (183969u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((183984u32 : GoUInt32), (191456u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((196608u32 : GoUInt32), (201546u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __Variation_Selector = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((6155 : GoUInt16), (6157 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((65024 : GoUInt16), (65039 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((917760u32 : GoUInt32), (917999u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var __White_Space = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((9 : GoUInt16), (13 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((32 : GoUInt16), (133 : GoUInt16), (101 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((160 : GoUInt16), (5760 : GoUInt16), (5600 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8192 : GoUInt16), (8202 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8232 : GoUInt16), (8233 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8239 : GoUInt16), (8287 : GoUInt16), (48 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((12288 : GoUInt16), (12288 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), latinOffset : (2 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    // These variables have type *RangeTable.
    
    // ASCII_Hex_Digit is the set of Unicode characters with property ASCII_Hex_Digit.
**/
var ascii_Hex_Digit = __ASCII_Hex_Digit;
/**
    // These variables have type *RangeTable.
    
    // Bidi_Control is the set of Unicode characters with property Bidi_Control.
**/
var bidi_Control = __Bidi_Control;
/**
    // These variables have type *RangeTable.
    
    // Dash is the set of Unicode characters with property Dash.
**/
var dash = __Dash;
/**
    // These variables have type *RangeTable.
    
    // Deprecated is the set of Unicode characters with property Deprecated.
**/
var deprecated = __Deprecated;
/**
    // These variables have type *RangeTable.
    
    // Diacritic is the set of Unicode characters with property Diacritic.
**/
var diacritic = __Diacritic;
/**
    // These variables have type *RangeTable.
    
    // Extender is the set of Unicode characters with property Extender.
**/
var extender = __Extender;
/**
    // These variables have type *RangeTable.
    
    // Hex_Digit is the set of Unicode characters with property Hex_Digit.
**/
var hex_Digit = __Hex_Digit;
/**
    // These variables have type *RangeTable.
    
    // Hyphen is the set of Unicode characters with property Hyphen.
**/
var hyphen = __Hyphen;
/**
    // These variables have type *RangeTable.
    
    // IDS_Binary_Operator is the set of Unicode characters with property IDS_Binary_Operator.
**/
var ids_Binary_Operator = __IDS_Binary_Operator;
/**
    // These variables have type *RangeTable.
    
    // IDS_Trinary_Operator is the set of Unicode characters with property IDS_Trinary_Operator.
**/
var ids_Trinary_Operator = __IDS_Trinary_Operator;
/**
    // These variables have type *RangeTable.
    
    // Ideographic is the set of Unicode characters with property Ideographic.
**/
var ideographic = __Ideographic;
/**
    // These variables have type *RangeTable.
    
    // Join_Control is the set of Unicode characters with property Join_Control.
**/
var join_Control = __Join_Control;
/**
    // These variables have type *RangeTable.
    
    // Logical_Order_Exception is the set of Unicode characters with property Logical_Order_Exception.
**/
var logical_Order_Exception = __Logical_Order_Exception;
/**
    // These variables have type *RangeTable.
    
    // Noncharacter_Code_Point is the set of Unicode characters with property Noncharacter_Code_Point.
**/
var noncharacter_Code_Point = __Noncharacter_Code_Point;
/**
    // These variables have type *RangeTable.
    
    // Other_Alphabetic is the set of Unicode characters with property Other_Alphabetic.
**/
var other_Alphabetic = __Other_Alphabetic;
/**
    // These variables have type *RangeTable.
    
    // Other_Default_Ignorable_Code_Point is the set of Unicode characters with property Other_Default_Ignorable_Code_Point.
**/
var other_Default_Ignorable_Code_Point = __Other_Default_Ignorable_Code_Point;
/**
    // These variables have type *RangeTable.
    
    // Other_Grapheme_Extend is the set of Unicode characters with property Other_Grapheme_Extend.
**/
var other_Grapheme_Extend = __Other_Grapheme_Extend;
/**
    // These variables have type *RangeTable.
    
    // Other_ID_Continue is the set of Unicode characters with property Other_ID_Continue.
**/
var other_ID_Continue = __Other_ID_Continue;
/**
    // These variables have type *RangeTable.
    
    // Other_ID_Start is the set of Unicode characters with property Other_ID_Start.
**/
var other_ID_Start = __Other_ID_Start;
/**
    // These variables have type *RangeTable.
    
    // Other_Lowercase is the set of Unicode characters with property Other_Lowercase.
**/
var other_Lowercase = __Other_Lowercase;
/**
    // These variables have type *RangeTable.
    
    // Other_Math is the set of Unicode characters with property Other_Math.
**/
var other_Math = __Other_Math;
/**
    // These variables have type *RangeTable.
    
    // Other_Uppercase is the set of Unicode characters with property Other_Uppercase.
**/
var other_Uppercase = __Other_Uppercase;
/**
    // These variables have type *RangeTable.
    
    // Pattern_Syntax is the set of Unicode characters with property Pattern_Syntax.
**/
var pattern_Syntax = __Pattern_Syntax;
/**
    // These variables have type *RangeTable.
    
    // Pattern_White_Space is the set of Unicode characters with property Pattern_White_Space.
**/
var pattern_White_Space = __Pattern_White_Space;
/**
    // These variables have type *RangeTable.
    
    // Prepended_Concatenation_Mark is the set of Unicode characters with property Prepended_Concatenation_Mark.
**/
var prepended_Concatenation_Mark = __Prepended_Concatenation_Mark;
/**
    // These variables have type *RangeTable.
    
    // Quotation_Mark is the set of Unicode characters with property Quotation_Mark.
**/
var quotation_Mark = __Quotation_Mark;
/**
    // These variables have type *RangeTable.
    
    // Radical is the set of Unicode characters with property Radical.
**/
var radical = __Radical;
/**
    // These variables have type *RangeTable.
    
    // Regional_Indicator is the set of Unicode characters with property Regional_Indicator.
**/
var regional_Indicator = __Regional_Indicator;
/**
    // These variables have type *RangeTable.
    
    // STerm is an alias for Sentence_Terminal.
**/
var sterm = __Sentence_Terminal;
/**
    // These variables have type *RangeTable.
    
    // Sentence_Terminal is the set of Unicode characters with property Sentence_Terminal.
**/
var sentence_Terminal = __Sentence_Terminal;
/**
    // These variables have type *RangeTable.
    
    // Soft_Dotted is the set of Unicode characters with property Soft_Dotted.
**/
var soft_Dotted = __Soft_Dotted;
/**
    // These variables have type *RangeTable.
    
    // Terminal_Punctuation is the set of Unicode characters with property Terminal_Punctuation.
**/
var terminal_Punctuation = __Terminal_Punctuation;
/**
    // These variables have type *RangeTable.
    
    // Unified_Ideograph is the set of Unicode characters with property Unified_Ideograph.
**/
var unified_Ideograph = __Unified_Ideograph;
/**
    // These variables have type *RangeTable.
    
    // Variation_Selector is the set of Unicode characters with property Variation_Selector.
**/
var variation_Selector = __Variation_Selector;
/**
    // These variables have type *RangeTable.
    
    // White_Space is the set of Unicode characters with property White_Space.
**/
var white_Space = __White_Space;
/**
    // Properties is the set of Unicode property tables.
    
    
**/
var properties = ({
    final x = new stdgo.GoMap.GoObjectMap<GoString, Ref<stdgo.unicode.Unicode.RangeTable>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.unicode.Unicode.RangeTable", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "r16", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.unicode.Unicode.Range16", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "hi", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "stride", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "r32", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.unicode.Unicode.Range32", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "hi", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "stride", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "latinOffset", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) }) })));
    @:privateAccess x._keys = [
("ASCII_Hex_Digit" : GoString),
("Bidi_Control" : GoString),
("Dash" : GoString),
("Deprecated" : GoString),
("Diacritic" : GoString),
("Extender" : GoString),
("Hex_Digit" : GoString),
("Hyphen" : GoString),
("IDS_Binary_Operator" : GoString),
("IDS_Trinary_Operator" : GoString),
("Ideographic" : GoString),
("Join_Control" : GoString),
("Logical_Order_Exception" : GoString),
("Noncharacter_Code_Point" : GoString),
("Other_Alphabetic" : GoString),
("Other_Default_Ignorable_Code_Point" : GoString),
("Other_Grapheme_Extend" : GoString),
("Other_ID_Continue" : GoString),
("Other_ID_Start" : GoString),
("Other_Lowercase" : GoString),
("Other_Math" : GoString),
("Other_Uppercase" : GoString),
("Pattern_Syntax" : GoString),
("Pattern_White_Space" : GoString),
("Prepended_Concatenation_Mark" : GoString),
("Quotation_Mark" : GoString),
("Radical" : GoString),
("Regional_Indicator" : GoString),
("Sentence_Terminal" : GoString),
("STerm" : GoString),
("Soft_Dotted" : GoString),
("Terminal_Punctuation" : GoString),
("Unified_Ideograph" : GoString),
("Variation_Selector" : GoString),
("White_Space" : GoString)];
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
white_Space];
    x;
} : stdgo.GoMap<GoString, Ref<stdgo.unicode.Unicode.RangeTable>>);
/**
    
    
    
**/
private var __CaseRanges = (new Slice<stdgo.unicode.Unicode.CaseRange>(
0,
0,
(new stdgo.unicode.Unicode.CaseRange((65u32 : GoUInt32), (90u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((97u32 : GoUInt32), (122u32 : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((181u32 : GoUInt32), (181u32 : GoUInt32), (new GoArray<GoInt32>((743 : GoInt32), (0 : GoInt32), (743 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((192u32 : GoUInt32), (214u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((216u32 : GoUInt32), (222u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((224u32 : GoUInt32), (246u32 : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((248u32 : GoUInt32), (254u32 : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((255u32 : GoUInt32), (255u32 : GoUInt32), (new GoArray<GoInt32>((121 : GoInt32), (0 : GoInt32), (121 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((256u32 : GoUInt32), (303u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((304u32 : GoUInt32), (304u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-199 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((305u32 : GoUInt32), (305u32 : GoUInt32), (new GoArray<GoInt32>((-232 : GoInt32), (0 : GoInt32), (-232 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((306u32 : GoUInt32), (311u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((313u32 : GoUInt32), (328u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((330u32 : GoUInt32), (375u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((376u32 : GoUInt32), (376u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-121 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((377u32 : GoUInt32), (382u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((383u32 : GoUInt32), (383u32 : GoUInt32), (new GoArray<GoInt32>((-300 : GoInt32), (0 : GoInt32), (-300 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((384u32 : GoUInt32), (384u32 : GoUInt32), (new GoArray<GoInt32>((195 : GoInt32), (0 : GoInt32), (195 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((385u32 : GoUInt32), (385u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (210 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((386u32 : GoUInt32), (389u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((390u32 : GoUInt32), (390u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (206 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((391u32 : GoUInt32), (392u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((393u32 : GoUInt32), (394u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (205 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((395u32 : GoUInt32), (396u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((398u32 : GoUInt32), (398u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (79 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((399u32 : GoUInt32), (399u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (202 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((400u32 : GoUInt32), (400u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (203 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((401u32 : GoUInt32), (402u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((403u32 : GoUInt32), (403u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (205 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((404u32 : GoUInt32), (404u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (207 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((405u32 : GoUInt32), (405u32 : GoUInt32), (new GoArray<GoInt32>((97 : GoInt32), (0 : GoInt32), (97 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((406u32 : GoUInt32), (406u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (211 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((407u32 : GoUInt32), (407u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (209 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((408u32 : GoUInt32), (409u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((410u32 : GoUInt32), (410u32 : GoUInt32), (new GoArray<GoInt32>((163 : GoInt32), (0 : GoInt32), (163 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((412u32 : GoUInt32), (412u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (211 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((413u32 : GoUInt32), (413u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (213 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((414u32 : GoUInt32), (414u32 : GoUInt32), (new GoArray<GoInt32>((130 : GoInt32), (0 : GoInt32), (130 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((415u32 : GoUInt32), (415u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (214 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((416u32 : GoUInt32), (421u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((422u32 : GoUInt32), (422u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (218 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((423u32 : GoUInt32), (424u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((425u32 : GoUInt32), (425u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (218 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((428u32 : GoUInt32), (429u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((430u32 : GoUInt32), (430u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (218 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((431u32 : GoUInt32), (432u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((433u32 : GoUInt32), (434u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (217 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((435u32 : GoUInt32), (438u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((439u32 : GoUInt32), (439u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (219 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((440u32 : GoUInt32), (441u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((444u32 : GoUInt32), (445u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((447u32 : GoUInt32), (447u32 : GoUInt32), (new GoArray<GoInt32>((56 : GoInt32), (0 : GoInt32), (56 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((452u32 : GoUInt32), (452u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (2 : GoInt32), (1 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((453u32 : GoUInt32), (453u32 : GoUInt32), (new GoArray<GoInt32>((-1 : GoInt32), (1 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((454u32 : GoUInt32), (454u32 : GoUInt32), (new GoArray<GoInt32>((-2 : GoInt32), (0 : GoInt32), (-1 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((455u32 : GoUInt32), (455u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (2 : GoInt32), (1 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((456u32 : GoUInt32), (456u32 : GoUInt32), (new GoArray<GoInt32>((-1 : GoInt32), (1 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((457u32 : GoUInt32), (457u32 : GoUInt32), (new GoArray<GoInt32>((-2 : GoInt32), (0 : GoInt32), (-1 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((458u32 : GoUInt32), (458u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (2 : GoInt32), (1 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((459u32 : GoUInt32), (459u32 : GoUInt32), (new GoArray<GoInt32>((-1 : GoInt32), (1 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((460u32 : GoUInt32), (460u32 : GoUInt32), (new GoArray<GoInt32>((-2 : GoInt32), (0 : GoInt32), (-1 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((461u32 : GoUInt32), (476u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((477u32 : GoUInt32), (477u32 : GoUInt32), (new GoArray<GoInt32>((-79 : GoInt32), (0 : GoInt32), (-79 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((478u32 : GoUInt32), (495u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((497u32 : GoUInt32), (497u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (2 : GoInt32), (1 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((498u32 : GoUInt32), (498u32 : GoUInt32), (new GoArray<GoInt32>((-1 : GoInt32), (1 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((499u32 : GoUInt32), (499u32 : GoUInt32), (new GoArray<GoInt32>((-2 : GoInt32), (0 : GoInt32), (-1 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((500u32 : GoUInt32), (501u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((502u32 : GoUInt32), (502u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-97 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((503u32 : GoUInt32), (503u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-56 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((504u32 : GoUInt32), (543u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((544u32 : GoUInt32), (544u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-130 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((546u32 : GoUInt32), (563u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((570u32 : GoUInt32), (570u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (10795 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((571u32 : GoUInt32), (572u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((573u32 : GoUInt32), (573u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-163 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((574u32 : GoUInt32), (574u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (10792 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((575u32 : GoUInt32), (576u32 : GoUInt32), (new GoArray<GoInt32>((10815 : GoInt32), (0 : GoInt32), (10815 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((577u32 : GoUInt32), (578u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((579u32 : GoUInt32), (579u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-195 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((580u32 : GoUInt32), (580u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (69 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((581u32 : GoUInt32), (581u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (71 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((582u32 : GoUInt32), (591u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((592u32 : GoUInt32), (592u32 : GoUInt32), (new GoArray<GoInt32>((10783 : GoInt32), (0 : GoInt32), (10783 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((593u32 : GoUInt32), (593u32 : GoUInt32), (new GoArray<GoInt32>((10780 : GoInt32), (0 : GoInt32), (10780 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((594u32 : GoUInt32), (594u32 : GoUInt32), (new GoArray<GoInt32>((10782 : GoInt32), (0 : GoInt32), (10782 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((595u32 : GoUInt32), (595u32 : GoUInt32), (new GoArray<GoInt32>((-210 : GoInt32), (0 : GoInt32), (-210 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((596u32 : GoUInt32), (596u32 : GoUInt32), (new GoArray<GoInt32>((-206 : GoInt32), (0 : GoInt32), (-206 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((598u32 : GoUInt32), (599u32 : GoUInt32), (new GoArray<GoInt32>((-205 : GoInt32), (0 : GoInt32), (-205 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((601u32 : GoUInt32), (601u32 : GoUInt32), (new GoArray<GoInt32>((-202 : GoInt32), (0 : GoInt32), (-202 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((603u32 : GoUInt32), (603u32 : GoUInt32), (new GoArray<GoInt32>((-203 : GoInt32), (0 : GoInt32), (-203 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((604u32 : GoUInt32), (604u32 : GoUInt32), (new GoArray<GoInt32>((42319 : GoInt32), (0 : GoInt32), (42319 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((608u32 : GoUInt32), (608u32 : GoUInt32), (new GoArray<GoInt32>((-205 : GoInt32), (0 : GoInt32), (-205 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((609u32 : GoUInt32), (609u32 : GoUInt32), (new GoArray<GoInt32>((42315 : GoInt32), (0 : GoInt32), (42315 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((611u32 : GoUInt32), (611u32 : GoUInt32), (new GoArray<GoInt32>((-207 : GoInt32), (0 : GoInt32), (-207 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((613u32 : GoUInt32), (613u32 : GoUInt32), (new GoArray<GoInt32>((42280 : GoInt32), (0 : GoInt32), (42280 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((614u32 : GoUInt32), (614u32 : GoUInt32), (new GoArray<GoInt32>((42308 : GoInt32), (0 : GoInt32), (42308 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((616u32 : GoUInt32), (616u32 : GoUInt32), (new GoArray<GoInt32>((-209 : GoInt32), (0 : GoInt32), (-209 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((617u32 : GoUInt32), (617u32 : GoUInt32), (new GoArray<GoInt32>((-211 : GoInt32), (0 : GoInt32), (-211 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((618u32 : GoUInt32), (618u32 : GoUInt32), (new GoArray<GoInt32>((42308 : GoInt32), (0 : GoInt32), (42308 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((619u32 : GoUInt32), (619u32 : GoUInt32), (new GoArray<GoInt32>((10743 : GoInt32), (0 : GoInt32), (10743 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((620u32 : GoUInt32), (620u32 : GoUInt32), (new GoArray<GoInt32>((42305 : GoInt32), (0 : GoInt32), (42305 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((623u32 : GoUInt32), (623u32 : GoUInt32), (new GoArray<GoInt32>((-211 : GoInt32), (0 : GoInt32), (-211 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((625u32 : GoUInt32), (625u32 : GoUInt32), (new GoArray<GoInt32>((10749 : GoInt32), (0 : GoInt32), (10749 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((626u32 : GoUInt32), (626u32 : GoUInt32), (new GoArray<GoInt32>((-213 : GoInt32), (0 : GoInt32), (-213 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((629u32 : GoUInt32), (629u32 : GoUInt32), (new GoArray<GoInt32>((-214 : GoInt32), (0 : GoInt32), (-214 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((637u32 : GoUInt32), (637u32 : GoUInt32), (new GoArray<GoInt32>((10727 : GoInt32), (0 : GoInt32), (10727 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((640u32 : GoUInt32), (640u32 : GoUInt32), (new GoArray<GoInt32>((-218 : GoInt32), (0 : GoInt32), (-218 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((642u32 : GoUInt32), (642u32 : GoUInt32), (new GoArray<GoInt32>((42307 : GoInt32), (0 : GoInt32), (42307 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((643u32 : GoUInt32), (643u32 : GoUInt32), (new GoArray<GoInt32>((-218 : GoInt32), (0 : GoInt32), (-218 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((647u32 : GoUInt32), (647u32 : GoUInt32), (new GoArray<GoInt32>((42282 : GoInt32), (0 : GoInt32), (42282 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((648u32 : GoUInt32), (648u32 : GoUInt32), (new GoArray<GoInt32>((-218 : GoInt32), (0 : GoInt32), (-218 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((649u32 : GoUInt32), (649u32 : GoUInt32), (new GoArray<GoInt32>((-69 : GoInt32), (0 : GoInt32), (-69 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((650u32 : GoUInt32), (651u32 : GoUInt32), (new GoArray<GoInt32>((-217 : GoInt32), (0 : GoInt32), (-217 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((652u32 : GoUInt32), (652u32 : GoUInt32), (new GoArray<GoInt32>((-71 : GoInt32), (0 : GoInt32), (-71 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((658u32 : GoUInt32), (658u32 : GoUInt32), (new GoArray<GoInt32>((-219 : GoInt32), (0 : GoInt32), (-219 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((669u32 : GoUInt32), (669u32 : GoUInt32), (new GoArray<GoInt32>((42261 : GoInt32), (0 : GoInt32), (42261 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((670u32 : GoUInt32), (670u32 : GoUInt32), (new GoArray<GoInt32>((42258 : GoInt32), (0 : GoInt32), (42258 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((837u32 : GoUInt32), (837u32 : GoUInt32), (new GoArray<GoInt32>((84 : GoInt32), (0 : GoInt32), (84 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((880u32 : GoUInt32), (883u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((886u32 : GoUInt32), (887u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((891u32 : GoUInt32), (893u32 : GoUInt32), (new GoArray<GoInt32>((130 : GoInt32), (0 : GoInt32), (130 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((895u32 : GoUInt32), (895u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (116 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((902u32 : GoUInt32), (902u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (38 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((904u32 : GoUInt32), (906u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (37 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((908u32 : GoUInt32), (908u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (64 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((910u32 : GoUInt32), (911u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (63 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((913u32 : GoUInt32), (929u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((931u32 : GoUInt32), (939u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((940u32 : GoUInt32), (940u32 : GoUInt32), (new GoArray<GoInt32>((-38 : GoInt32), (0 : GoInt32), (-38 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((941u32 : GoUInt32), (943u32 : GoUInt32), (new GoArray<GoInt32>((-37 : GoInt32), (0 : GoInt32), (-37 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((945u32 : GoUInt32), (961u32 : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((962u32 : GoUInt32), (962u32 : GoUInt32), (new GoArray<GoInt32>((-31 : GoInt32), (0 : GoInt32), (-31 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((963u32 : GoUInt32), (971u32 : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((972u32 : GoUInt32), (972u32 : GoUInt32), (new GoArray<GoInt32>((-64 : GoInt32), (0 : GoInt32), (-64 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((973u32 : GoUInt32), (974u32 : GoUInt32), (new GoArray<GoInt32>((-63 : GoInt32), (0 : GoInt32), (-63 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((975u32 : GoUInt32), (975u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((976u32 : GoUInt32), (976u32 : GoUInt32), (new GoArray<GoInt32>((-62 : GoInt32), (0 : GoInt32), (-62 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((977u32 : GoUInt32), (977u32 : GoUInt32), (new GoArray<GoInt32>((-57 : GoInt32), (0 : GoInt32), (-57 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((981u32 : GoUInt32), (981u32 : GoUInt32), (new GoArray<GoInt32>((-47 : GoInt32), (0 : GoInt32), (-47 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((982u32 : GoUInt32), (982u32 : GoUInt32), (new GoArray<GoInt32>((-54 : GoInt32), (0 : GoInt32), (-54 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((983u32 : GoUInt32), (983u32 : GoUInt32), (new GoArray<GoInt32>((-8 : GoInt32), (0 : GoInt32), (-8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((984u32 : GoUInt32), (1007u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1008u32 : GoUInt32), (1008u32 : GoUInt32), (new GoArray<GoInt32>((-86 : GoInt32), (0 : GoInt32), (-86 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1009u32 : GoUInt32), (1009u32 : GoUInt32), (new GoArray<GoInt32>((-80 : GoInt32), (0 : GoInt32), (-80 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1010u32 : GoUInt32), (1010u32 : GoUInt32), (new GoArray<GoInt32>((7 : GoInt32), (0 : GoInt32), (7 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1011u32 : GoUInt32), (1011u32 : GoUInt32), (new GoArray<GoInt32>((-116 : GoInt32), (0 : GoInt32), (-116 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1012u32 : GoUInt32), (1012u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-60 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1013u32 : GoUInt32), (1013u32 : GoUInt32), (new GoArray<GoInt32>((-96 : GoInt32), (0 : GoInt32), (-96 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1015u32 : GoUInt32), (1016u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1017u32 : GoUInt32), (1017u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-7 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1018u32 : GoUInt32), (1019u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1021u32 : GoUInt32), (1023u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-130 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1024u32 : GoUInt32), (1039u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (80 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1040u32 : GoUInt32), (1071u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1072u32 : GoUInt32), (1103u32 : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1104u32 : GoUInt32), (1119u32 : GoUInt32), (new GoArray<GoInt32>((-80 : GoInt32), (0 : GoInt32), (-80 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1120u32 : GoUInt32), (1153u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1162u32 : GoUInt32), (1215u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1216u32 : GoUInt32), (1216u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (15 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1217u32 : GoUInt32), (1230u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1231u32 : GoUInt32), (1231u32 : GoUInt32), (new GoArray<GoInt32>((-15 : GoInt32), (0 : GoInt32), (-15 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1232u32 : GoUInt32), (1327u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1329u32 : GoUInt32), (1366u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (48 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((1377u32 : GoUInt32), (1414u32 : GoUInt32), (new GoArray<GoInt32>((-48 : GoInt32), (0 : GoInt32), (-48 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((4256u32 : GoUInt32), (4293u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (7264 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((4295u32 : GoUInt32), (4295u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (7264 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((4301u32 : GoUInt32), (4301u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (7264 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((4304u32 : GoUInt32), (4346u32 : GoUInt32), (new GoArray<GoInt32>((3008 : GoInt32), (0 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((4349u32 : GoUInt32), (4351u32 : GoUInt32), (new GoArray<GoInt32>((3008 : GoInt32), (0 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((5024u32 : GoUInt32), (5103u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (38864 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((5104u32 : GoUInt32), (5109u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((5112u32 : GoUInt32), (5117u32 : GoUInt32), (new GoArray<GoInt32>((-8 : GoInt32), (0 : GoInt32), (-8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7296u32 : GoUInt32), (7296u32 : GoUInt32), (new GoArray<GoInt32>((-6254 : GoInt32), (0 : GoInt32), (-6254 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7297u32 : GoUInt32), (7297u32 : GoUInt32), (new GoArray<GoInt32>((-6253 : GoInt32), (0 : GoInt32), (-6253 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7298u32 : GoUInt32), (7298u32 : GoUInt32), (new GoArray<GoInt32>((-6244 : GoInt32), (0 : GoInt32), (-6244 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7299u32 : GoUInt32), (7300u32 : GoUInt32), (new GoArray<GoInt32>((-6242 : GoInt32), (0 : GoInt32), (-6242 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7301u32 : GoUInt32), (7301u32 : GoUInt32), (new GoArray<GoInt32>((-6243 : GoInt32), (0 : GoInt32), (-6243 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7302u32 : GoUInt32), (7302u32 : GoUInt32), (new GoArray<GoInt32>((-6236 : GoInt32), (0 : GoInt32), (-6236 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7303u32 : GoUInt32), (7303u32 : GoUInt32), (new GoArray<GoInt32>((-6181 : GoInt32), (0 : GoInt32), (-6181 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7304u32 : GoUInt32), (7304u32 : GoUInt32), (new GoArray<GoInt32>((35266 : GoInt32), (0 : GoInt32), (35266 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7312u32 : GoUInt32), (7354u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-3008 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7357u32 : GoUInt32), (7359u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-3008 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7545u32 : GoUInt32), (7545u32 : GoUInt32), (new GoArray<GoInt32>((35332 : GoInt32), (0 : GoInt32), (35332 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7549u32 : GoUInt32), (7549u32 : GoUInt32), (new GoArray<GoInt32>((3814 : GoInt32), (0 : GoInt32), (3814 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7566u32 : GoUInt32), (7566u32 : GoUInt32), (new GoArray<GoInt32>((35384 : GoInt32), (0 : GoInt32), (35384 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7680u32 : GoUInt32), (7829u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7835u32 : GoUInt32), (7835u32 : GoUInt32), (new GoArray<GoInt32>((-59 : GoInt32), (0 : GoInt32), (-59 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7838u32 : GoUInt32), (7838u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-7615 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7840u32 : GoUInt32), (7935u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7936u32 : GoUInt32), (7943u32 : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7944u32 : GoUInt32), (7951u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7952u32 : GoUInt32), (7957u32 : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7960u32 : GoUInt32), (7965u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7968u32 : GoUInt32), (7975u32 : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7976u32 : GoUInt32), (7983u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7984u32 : GoUInt32), (7991u32 : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((7992u32 : GoUInt32), (7999u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8000u32 : GoUInt32), (8005u32 : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8008u32 : GoUInt32), (8013u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8017u32 : GoUInt32), (8017u32 : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8019u32 : GoUInt32), (8019u32 : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8021u32 : GoUInt32), (8021u32 : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8023u32 : GoUInt32), (8023u32 : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8025u32 : GoUInt32), (8025u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8027u32 : GoUInt32), (8027u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8029u32 : GoUInt32), (8029u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8031u32 : GoUInt32), (8031u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8032u32 : GoUInt32), (8039u32 : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8040u32 : GoUInt32), (8047u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8048u32 : GoUInt32), (8049u32 : GoUInt32), (new GoArray<GoInt32>((74 : GoInt32), (0 : GoInt32), (74 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8050u32 : GoUInt32), (8053u32 : GoUInt32), (new GoArray<GoInt32>((86 : GoInt32), (0 : GoInt32), (86 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8054u32 : GoUInt32), (8055u32 : GoUInt32), (new GoArray<GoInt32>((100 : GoInt32), (0 : GoInt32), (100 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8056u32 : GoUInt32), (8057u32 : GoUInt32), (new GoArray<GoInt32>((128 : GoInt32), (0 : GoInt32), (128 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8058u32 : GoUInt32), (8059u32 : GoUInt32), (new GoArray<GoInt32>((112 : GoInt32), (0 : GoInt32), (112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8060u32 : GoUInt32), (8061u32 : GoUInt32), (new GoArray<GoInt32>((126 : GoInt32), (0 : GoInt32), (126 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8064u32 : GoUInt32), (8071u32 : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8072u32 : GoUInt32), (8079u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8080u32 : GoUInt32), (8087u32 : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8088u32 : GoUInt32), (8095u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8096u32 : GoUInt32), (8103u32 : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8104u32 : GoUInt32), (8111u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8112u32 : GoUInt32), (8113u32 : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8115u32 : GoUInt32), (8115u32 : GoUInt32), (new GoArray<GoInt32>((9 : GoInt32), (0 : GoInt32), (9 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8120u32 : GoUInt32), (8121u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8122u32 : GoUInt32), (8123u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-74 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8124u32 : GoUInt32), (8124u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-9 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8126u32 : GoUInt32), (8126u32 : GoUInt32), (new GoArray<GoInt32>((-7205 : GoInt32), (0 : GoInt32), (-7205 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8131u32 : GoUInt32), (8131u32 : GoUInt32), (new GoArray<GoInt32>((9 : GoInt32), (0 : GoInt32), (9 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8136u32 : GoUInt32), (8139u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-86 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8140u32 : GoUInt32), (8140u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-9 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8144u32 : GoUInt32), (8145u32 : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8152u32 : GoUInt32), (8153u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8154u32 : GoUInt32), (8155u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-100 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8160u32 : GoUInt32), (8161u32 : GoUInt32), (new GoArray<GoInt32>((8 : GoInt32), (0 : GoInt32), (8 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8165u32 : GoUInt32), (8165u32 : GoUInt32), (new GoArray<GoInt32>((7 : GoInt32), (0 : GoInt32), (7 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8168u32 : GoUInt32), (8169u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8170u32 : GoUInt32), (8171u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-112 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8172u32 : GoUInt32), (8172u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-7 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8179u32 : GoUInt32), (8179u32 : GoUInt32), (new GoArray<GoInt32>((9 : GoInt32), (0 : GoInt32), (9 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8184u32 : GoUInt32), (8185u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-128 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8186u32 : GoUInt32), (8187u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-126 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8188u32 : GoUInt32), (8188u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-9 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8486u32 : GoUInt32), (8486u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-7517 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8490u32 : GoUInt32), (8490u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8383 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8491u32 : GoUInt32), (8491u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-8262 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8498u32 : GoUInt32), (8498u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (28 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8526u32 : GoUInt32), (8526u32 : GoUInt32), (new GoArray<GoInt32>((-28 : GoInt32), (0 : GoInt32), (-28 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8544u32 : GoUInt32), (8559u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (16 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8560u32 : GoUInt32), (8575u32 : GoUInt32), (new GoArray<GoInt32>((-16 : GoInt32), (0 : GoInt32), (-16 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((8579u32 : GoUInt32), (8580u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((9398u32 : GoUInt32), (9423u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (26 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((9424u32 : GoUInt32), (9449u32 : GoUInt32), (new GoArray<GoInt32>((-26 : GoInt32), (0 : GoInt32), (-26 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11264u32 : GoUInt32), (11310u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (48 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11312u32 : GoUInt32), (11358u32 : GoUInt32), (new GoArray<GoInt32>((-48 : GoInt32), (0 : GoInt32), (-48 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11360u32 : GoUInt32), (11361u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11362u32 : GoUInt32), (11362u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-10743 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11363u32 : GoUInt32), (11363u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-3814 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11364u32 : GoUInt32), (11364u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-10727 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11365u32 : GoUInt32), (11365u32 : GoUInt32), (new GoArray<GoInt32>((-10795 : GoInt32), (0 : GoInt32), (-10795 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11366u32 : GoUInt32), (11366u32 : GoUInt32), (new GoArray<GoInt32>((-10792 : GoInt32), (0 : GoInt32), (-10792 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11367u32 : GoUInt32), (11372u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11373u32 : GoUInt32), (11373u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-10780 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11374u32 : GoUInt32), (11374u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-10749 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11375u32 : GoUInt32), (11375u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-10783 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11376u32 : GoUInt32), (11376u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-10782 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11378u32 : GoUInt32), (11379u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11381u32 : GoUInt32), (11382u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11390u32 : GoUInt32), (11391u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-10815 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11392u32 : GoUInt32), (11491u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11499u32 : GoUInt32), (11502u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11506u32 : GoUInt32), (11507u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11520u32 : GoUInt32), (11557u32 : GoUInt32), (new GoArray<GoInt32>((-7264 : GoInt32), (0 : GoInt32), (-7264 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11559u32 : GoUInt32), (11559u32 : GoUInt32), (new GoArray<GoInt32>((-7264 : GoInt32), (0 : GoInt32), (-7264 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((11565u32 : GoUInt32), (11565u32 : GoUInt32), (new GoArray<GoInt32>((-7264 : GoInt32), (0 : GoInt32), (-7264 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42560u32 : GoUInt32), (42605u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42624u32 : GoUInt32), (42651u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42786u32 : GoUInt32), (42799u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42802u32 : GoUInt32), (42863u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42873u32 : GoUInt32), (42876u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42877u32 : GoUInt32), (42877u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-35332 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42878u32 : GoUInt32), (42887u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42891u32 : GoUInt32), (42892u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42893u32 : GoUInt32), (42893u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42280 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42896u32 : GoUInt32), (42899u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42900u32 : GoUInt32), (42900u32 : GoUInt32), (new GoArray<GoInt32>((48 : GoInt32), (0 : GoInt32), (48 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42902u32 : GoUInt32), (42921u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42922u32 : GoUInt32), (42922u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42308 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42923u32 : GoUInt32), (42923u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42319 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42924u32 : GoUInt32), (42924u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42315 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42925u32 : GoUInt32), (42925u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42305 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42926u32 : GoUInt32), (42926u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42308 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42928u32 : GoUInt32), (42928u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42258 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42929u32 : GoUInt32), (42929u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42282 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42930u32 : GoUInt32), (42930u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42261 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42931u32 : GoUInt32), (42931u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (928 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42932u32 : GoUInt32), (42943u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42946u32 : GoUInt32), (42947u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42948u32 : GoUInt32), (42948u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-48 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42949u32 : GoUInt32), (42949u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-42307 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42950u32 : GoUInt32), (42950u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (-35384 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42951u32 : GoUInt32), (42954u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((42997u32 : GoUInt32), (42998u32 : GoUInt32), (new GoArray<GoInt32>((1114112 : GoInt32), (1114112 : GoInt32), (1114112 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((43859u32 : GoUInt32), (43859u32 : GoUInt32), (new GoArray<GoInt32>((-928 : GoInt32), (0 : GoInt32), (-928 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((43888u32 : GoUInt32), (43967u32 : GoUInt32), (new GoArray<GoInt32>((-38864 : GoInt32), (0 : GoInt32), (-38864 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((65313u32 : GoUInt32), (65338u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((65345u32 : GoUInt32), (65370u32 : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((66560u32 : GoUInt32), (66599u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (40 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((66600u32 : GoUInt32), (66639u32 : GoUInt32), (new GoArray<GoInt32>((-40 : GoInt32), (0 : GoInt32), (-40 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((66736u32 : GoUInt32), (66771u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (40 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((66776u32 : GoUInt32), (66811u32 : GoUInt32), (new GoArray<GoInt32>((-40 : GoInt32), (0 : GoInt32), (-40 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((68736u32 : GoUInt32), (68786u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (64 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((68800u32 : GoUInt32), (68850u32 : GoUInt32), (new GoArray<GoInt32>((-64 : GoInt32), (0 : GoInt32), (-64 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((71840u32 : GoUInt32), (71871u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((71872u32 : GoUInt32), (71903u32 : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((93760u32 : GoUInt32), (93791u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (32 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((93792u32 : GoUInt32), (93823u32 : GoUInt32), (new GoArray<GoInt32>((-32 : GoInt32), (0 : GoInt32), (-32 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((125184u32 : GoUInt32), (125217u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (34 : GoInt32), (0 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange),
(new stdgo.unicode.Unicode.CaseRange((125218u32 : GoUInt32), (125251u32 : GoUInt32), (new GoArray<GoInt32>((-34 : GoInt32), (0 : GoInt32), (-34 : GoInt32)) : stdgo.unicode.Unicode.T_d)) : stdgo.unicode.Unicode.CaseRange)) : Slice<stdgo.unicode.Unicode.CaseRange>);
/**
    // CaseRanges is the table describing case mappings for all letters with
    // non-self mappings.
    
    
**/
var caseRanges = __CaseRanges;
/**
    
    
    
**/
private var _properties = {
    var s:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 256) 0]);
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
/**
    
    
    
**/
private var _asciiFold = (new GoArray<GoUInt16>(
(0 : GoUInt16),
(1 : GoUInt16),
(2 : GoUInt16),
(3 : GoUInt16),
(4 : GoUInt16),
(5 : GoUInt16),
(6 : GoUInt16),
(7 : GoUInt16),
(8 : GoUInt16),
(9 : GoUInt16),
(10 : GoUInt16),
(11 : GoUInt16),
(12 : GoUInt16),
(13 : GoUInt16),
(14 : GoUInt16),
(15 : GoUInt16),
(16 : GoUInt16),
(17 : GoUInt16),
(18 : GoUInt16),
(19 : GoUInt16),
(20 : GoUInt16),
(21 : GoUInt16),
(22 : GoUInt16),
(23 : GoUInt16),
(24 : GoUInt16),
(25 : GoUInt16),
(26 : GoUInt16),
(27 : GoUInt16),
(28 : GoUInt16),
(29 : GoUInt16),
(30 : GoUInt16),
(31 : GoUInt16),
(32 : GoUInt16),
(33 : GoUInt16),
(34 : GoUInt16),
(35 : GoUInt16),
(36 : GoUInt16),
(37 : GoUInt16),
(38 : GoUInt16),
(39 : GoUInt16),
(40 : GoUInt16),
(41 : GoUInt16),
(42 : GoUInt16),
(43 : GoUInt16),
(44 : GoUInt16),
(45 : GoUInt16),
(46 : GoUInt16),
(47 : GoUInt16),
(48 : GoUInt16),
(49 : GoUInt16),
(50 : GoUInt16),
(51 : GoUInt16),
(52 : GoUInt16),
(53 : GoUInt16),
(54 : GoUInt16),
(55 : GoUInt16),
(56 : GoUInt16),
(57 : GoUInt16),
(58 : GoUInt16),
(59 : GoUInt16),
(60 : GoUInt16),
(61 : GoUInt16),
(62 : GoUInt16),
(63 : GoUInt16),
(64 : GoUInt16),
(97 : GoUInt16),
(98 : GoUInt16),
(99 : GoUInt16),
(100 : GoUInt16),
(101 : GoUInt16),
(102 : GoUInt16),
(103 : GoUInt16),
(104 : GoUInt16),
(105 : GoUInt16),
(106 : GoUInt16),
(107 : GoUInt16),
(108 : GoUInt16),
(109 : GoUInt16),
(110 : GoUInt16),
(111 : GoUInt16),
(112 : GoUInt16),
(113 : GoUInt16),
(114 : GoUInt16),
(115 : GoUInt16),
(116 : GoUInt16),
(117 : GoUInt16),
(118 : GoUInt16),
(119 : GoUInt16),
(120 : GoUInt16),
(121 : GoUInt16),
(122 : GoUInt16),
(91 : GoUInt16),
(92 : GoUInt16),
(93 : GoUInt16),
(94 : GoUInt16),
(95 : GoUInt16),
(96 : GoUInt16),
(65 : GoUInt16),
(66 : GoUInt16),
(67 : GoUInt16),
(68 : GoUInt16),
(69 : GoUInt16),
(70 : GoUInt16),
(71 : GoUInt16),
(72 : GoUInt16),
(73 : GoUInt16),
(74 : GoUInt16),
(8490 : GoUInt16),
(76 : GoUInt16),
(77 : GoUInt16),
(78 : GoUInt16),
(79 : GoUInt16),
(80 : GoUInt16),
(81 : GoUInt16),
(82 : GoUInt16),
(383 : GoUInt16),
(84 : GoUInt16),
(85 : GoUInt16),
(86 : GoUInt16),
(87 : GoUInt16),
(88 : GoUInt16),
(89 : GoUInt16),
(90 : GoUInt16),
(123 : GoUInt16),
(124 : GoUInt16),
(125 : GoUInt16),
(126 : GoUInt16),
(127 : GoUInt16)) : GoArray<GoUInt16>);
/**
    
    
    
**/
private var _caseOrbit = (new Slice<stdgo.unicode.Unicode.T_foldPair>(
0,
0,
(new stdgo.unicode.Unicode.T_foldPair((75 : GoUInt16), (107 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((83 : GoUInt16), (115 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((107 : GoUInt16), (8490 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((115 : GoUInt16), (383 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((181 : GoUInt16), (924 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((197 : GoUInt16), (229 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((223 : GoUInt16), (7838 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((229 : GoUInt16), (8491 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((304 : GoUInt16), (304 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((305 : GoUInt16), (305 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((383 : GoUInt16), (83 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((452 : GoUInt16), (453 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((453 : GoUInt16), (454 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((454 : GoUInt16), (452 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((455 : GoUInt16), (456 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((456 : GoUInt16), (457 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((457 : GoUInt16), (455 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((458 : GoUInt16), (459 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((459 : GoUInt16), (460 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((460 : GoUInt16), (458 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((497 : GoUInt16), (498 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((498 : GoUInt16), (499 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((499 : GoUInt16), (497 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((837 : GoUInt16), (921 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((914 : GoUInt16), (946 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((917 : GoUInt16), (949 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((920 : GoUInt16), (952 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((921 : GoUInt16), (953 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((922 : GoUInt16), (954 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((924 : GoUInt16), (956 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((928 : GoUInt16), (960 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((929 : GoUInt16), (961 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((931 : GoUInt16), (962 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((934 : GoUInt16), (966 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((937 : GoUInt16), (969 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((946 : GoUInt16), (976 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((949 : GoUInt16), (1013 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((952 : GoUInt16), (977 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((953 : GoUInt16), (8126 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((954 : GoUInt16), (1008 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((956 : GoUInt16), (181 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((960 : GoUInt16), (982 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((961 : GoUInt16), (1009 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((962 : GoUInt16), (963 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((963 : GoUInt16), (931 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((966 : GoUInt16), (981 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((969 : GoUInt16), (8486 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((976 : GoUInt16), (914 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((977 : GoUInt16), (1012 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((981 : GoUInt16), (934 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((982 : GoUInt16), (928 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1008 : GoUInt16), (922 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1009 : GoUInt16), (929 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1012 : GoUInt16), (920 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1013 : GoUInt16), (917 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1042 : GoUInt16), (1074 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1044 : GoUInt16), (1076 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1054 : GoUInt16), (1086 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1057 : GoUInt16), (1089 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1058 : GoUInt16), (1090 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1066 : GoUInt16), (1098 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1074 : GoUInt16), (7296 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1076 : GoUInt16), (7297 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1086 : GoUInt16), (7298 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1089 : GoUInt16), (7299 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1090 : GoUInt16), (7300 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1098 : GoUInt16), (7302 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1122 : GoUInt16), (1123 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((1123 : GoUInt16), (7303 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((7296 : GoUInt16), (1042 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((7297 : GoUInt16), (1044 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((7298 : GoUInt16), (1054 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((7299 : GoUInt16), (1057 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((7300 : GoUInt16), (7301 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((7301 : GoUInt16), (1058 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((7302 : GoUInt16), (1066 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((7303 : GoUInt16), (1122 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((7304 : GoUInt16), (42570 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((7776 : GoUInt16), (7777 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((7777 : GoUInt16), (7835 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((7835 : GoUInt16), (7776 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((7838 : GoUInt16), (223 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((8126 : GoUInt16), (837 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((8486 : GoUInt16), (937 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((8490 : GoUInt16), (75 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((8491 : GoUInt16), (197 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((42570 : GoUInt16), (42571 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair),
(new stdgo.unicode.Unicode.T_foldPair((42571 : GoUInt16), (7304 : GoUInt16)) : stdgo.unicode.Unicode.T_foldPair)) : Slice<stdgo.unicode.Unicode.T_foldPair>);
/**
    
    
    
**/
private var _foldL = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((837 : GoUInt16), (837 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var _foldLl = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((65 : GoUInt16), (90 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((192 : GoUInt16), (214 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((216 : GoUInt16), (222 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((256 : GoUInt16), (302 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((306 : GoUInt16), (310 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((313 : GoUInt16), (327 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((330 : GoUInt16), (376 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((377 : GoUInt16), (381 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((385 : GoUInt16), (386 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((388 : GoUInt16), (390 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((391 : GoUInt16), (393 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((394 : GoUInt16), (395 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((398 : GoUInt16), (401 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((403 : GoUInt16), (404 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((406 : GoUInt16), (408 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((412 : GoUInt16), (413 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((415 : GoUInt16), (416 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((418 : GoUInt16), (422 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((423 : GoUInt16), (425 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((428 : GoUInt16), (430 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((431 : GoUInt16), (433 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((434 : GoUInt16), (435 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((437 : GoUInt16), (439 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((440 : GoUInt16), (444 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((452 : GoUInt16), (453 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((455 : GoUInt16), (456 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((458 : GoUInt16), (459 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((461 : GoUInt16), (475 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((478 : GoUInt16), (494 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((497 : GoUInt16), (498 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((500 : GoUInt16), (502 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((503 : GoUInt16), (504 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((506 : GoUInt16), (562 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((570 : GoUInt16), (571 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((573 : GoUInt16), (574 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((577 : GoUInt16), (579 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((580 : GoUInt16), (582 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((584 : GoUInt16), (590 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((837 : GoUInt16), (880 : GoUInt16), (43 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((882 : GoUInt16), (886 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((895 : GoUInt16), (902 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((904 : GoUInt16), (906 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((908 : GoUInt16), (910 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((911 : GoUInt16), (913 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((914 : GoUInt16), (929 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((931 : GoUInt16), (939 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((975 : GoUInt16), (984 : GoUInt16), (9 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((986 : GoUInt16), (1006 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1012 : GoUInt16), (1015 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1017 : GoUInt16), (1018 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1021 : GoUInt16), (1071 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1120 : GoUInt16), (1152 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1162 : GoUInt16), (1216 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1217 : GoUInt16), (1229 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1232 : GoUInt16), (1326 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1329 : GoUInt16), (1366 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4256 : GoUInt16), (4293 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4295 : GoUInt16), (4301 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5024 : GoUInt16), (5109 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7312 : GoUInt16), (7354 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7357 : GoUInt16), (7359 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7680 : GoUInt16), (7828 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7838 : GoUInt16), (7934 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7944 : GoUInt16), (7951 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7960 : GoUInt16), (7965 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7976 : GoUInt16), (7983 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7992 : GoUInt16), (7999 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8008 : GoUInt16), (8013 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8025 : GoUInt16), (8031 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8040 : GoUInt16), (8047 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8072 : GoUInt16), (8079 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8088 : GoUInt16), (8095 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8104 : GoUInt16), (8111 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8120 : GoUInt16), (8124 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8136 : GoUInt16), (8140 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8152 : GoUInt16), (8155 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8168 : GoUInt16), (8172 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8184 : GoUInt16), (8188 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8486 : GoUInt16), (8490 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8491 : GoUInt16), (8498 : GoUInt16), (7 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8579 : GoUInt16), (11264 : GoUInt16), (2685 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11265 : GoUInt16), (11310 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11360 : GoUInt16), (11362 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11363 : GoUInt16), (11364 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11367 : GoUInt16), (11373 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11374 : GoUInt16), (11376 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11378 : GoUInt16), (11381 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11390 : GoUInt16), (11392 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11394 : GoUInt16), (11490 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11499 : GoUInt16), (11501 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11506 : GoUInt16), (42560 : GoUInt16), (31054 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42562 : GoUInt16), (42604 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42624 : GoUInt16), (42650 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42786 : GoUInt16), (42798 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42802 : GoUInt16), (42862 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42873 : GoUInt16), (42877 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42878 : GoUInt16), (42886 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42891 : GoUInt16), (42893 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42896 : GoUInt16), (42898 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42902 : GoUInt16), (42922 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42923 : GoUInt16), (42926 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42928 : GoUInt16), (42932 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42934 : GoUInt16), (42942 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42946 : GoUInt16), (42948 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42949 : GoUInt16), (42951 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42953 : GoUInt16), (42997 : GoUInt16), (44 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65313 : GoUInt16), (65338 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((66560u32 : GoUInt32), (66599u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((66736u32 : GoUInt32), (66771u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68736u32 : GoUInt32), (68786u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((71840u32 : GoUInt32), (71871u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((93760u32 : GoUInt32), (93791u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((125184u32 : GoUInt32), (125217u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (3 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var _foldLt = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((452 : GoUInt16), (454 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((455 : GoUInt16), (457 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((458 : GoUInt16), (460 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((497 : GoUInt16), (499 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8064 : GoUInt16), (8071 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8080 : GoUInt16), (8087 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8096 : GoUInt16), (8103 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8115 : GoUInt16), (8131 : GoUInt16), (16 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8179 : GoUInt16), (8179 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var _foldLu = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(
0,
0,
(new stdgo.unicode.Unicode.Range16((97 : GoUInt16), (122 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((181 : GoUInt16), (223 : GoUInt16), (42 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((224 : GoUInt16), (246 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((248 : GoUInt16), (255 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((257 : GoUInt16), (303 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((307 : GoUInt16), (311 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((314 : GoUInt16), (328 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((331 : GoUInt16), (375 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((378 : GoUInt16), (382 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((383 : GoUInt16), (384 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((387 : GoUInt16), (389 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((392 : GoUInt16), (396 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((402 : GoUInt16), (405 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((409 : GoUInt16), (410 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((414 : GoUInt16), (417 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((419 : GoUInt16), (421 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((424 : GoUInt16), (429 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((432 : GoUInt16), (436 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((438 : GoUInt16), (441 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((445 : GoUInt16), (447 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((453 : GoUInt16), (454 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((456 : GoUInt16), (457 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((459 : GoUInt16), (460 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((462 : GoUInt16), (476 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((477 : GoUInt16), (495 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((498 : GoUInt16), (499 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((501 : GoUInt16), (505 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((507 : GoUInt16), (543 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((547 : GoUInt16), (563 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((572 : GoUInt16), (575 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((576 : GoUInt16), (578 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((583 : GoUInt16), (591 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((592 : GoUInt16), (596 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((598 : GoUInt16), (599 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((601 : GoUInt16), (603 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((604 : GoUInt16), (608 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((609 : GoUInt16), (613 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((614 : GoUInt16), (616 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((617 : GoUInt16), (620 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((623 : GoUInt16), (625 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((626 : GoUInt16), (629 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((637 : GoUInt16), (640 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((642 : GoUInt16), (643 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((647 : GoUInt16), (652 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((658 : GoUInt16), (669 : GoUInt16), (11 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((670 : GoUInt16), (837 : GoUInt16), (167 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((881 : GoUInt16), (883 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((887 : GoUInt16), (891 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((892 : GoUInt16), (893 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((940 : GoUInt16), (943 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((945 : GoUInt16), (974 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((976 : GoUInt16), (977 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((981 : GoUInt16), (983 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((985 : GoUInt16), (1007 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1008 : GoUInt16), (1011 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1013 : GoUInt16), (1019 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1072 : GoUInt16), (1119 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1121 : GoUInt16), (1153 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1163 : GoUInt16), (1215 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1218 : GoUInt16), (1230 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1231 : GoUInt16), (1327 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((1377 : GoUInt16), (1414 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4304 : GoUInt16), (4346 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((4349 : GoUInt16), (4351 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((5112 : GoUInt16), (5117 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7296 : GoUInt16), (7304 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7545 : GoUInt16), (7549 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7566 : GoUInt16), (7681 : GoUInt16), (115 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7683 : GoUInt16), (7829 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7835 : GoUInt16), (7841 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7843 : GoUInt16), (7935 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7936 : GoUInt16), (7943 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7952 : GoUInt16), (7957 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7968 : GoUInt16), (7975 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((7984 : GoUInt16), (7991 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8000 : GoUInt16), (8005 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8017 : GoUInt16), (8023 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8032 : GoUInt16), (8039 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8048 : GoUInt16), (8061 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8112 : GoUInt16), (8113 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8126 : GoUInt16), (8144 : GoUInt16), (18 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8145 : GoUInt16), (8160 : GoUInt16), (15 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8161 : GoUInt16), (8165 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((8526 : GoUInt16), (8580 : GoUInt16), (54 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11312 : GoUInt16), (11358 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11361 : GoUInt16), (11365 : GoUInt16), (4 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11366 : GoUInt16), (11372 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11379 : GoUInt16), (11382 : GoUInt16), (3 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11393 : GoUInt16), (11491 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11500 : GoUInt16), (11502 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11507 : GoUInt16), (11520 : GoUInt16), (13 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11521 : GoUInt16), (11557 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((11559 : GoUInt16), (11565 : GoUInt16), (6 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42561 : GoUInt16), (42605 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42625 : GoUInt16), (42651 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42787 : GoUInt16), (42799 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42803 : GoUInt16), (42863 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42874 : GoUInt16), (42876 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42879 : GoUInt16), (42887 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42892 : GoUInt16), (42897 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42899 : GoUInt16), (42900 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42903 : GoUInt16), (42921 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42933 : GoUInt16), (42943 : GoUInt16), (2 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42947 : GoUInt16), (42952 : GoUInt16), (5 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((42954 : GoUInt16), (42998 : GoUInt16), (44 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43859 : GoUInt16), (43888 : GoUInt16), (29 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((43889 : GoUInt16), (43967 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16),
(new stdgo.unicode.Unicode.Range16((65345 : GoUInt16), (65370 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>), r32 : (new Slice<stdgo.unicode.Unicode.Range32>(0, 0, (new stdgo.unicode.Unicode.Range32((66600u32 : GoUInt32), (66639u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((66776u32 : GoUInt32), (66811u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((68800u32 : GoUInt32), (68850u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((71872u32 : GoUInt32), (71903u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((93792u32 : GoUInt32), (93823u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32), (new stdgo.unicode.Unicode.Range32((125218u32 : GoUInt32), (125251u32 : GoUInt32), (1u32 : GoUInt32)) : stdgo.unicode.Unicode.Range32)) : Slice<stdgo.unicode.Unicode.Range32>), latinOffset : (4 : GoInt) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var _foldM = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((921 : GoUInt16), (953 : GoUInt16), (32 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8126 : GoUInt16), (8126 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var _foldMn = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((921 : GoUInt16), (953 : GoUInt16), (32 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8126 : GoUInt16), (8126 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    // FoldCategory maps a category name to a table of
    // code points outside the category that are equivalent under
    // simple case folding to code points inside the category.
    // If there is no entry for a category name, there are no such points.
    
    
**/
var foldCategory = ({
    final x = new stdgo.GoMap.GoObjectMap<GoString, Ref<stdgo.unicode.Unicode.RangeTable>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.unicode.Unicode.RangeTable", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "r16", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.unicode.Unicode.Range16", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "hi", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "stride", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "r32", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.unicode.Unicode.Range32", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "hi", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "stride", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "latinOffset", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) }) })));
    @:privateAccess x._keys = [("L" : GoString), ("Ll" : GoString), ("Lt" : GoString), ("Lu" : GoString), ("M" : GoString), ("Mn" : GoString)];
    @:privateAccess x._values = [_foldL, _foldLl, _foldLt, _foldLu, _foldM, _foldMn];
    x;
} : stdgo.GoMap<GoString, Ref<stdgo.unicode.Unicode.RangeTable>>);
/**
    
    
    
**/
private var _foldCommon = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((924 : GoUInt16), (956 : GoUInt16), (32 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var _foldGreek = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((181 : GoUInt16), (837 : GoUInt16), (656 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    
    
    
**/
private var _foldInherited = (Go.setRef(({ r16 : (new Slice<stdgo.unicode.Unicode.Range16>(0, 0, (new stdgo.unicode.Unicode.Range16((921 : GoUInt16), (953 : GoUInt16), (32 : GoUInt16)) : stdgo.unicode.Unicode.Range16), (new stdgo.unicode.Unicode.Range16((8126 : GoUInt16), (8126 : GoUInt16), (1 : GoUInt16)) : stdgo.unicode.Unicode.Range16)) : Slice<stdgo.unicode.Unicode.Range16>) } : RangeTable)) : Ref<stdgo.unicode.Unicode.RangeTable>);
/**
    // FoldScript maps a script name to a table of
    // code points outside the script that are equivalent under
    // simple case folding to code points inside the script.
    // If there is no entry for a script name, there are no such points.
    
    
**/
var foldScript = ({
    final x = new stdgo.GoMap.GoObjectMap<GoString, Ref<stdgo.unicode.Unicode.RangeTable>>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.unicode.Unicode.RangeTable", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "r16", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.unicode.Unicode.Range16", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "hi", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "stride", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint16_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "r32", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.sliceType({ get : () -> stdgo.internal.reflect.Reflect.GoType.named("stdgo.unicode.Unicode.Range32", [], stdgo.internal.reflect.Reflect.GoType.structType([{ name : "lo", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "hi", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "stride", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(uint32_kind) }, optional : false }]), false, { get : () -> null }) }) }, optional : false }, { name : "latinOffset", embedded : false, tag : "", type : { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, optional : false }]), false, { get : () -> null }) }) })));
    @:privateAccess x._keys = [("Common" : GoString), ("Greek" : GoString), ("Inherited" : GoString)];
    @:privateAccess x._values = [_foldCommon, _foldGreek, _foldInherited];
    x;
} : stdgo.GoMap<GoString, Ref<stdgo.unicode.Unicode.RangeTable>>);
/**
    // Bit masks for each code point under U+0100, for fast lookup.
    
    // a control character.
**/
private final _pC = (128i64 : GoUInt64);
/**
    // Bit masks for each code point under U+0100, for fast lookup.
    
    // a punctuation character.
**/
private final _pP = (128i64 : GoUInt64);
/**
    // Bit masks for each code point under U+0100, for fast lookup.
    
    // a numeral.
**/
private final _pN = (128i64 : GoUInt64);
/**
    // Bit masks for each code point under U+0100, for fast lookup.
    
    // a symbolic character.
**/
private final _pS = (128i64 : GoUInt64);
/**
    // Bit masks for each code point under U+0100, for fast lookup.
    
    // a spacing character.
**/
private final _pZ = (128i64 : GoUInt64);
/**
    // Bit masks for each code point under U+0100, for fast lookup.
    
    // an upper-case letter.
**/
private final _pLu = (128i64 : GoUInt64);
/**
    // Bit masks for each code point under U+0100, for fast lookup.
    
    // a lower-case letter.
**/
private final _pLl = (128i64 : GoUInt64);
/**
    // Bit masks for each code point under U+0100, for fast lookup.
    
    // a printable character according to Go's definition.
**/
private final _pp = (128i64 : GoUInt64);
/**
    // Bit masks for each code point under U+0100, for fast lookup.
    
    // a graphical character according to the Unicode definition.
**/
private final _pg = (144i64 : GoUInt64);
/**
    // Bit masks for each code point under U+0100, for fast lookup.
    
    // a letter that is neither upper nor lower case.
**/
private final _pLo = (96i64 : GoUInt64);
/**
    // Bit masks for each code point under U+0100, for fast lookup.
    
    
**/
private final _pLmask = (96i64 : GoUInt64);
/**
    
    
    // Maximum valid Unicode code point.
**/
final maxRune = (1114111 : GoInt32);
/**
    
    
    // Represents invalid code points.
**/
final replacementChar = (65533 : GoInt32);
/**
    
    
    // maximum ASCII value.
**/
final maxASCII = (127 : GoInt32);
/**
    
    
    // maximum Latin-1 value.
**/
final maxLatin1 = (255 : GoInt32);
/**
    // Indices into the Delta arrays inside CaseRanges for case mapping.
    
    
**/
final upperCase = (2i64 : GoUInt64);
/**
    // Indices into the Delta arrays inside CaseRanges for case mapping.
    
    
**/
final lowerCase = (2i64 : GoUInt64);
/**
    // Indices into the Delta arrays inside CaseRanges for case mapping.
    
    
**/
final titleCase = (2i64 : GoUInt64);
/**
    // Indices into the Delta arrays inside CaseRanges for case mapping.
    
    
**/
final maxCase = (2i64 : GoUInt64);
/**
    // If the Delta field of a CaseRange is UpperLower, it means
    // this CaseRange represents a sequence of the form (say)
    // Upper Lower Upper Lower.
    
    // (Cannot be a valid delta.)
**/
final upperLower = (1114112 : GoInt32);
/**
    // linearMax is the maximum size table for linear search for non-Latin1 rune.
    // Derived by running 'go test -calibrate'.
    
    
**/
private final _linearMax = (18i64 : GoUInt64);
/**
    // Version is the Unicode edition from which the tables are derived.
    
    
**/
final version = ("13.0.0" : GoString);
/**
    // RangeTable defines a set of Unicode code points by listing the ranges of
    // code points within the set. The ranges are listed in two slices
    // to save space: a slice of 16-bit ranges and a slice of 32-bit ranges.
    // The two slices must be in sorted order and non-overlapping.
    // Also, R32 should contain only values >= 0x10000 (1<<16).
    
    
**/
@:structInit class RangeTable {
    public var r16 : Slice<stdgo.unicode.Unicode.Range16> = (null : Slice<stdgo.unicode.Unicode.Range16>);
    public var r32 : Slice<stdgo.unicode.Unicode.Range32> = (null : Slice<stdgo.unicode.Unicode.Range32>);
    public var latinOffset : GoInt = 0;
    public function new(?r16:Slice<stdgo.unicode.Unicode.Range16>, ?r32:Slice<stdgo.unicode.Unicode.Range32>, ?latinOffset:GoInt) {
        if (r16 != null) this.r16 = r16;
        if (r32 != null) this.r32 = r32;
        if (latinOffset != null) this.latinOffset = latinOffset;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new RangeTable(r16, r32, latinOffset);
    }
}
/**
    // Range16 represents of a range of 16-bit Unicode code points. The range runs from Lo to Hi
    // inclusive and has the specified stride.
    
    
**/
@:structInit class Range16 {
    public var lo : GoUInt16 = 0;
    public var hi : GoUInt16 = 0;
    public var stride : GoUInt16 = 0;
    public function new(?lo:GoUInt16, ?hi:GoUInt16, ?stride:GoUInt16) {
        if (lo != null) this.lo = lo;
        if (hi != null) this.hi = hi;
        if (stride != null) this.stride = stride;
    }
    public function __underlying__() return Go.toInterface(this);
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
    public var lo : GoUInt32 = 0;
    public var hi : GoUInt32 = 0;
    public var stride : GoUInt32 = 0;
    public function new(?lo:GoUInt32, ?hi:GoUInt32, ?stride:GoUInt32) {
        if (lo != null) this.lo = lo;
        if (hi != null) this.hi = hi;
        if (stride != null) this.stride = stride;
    }
    public function __underlying__() return Go.toInterface(this);
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
    public var lo : GoUInt32 = 0;
    public var hi : GoUInt32 = 0;
    public var delta : stdgo.unicode.Unicode.T_d = new stdgo.unicode.Unicode.T_d(...[for (i in 0 ... 3) (0 : GoInt32)]);
    public function new(?lo:GoUInt32, ?hi:GoUInt32, ?delta:stdgo.unicode.Unicode.T_d) {
        if (lo != null) this.lo = lo;
        if (hi != null) this.hi = hi;
        if (delta != null) this.delta = delta;
    }
    public function __underlying__() return Go.toInterface(this);
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
@:structInit @:private class T_foldPair {
    public var from : GoUInt16 = 0;
    public var to : GoUInt16 = 0;
    public function new(?from:GoUInt16, ?to:GoUInt16) {
        if (from != null) this.from = from;
        if (to != null) this.to = to;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_foldPair(from, to);
    }
}
/**
    // SpecialCase represents language-specific case mappings such as Turkish.
    // Methods of SpecialCase customize (by overriding) the standard mappings.
**/
@:named @:using(stdgo.unicode.Unicode.SpecialCase_static_extension) typedef SpecialCase = Slice<stdgo.unicode.Unicode.CaseRange>;
@:named private typedef T_d = GoArray<GoInt32>;
/**
    // IsDigit reports whether the rune is a decimal digit.
**/
function isDigit(_r:GoRune):Bool {
        if (_r <= (255 : GoInt32)) {
            return ((48 : GoInt32) <= _r) && (_r <= (57 : GoInt32));
        };
        return _isExcludingLatin(digit, _r);
    }
/**
    // IsGraphic reports whether the rune is defined as a Graphic by Unicode.
    // Such characters include letters, marks, numbers, punctuation, symbols, and
    // spaces, from categories L, M, N, P, S, Zs.
**/
function isGraphic(_r:GoRune):Bool {
        if ((_r : GoUInt32) <= (255u32 : GoUInt32)) {
            return _properties[((_r : GoUInt8) : GoInt)] & (144 : GoUInt8) != ((0 : GoUInt8));
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
        if ((_r : GoUInt32) <= (255u32 : GoUInt32)) {
            return _properties[((_r : GoUInt8) : GoInt)] & (128 : GoUInt8) != ((0 : GoUInt8));
        };
        return in_(_r, ...printRanges.__toArray__());
    }
/**
    // IsOneOf reports whether the rune is a member of one of the ranges.
    // The function "In" provides a nicer signature and should be used in preference to IsOneOf.
**/
function isOneOf(_ranges:Slice<Ref<RangeTable>>, _r:GoRune):Bool {
        for (__0 => _inside in _ranges) {
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
        for (__0 => _inside in _ranges) {
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
        if ((_r : GoUInt32) <= (255u32 : GoUInt32)) {
            return _properties[((_r : GoUInt8) : GoInt)] & (1 : GoUInt8) != ((0 : GoUInt8));
        };
        return false;
    }
/**
    // IsLetter reports whether the rune is a letter (category L).
**/
function isLetter(_r:GoRune):Bool {
        if ((_r : GoUInt32) <= (255u32 : GoUInt32)) {
            return _properties[((_r : GoUInt8) : GoInt)] & (96 : GoUInt8) != ((0 : GoUInt8));
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
        if ((_r : GoUInt32) <= (255u32 : GoUInt32)) {
            return _properties[((_r : GoUInt8) : GoInt)] & (4 : GoUInt8) != ((0 : GoUInt8));
        };
        return _isExcludingLatin(number, _r);
    }
/**
    // IsPunct reports whether the rune is a Unicode punctuation character
    // (category P).
**/
function isPunct(_r:GoRune):Bool {
        if ((_r : GoUInt32) <= (255u32 : GoUInt32)) {
            return _properties[((_r : GoUInt8) : GoInt)] & (2 : GoUInt8) != ((0 : GoUInt8));
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
        if ((_r : GoUInt32) <= (255u32 : GoUInt32)) {
            {
                final __value__ = _r;
                if (__value__ == ((9 : GoInt32)) || __value__ == ((10 : GoInt32)) || __value__ == ((11 : GoInt32)) || __value__ == ((12 : GoInt32)) || __value__ == ((13 : GoInt32)) || __value__ == ((32 : GoInt32)) || __value__ == ((133 : GoInt32)) || __value__ == ((160 : GoInt32))) {
                    return true;
                };
            };
            return false;
        };
        return _isExcludingLatin(white_Space, _r);
    }
/**
    // IsSymbol reports whether the rune is a symbolic character.
**/
function isSymbol(_r:GoRune):Bool {
        if ((_r : GoUInt32) <= (255u32 : GoUInt32)) {
            return _properties[((_r : GoUInt8) : GoInt)] & (8 : GoUInt8) != ((0 : GoUInt8));
        };
        return _isExcludingLatin(symbol, _r);
    }
/**
    // is16 reports whether r is in the sorted slice of 16-bit ranges.
**/
private function _is16(_ranges:Slice<Range16>, _r:GoUInt16):Bool {
        if ((_ranges.length <= (18 : GoInt)) || (_r <= (255 : GoUInt16))) {
            for (_i in 0 ... _ranges.length.toBasic()) {
                var _range_ = (Go.setRef(_ranges[(_i : GoInt)]) : Ref<stdgo.unicode.Unicode.Range16>);
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
            var _range_ = (Go.setRef(_ranges[(_m : GoInt)]) : Ref<stdgo.unicode.Unicode.Range16>);
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
private function _is32(_ranges:Slice<Range32>, _r:GoUInt32):Bool {
        if ((_ranges.length) <= (18 : GoInt)) {
            for (_i in 0 ... _ranges.length.toBasic()) {
                var _range_ = (Go.setRef(_ranges[(_i : GoInt)]) : Ref<stdgo.unicode.Unicode.Range32>);
                if (_r < _range_.lo) {
                    return false;
                };
                if (_r <= _range_.hi) {
                    return (_range_.stride == (1u32 : GoUInt32)) || (((_r - _range_.lo) % _range_.stride) == (0u32 : GoUInt32));
                };
            };
            return false;
        };
        var _lo:GoInt = (0 : GoInt);
        var _hi:GoInt = (_ranges.length);
        while (_lo < _hi) {
            var _m:GoInt = _lo + ((_hi - _lo) / (2 : GoInt));
            var _range_:stdgo.unicode.Unicode.Range32 = _ranges[(_m : GoInt)];
            if ((_range_.lo <= _r) && (_r <= _range_.hi)) {
                return (_range_.stride == (1u32 : GoUInt32)) || (((_r - _range_.lo) % _range_.stride) == (0u32 : GoUInt32));
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
        if ((_r16.length > (0 : GoInt)) && ((_r : GoUInt32) <= (_r16[((_r16.length) - (1 : GoInt) : GoInt)].hi : GoUInt32))) {
            return _is16(_r16, (_r : GoUInt16));
        };
        var _r32 = _rangeTab.r32;
        if ((_r32.length > (0 : GoInt)) && (_r >= (_r32[(0 : GoInt)].lo : GoRune))) {
            return _is32(_r32, (_r : GoUInt32));
        };
        return false;
    }
private function _isExcludingLatin(_rangeTab:Ref<RangeTable>, _r:GoRune):Bool {
        var _r16 = _rangeTab.r16;
        {
            var _off:GoInt = _rangeTab.latinOffset;
            if ((_r16.length > _off) && ((_r : GoUInt32) <= (_r16[((_r16.length) - (1 : GoInt) : GoInt)].hi : GoUInt32))) {
                return _is16((_r16.__slice__(_off) : Slice<stdgo.unicode.Unicode.Range16>), (_r : GoUInt16));
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
        if ((_r : GoUInt32) <= (255u32 : GoUInt32)) {
            return _properties[((_r : GoUInt8) : GoInt)] & (96 : GoUInt8) == ((32 : GoUInt8));
        };
        return _isExcludingLatin(upper, _r);
    }
/**
    // IsLower reports whether the rune is a lower case letter.
**/
function isLower(_r:GoRune):Bool {
        if ((_r : GoUInt32) <= (255u32 : GoUInt32)) {
            return _properties[((_r : GoUInt8) : GoInt)] & (96 : GoUInt8) == ((64 : GoUInt8));
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
private function _to(__case:GoInt, _r:GoRune, _caseRange:Slice<CaseRange>):{ var _0 : GoRune; var _1 : Bool; } {
        var _mappedRune:GoRune = (0 : GoInt32), _foundMapping:Bool = false;
        if ((__case < (0 : GoInt)) || ((3 : GoInt) <= __case)) {
            return { _0 : (65533 : GoInt32), _1 : false };
        };
        var _lo:GoInt = (0 : GoInt);
        var _hi:GoInt = (_caseRange.length);
        while (_lo < _hi) {
            var _m:GoInt = _lo + ((_hi - _lo) / (2 : GoInt));
            var _cr:stdgo.unicode.Unicode.CaseRange = _caseRange[(_m : GoInt)];
            if (((_cr.lo : GoRune) <= _r) && (_r <= (_cr.hi : GoRune))) {
                var _delta:GoInt32 = _cr.delta[(__case : GoInt)];
                if (_delta > (1114111 : GoInt32)) {
                    return { _0 : (_cr.lo : GoRune) + (((_r - (_cr.lo : GoRune)) & ((1 : GoInt32) ^ (-1i32 : GoInt))) | (__case & (1 : GoInt) : GoRune)), _1 : true };
                };
                return { _0 : _r + _delta, _1 : true };
            };
            if (_r < (_cr.lo : GoRune)) {
                _hi = _m;
            } else {
                _lo = _m + (1 : GoInt);
            };
        };
        return { _0 : _r, _1 : false };
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
            if (((97 : GoInt32) <= _r) && (_r <= (122 : GoInt32))) {
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
            if (((65 : GoInt32) <= _r) && (_r <= (90 : GoInt32))) {
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
            if (((97 : GoInt32) <= _r) && (_r <= (122 : GoInt32))) {
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
        if ((_r < (0 : GoInt32)) || (_r > (1114111 : GoInt32))) {
            return _r;
        };
        if ((_r : GoInt) < (_asciiFold.length)) {
            return (_asciiFold[(_r : GoInt)] : GoRune);
        };
        var _lo:GoInt = (0 : GoInt);
        var _hi:GoInt = (_caseOrbit.length);
        while (_lo < _hi) {
            var _m:GoInt = _lo + ((_hi - _lo) / (2 : GoInt));
            if ((_caseOrbit[(_m : GoInt)].from : GoRune) < _r) {
                _lo = _m + (1 : GoInt);
            } else {
                _hi = _m;
            };
        };
        if ((_lo < _caseOrbit.length) && ((_caseOrbit[(_lo : GoInt)].from : GoRune) == _r)) {
            return (_caseOrbit[(_lo : GoInt)].to : GoRune);
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
    public dynamic function toLower(_r:GoRune):GoRune return __self__.value.toLower(_r);
    /**
        // ToTitle maps the rune to title case giving priority to the special mapping.
    **/
    @:keep
    public dynamic function toTitle(_r:GoRune):GoRune return __self__.value.toTitle(_r);
    /**
        // ToUpper maps the rune to upper case giving priority to the special mapping.
    **/
    @:keep
    public dynamic function toUpper(_r:GoRune):GoRune return __self__.value.toUpper(_r);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<SpecialCase>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.unicode.Unicode.SpecialCase_asInterface) class SpecialCase_static_extension {
    /**
        // ToLower maps the rune to lower case giving priority to the special mapping.
    **/
    @:keep
    static public function toLower( _special:SpecialCase, _r:GoRune):GoRune {
        var __tmp__ = _to((1 : GoInt), _r, (_special : Slice<CaseRange>)), _r1:GoInt32 = __tmp__._0, _hadMapping:Bool = __tmp__._1;
        if ((_r1 == _r) && !_hadMapping) {
            _r1 = stdgo.unicode.Unicode.toLower(_r);
        };
        return _r1;
    }
    /**
        // ToTitle maps the rune to title case giving priority to the special mapping.
    **/
    @:keep
    static public function toTitle( _special:SpecialCase, _r:GoRune):GoRune {
        var __tmp__ = _to((2 : GoInt), _r, (_special : Slice<CaseRange>)), _r1:GoInt32 = __tmp__._0, _hadMapping:Bool = __tmp__._1;
        if ((_r1 == _r) && !_hadMapping) {
            _r1 = stdgo.unicode.Unicode.toTitle(_r);
        };
        return _r1;
    }
    /**
        // ToUpper maps the rune to upper case giving priority to the special mapping.
    **/
    @:keep
    static public function toUpper( _special:SpecialCase, _r:GoRune):GoRune {
        var __tmp__ = _to((0 : GoInt), _r, (_special : Slice<CaseRange>)), _r1:GoInt32 = __tmp__._0, _hadMapping:Bool = __tmp__._1;
        if ((_r1 == _r) && !_hadMapping) {
            _r1 = stdgo.unicode.Unicode.toUpper(_r);
        };
        return _r1;
    }
}
