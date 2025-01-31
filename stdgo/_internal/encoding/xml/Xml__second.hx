package stdgo._internal.encoding.xml;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
var _second : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable> = (stdgo.Go.setRef(({ r16 : (new stdgo.Slice<stdgo._internal.unicode.Unicode_Range16.Range16>(112, 112, ...[
(new stdgo._internal.unicode.Unicode_Range16.Range16((45 : stdgo.GoUInt16), (46 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((48 : stdgo.GoUInt16), (57 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((183 : stdgo.GoUInt16), (183 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((720 : stdgo.GoUInt16), (721 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((768 : stdgo.GoUInt16), (837 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((864 : stdgo.GoUInt16), (865 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((903 : stdgo.GoUInt16), (903 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((1155 : stdgo.GoUInt16), (1158 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((1425 : stdgo.GoUInt16), (1441 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((1443 : stdgo.GoUInt16), (1465 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((1467 : stdgo.GoUInt16), (1469 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((1471 : stdgo.GoUInt16), (1471 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((1473 : stdgo.GoUInt16), (1474 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((1476 : stdgo.GoUInt16), (1600 : stdgo.GoUInt16), (124 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((1611 : stdgo.GoUInt16), (1618 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((1632 : stdgo.GoUInt16), (1641 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((1648 : stdgo.GoUInt16), (1648 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((1750 : stdgo.GoUInt16), (1756 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((1757 : stdgo.GoUInt16), (1759 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((1760 : stdgo.GoUInt16), (1764 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((1767 : stdgo.GoUInt16), (1768 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((1770 : stdgo.GoUInt16), (1773 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((1776 : stdgo.GoUInt16), (1785 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2305 : stdgo.GoUInt16), (2307 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2364 : stdgo.GoUInt16), (2364 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2366 : stdgo.GoUInt16), (2380 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2381 : stdgo.GoUInt16), (2381 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2385 : stdgo.GoUInt16), (2388 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2402 : stdgo.GoUInt16), (2403 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2406 : stdgo.GoUInt16), (2415 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2433 : stdgo.GoUInt16), (2435 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2492 : stdgo.GoUInt16), (2492 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2494 : stdgo.GoUInt16), (2495 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2496 : stdgo.GoUInt16), (2500 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2503 : stdgo.GoUInt16), (2504 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2507 : stdgo.GoUInt16), (2509 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2519 : stdgo.GoUInt16), (2519 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2530 : stdgo.GoUInt16), (2531 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2534 : stdgo.GoUInt16), (2543 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2562 : stdgo.GoUInt16), (2620 : stdgo.GoUInt16), (58 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2622 : stdgo.GoUInt16), (2623 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2624 : stdgo.GoUInt16), (2626 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2631 : stdgo.GoUInt16), (2632 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2635 : stdgo.GoUInt16), (2637 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2662 : stdgo.GoUInt16), (2671 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2672 : stdgo.GoUInt16), (2673 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2689 : stdgo.GoUInt16), (2691 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2748 : stdgo.GoUInt16), (2748 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2750 : stdgo.GoUInt16), (2757 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2759 : stdgo.GoUInt16), (2761 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2763 : stdgo.GoUInt16), (2765 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2790 : stdgo.GoUInt16), (2799 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2817 : stdgo.GoUInt16), (2819 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2876 : stdgo.GoUInt16), (2876 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2878 : stdgo.GoUInt16), (2883 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2887 : stdgo.GoUInt16), (2888 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2891 : stdgo.GoUInt16), (2893 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2902 : stdgo.GoUInt16), (2903 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2918 : stdgo.GoUInt16), (2927 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((2946 : stdgo.GoUInt16), (2947 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3006 : stdgo.GoUInt16), (3010 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3014 : stdgo.GoUInt16), (3016 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3018 : stdgo.GoUInt16), (3021 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3031 : stdgo.GoUInt16), (3031 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3047 : stdgo.GoUInt16), (3055 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3073 : stdgo.GoUInt16), (3075 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3134 : stdgo.GoUInt16), (3140 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3142 : stdgo.GoUInt16), (3144 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3146 : stdgo.GoUInt16), (3149 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3157 : stdgo.GoUInt16), (3158 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3174 : stdgo.GoUInt16), (3183 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3202 : stdgo.GoUInt16), (3203 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3262 : stdgo.GoUInt16), (3268 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3270 : stdgo.GoUInt16), (3272 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3274 : stdgo.GoUInt16), (3277 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3285 : stdgo.GoUInt16), (3286 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3302 : stdgo.GoUInt16), (3311 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3330 : stdgo.GoUInt16), (3331 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3390 : stdgo.GoUInt16), (3395 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3398 : stdgo.GoUInt16), (3400 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3402 : stdgo.GoUInt16), (3405 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3415 : stdgo.GoUInt16), (3415 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3430 : stdgo.GoUInt16), (3439 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3633 : stdgo.GoUInt16), (3633 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3636 : stdgo.GoUInt16), (3642 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3654 : stdgo.GoUInt16), (3654 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3655 : stdgo.GoUInt16), (3662 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3664 : stdgo.GoUInt16), (3673 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3761 : stdgo.GoUInt16), (3761 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3764 : stdgo.GoUInt16), (3769 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3771 : stdgo.GoUInt16), (3772 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3782 : stdgo.GoUInt16), (3782 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3784 : stdgo.GoUInt16), (3789 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3792 : stdgo.GoUInt16), (3801 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3864 : stdgo.GoUInt16), (3865 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3872 : stdgo.GoUInt16), (3881 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3893 : stdgo.GoUInt16), (3897 : stdgo.GoUInt16), (2 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3902 : stdgo.GoUInt16), (3903 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3953 : stdgo.GoUInt16), (3972 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3974 : stdgo.GoUInt16), (3979 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3984 : stdgo.GoUInt16), (3989 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3991 : stdgo.GoUInt16), (3991 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((3993 : stdgo.GoUInt16), (4013 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((4017 : stdgo.GoUInt16), (4023 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((4025 : stdgo.GoUInt16), (4025 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((8400 : stdgo.GoUInt16), (8412 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((8417 : stdgo.GoUInt16), (12293 : stdgo.GoUInt16), (3876 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((12330 : stdgo.GoUInt16), (12335 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((12337 : stdgo.GoUInt16), (12341 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((12441 : stdgo.GoUInt16), (12442 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((12445 : stdgo.GoUInt16), (12446 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16),
(new stdgo._internal.unicode.Unicode_Range16.Range16((12540 : stdgo.GoUInt16), (12542 : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode_Range16.Range16)].concat([for (i in 112 ... (112 > 112 ? 112 : 112 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode.Unicode_Range16.Range16)])) : stdgo.Slice<stdgo._internal.unicode.Unicode_Range16.Range16>) } : stdgo._internal.unicode.Unicode_RangeTable.RangeTable)) : stdgo.Ref<stdgo._internal.unicode.Unicode_RangeTable.RangeTable>);
