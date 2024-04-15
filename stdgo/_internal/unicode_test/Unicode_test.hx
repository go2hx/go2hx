package stdgo._internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
var _testDigit : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(56, 56, ...[
(48 : stdgo.GoInt32),
(57 : stdgo.GoInt32),
(1633 : stdgo.GoInt32),
(1777 : stdgo.GoInt32),
(1993 : stdgo.GoInt32),
(2406 : stdgo.GoInt32),
(2543 : stdgo.GoInt32),
(2662 : stdgo.GoInt32),
(2799 : stdgo.GoInt32),
(2918 : stdgo.GoInt32),
(2927 : stdgo.GoInt32),
(3046 : stdgo.GoInt32),
(3055 : stdgo.GoInt32),
(3174 : stdgo.GoInt32),
(3311 : stdgo.GoInt32),
(3430 : stdgo.GoInt32),
(3439 : stdgo.GoInt32),
(3664 : stdgo.GoInt32),
(3673 : stdgo.GoInt32),
(3792 : stdgo.GoInt32),
(3801 : stdgo.GoInt32),
(3872 : stdgo.GoInt32),
(3881 : stdgo.GoInt32),
(4160 : stdgo.GoInt32),
(4169 : stdgo.GoInt32),
(4240 : stdgo.GoInt32),
(4241 : stdgo.GoInt32),
(4249 : stdgo.GoInt32),
(6112 : stdgo.GoInt32),
(6121 : stdgo.GoInt32),
(6160 : stdgo.GoInt32),
(6169 : stdgo.GoInt32),
(6470 : stdgo.GoInt32),
(6479 : stdgo.GoInt32),
(6608 : stdgo.GoInt32),
(6617 : stdgo.GoInt32),
(6992 : stdgo.GoInt32),
(7001 : stdgo.GoInt32),
(7088 : stdgo.GoInt32),
(7097 : stdgo.GoInt32),
(7232 : stdgo.GoInt32),
(7241 : stdgo.GoInt32),
(7248 : stdgo.GoInt32),
(7257 : stdgo.GoInt32),
(42528 : stdgo.GoInt32),
(42537 : stdgo.GoInt32),
(43216 : stdgo.GoInt32),
(43225 : stdgo.GoInt32),
(43264 : stdgo.GoInt32),
(43273 : stdgo.GoInt32),
(43600 : stdgo.GoInt32),
(43609 : stdgo.GoInt32),
(65296 : stdgo.GoInt32),
(65305 : stdgo.GoInt32),
(66721 : stdgo.GoInt32),
(120782 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _testLetter : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(32, 32, ...[
(65 : stdgo.GoInt32),
(97 : stdgo.GoInt32),
(170 : stdgo.GoInt32),
(186 : stdgo.GoInt32),
(200 : stdgo.GoInt32),
(219 : stdgo.GoInt32),
(249 : stdgo.GoInt32),
(748 : stdgo.GoInt32),
(1333 : stdgo.GoInt32),
(1766 : stdgo.GoInt32),
(2365 : stdgo.GoInt32),
(2581 : stdgo.GoInt32),
(2969 : stdgo.GoInt32),
(3520 : stdgo.GoInt32),
(3805 : stdgo.GoInt32),
(4096 : stdgo.GoInt32),
(4608 : stdgo.GoInt32),
(4882 : stdgo.GoInt32),
(5121 : stdgo.GoInt32),
(6277 : stdgo.GoInt32),
(11264 : stdgo.GoInt32),
(43008 : stdgo.GoInt32),
(63744 : stdgo.GoInt32),
(64048 : stdgo.GoInt32),
(65498 : stdgo.GoInt32),
(65500 : stdgo.GoInt32),
(65536 : stdgo.GoInt32),
(66304 : stdgo.GoInt32),
(66560 : stdgo.GoInt32),
(131072 : stdgo.GoInt32),
(194560 : stdgo.GoInt32),
(195101 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _upperTest : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(22, 22, ...[
(65 : stdgo.GoInt32),
(192 : stdgo.GoInt32),
(216 : stdgo.GoInt32),
(256 : stdgo.GoInt32),
(313 : stdgo.GoInt32),
(330 : stdgo.GoInt32),
(376 : stdgo.GoInt32),
(385 : stdgo.GoInt32),
(886 : stdgo.GoInt32),
(975 : stdgo.GoInt32),
(5053 : stdgo.GoInt32),
(7978 : stdgo.GoInt32),
(8450 : stdgo.GoInt32),
(11264 : stdgo.GoInt32),
(11280 : stdgo.GoInt32),
(11296 : stdgo.GoInt32),
(42576 : stdgo.GoInt32),
(42786 : stdgo.GoInt32),
(65338 : stdgo.GoInt32),
(66560 : stdgo.GoInt32),
(119808 : stdgo.GoInt32),
(120778 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _notupperTest : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(11, 11, ...[
(64 : stdgo.GoInt32),
(91 : stdgo.GoInt32),
(97 : stdgo.GoInt32),
(389 : stdgo.GoInt32),
(432 : stdgo.GoInt32),
(887 : stdgo.GoInt32),
(903 : stdgo.GoInt32),
(8528 : stdgo.GoInt32),
(43901 : stdgo.GoInt32),
(65535 : stdgo.GoInt32),
(65536 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _letterTest : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(32, 32, ...[
(65 : stdgo.GoInt32),
(97 : stdgo.GoInt32),
(170 : stdgo.GoInt32),
(186 : stdgo.GoInt32),
(200 : stdgo.GoInt32),
(219 : stdgo.GoInt32),
(249 : stdgo.GoInt32),
(748 : stdgo.GoInt32),
(1333 : stdgo.GoInt32),
(1568 : stdgo.GoInt32),
(1766 : stdgo.GoInt32),
(2365 : stdgo.GoInt32),
(2581 : stdgo.GoInt32),
(2969 : stdgo.GoInt32),
(3520 : stdgo.GoInt32),
(3805 : stdgo.GoInt32),
(4096 : stdgo.GoInt32),
(4608 : stdgo.GoInt32),
(4882 : stdgo.GoInt32),
(5121 : stdgo.GoInt32),
(11264 : stdgo.GoInt32),
(43008 : stdgo.GoInt32),
(63744 : stdgo.GoInt32),
(64048 : stdgo.GoInt32),
(65498 : stdgo.GoInt32),
(65500 : stdgo.GoInt32),
(65536 : stdgo.GoInt32),
(66304 : stdgo.GoInt32),
(66560 : stdgo.GoInt32),
(131072 : stdgo.GoInt32),
(194560 : stdgo.GoInt32),
(195101 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _notletterTest : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(9, 9, ...[(32 : stdgo.GoInt32), (53 : stdgo.GoInt32), (885 : stdgo.GoInt32), (1561 : stdgo.GoInt32), (1792 : stdgo.GoInt32), (6277 : stdgo.GoInt32), (65534 : stdgo.GoInt32), (131071 : stdgo.GoInt32), (1114111 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _spaceTest : stdgo.Slice<stdgo.GoInt32> = (new stdgo.Slice<stdgo.GoInt32>(10, 10, ...[(9 : stdgo.GoInt32), (10 : stdgo.GoInt32), (11 : stdgo.GoInt32), (12 : stdgo.GoInt32), (13 : stdgo.GoInt32), (32 : stdgo.GoInt32), (133 : stdgo.GoInt32), (160 : stdgo.GoInt32), (8192 : stdgo.GoInt32), (12288 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
var _caseTest : stdgo.Slice<stdgo._internal.unicode_test.Unicode_test.T_caseT> = (new stdgo.Slice<stdgo._internal.unicode_test.Unicode_test.T_caseT>(77, 77, ...[
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((-1 : stdgo.GoInt), (10 : stdgo.GoInt32), (65533 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (-1 : stdgo.GoInt32), (-1 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (1073741824 : stdgo.GoInt32), (1073741824 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (10 : stdgo.GoInt32), (10 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (97 : stdgo.GoInt32), (65 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (65 : stdgo.GoInt32), (65 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (55 : stdgo.GoInt32), (55 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (10 : stdgo.GoInt32), (10 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (97 : stdgo.GoInt32), (97 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (65 : stdgo.GoInt32), (97 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (55 : stdgo.GoInt32), (55 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (10 : stdgo.GoInt32), (10 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (97 : stdgo.GoInt32), (65 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (65 : stdgo.GoInt32), (65 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (55 : stdgo.GoInt32), (55 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (128 : stdgo.GoInt32), (128 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (197 : stdgo.GoInt32), (197 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (229 : stdgo.GoInt32), (197 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (128 : stdgo.GoInt32), (128 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (197 : stdgo.GoInt32), (229 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (229 : stdgo.GoInt32), (229 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (128 : stdgo.GoInt32), (128 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (197 : stdgo.GoInt32), (197 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (229 : stdgo.GoInt32), (197 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (305 : stdgo.GoInt32), (73 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (305 : stdgo.GoInt32), (305 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (305 : stdgo.GoInt32), (73 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (307 : stdgo.GoInt32), (306 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (307 : stdgo.GoInt32), (307 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (307 : stdgo.GoInt32), (306 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (8490 : stdgo.GoInt32), (8490 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (8490 : stdgo.GoInt32), (107 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (8490 : stdgo.GoInt32), (8490 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (42560 : stdgo.GoInt32), (42560 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (42560 : stdgo.GoInt32), (42561 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (42560 : stdgo.GoInt32), (42560 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (42561 : stdgo.GoInt32), (42560 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (42561 : stdgo.GoInt32), (42561 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (42561 : stdgo.GoInt32), (42560 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (42574 : stdgo.GoInt32), (42574 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (42574 : stdgo.GoInt32), (42575 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (42574 : stdgo.GoInt32), (42574 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (42591 : stdgo.GoInt32), (42590 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (42591 : stdgo.GoInt32), (42591 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (42591 : stdgo.GoInt32), (42590 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (313 : stdgo.GoInt32), (313 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (313 : stdgo.GoInt32), (314 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (313 : stdgo.GoInt32), (313 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (319 : stdgo.GoInt32), (319 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (319 : stdgo.GoInt32), (320 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (319 : stdgo.GoInt32), (319 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (328 : stdgo.GoInt32), (327 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (328 : stdgo.GoInt32), (328 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (328 : stdgo.GoInt32), (327 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (43896 : stdgo.GoInt32), (5032 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (43896 : stdgo.GoInt32), (43896 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (43896 : stdgo.GoInt32), (5032 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (5032 : stdgo.GoInt32), (5032 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (5032 : stdgo.GoInt32), (43896 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (5032 : stdgo.GoInt32), (5032 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (66560 : stdgo.GoInt32), (66560 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (66560 : stdgo.GoInt32), (66600 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (66560 : stdgo.GoInt32), (66560 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (66599 : stdgo.GoInt32), (66599 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (66599 : stdgo.GoInt32), (66639 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (66599 : stdgo.GoInt32), (66599 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (66600 : stdgo.GoInt32), (66560 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (66600 : stdgo.GoInt32), (66600 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (66600 : stdgo.GoInt32), (66560 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (66639 : stdgo.GoInt32), (66599 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (66639 : stdgo.GoInt32), (66639 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (66639 : stdgo.GoInt32), (66599 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (66640 : stdgo.GoInt32), (66640 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (66640 : stdgo.GoInt32), (66640 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((2 : stdgo.GoInt), (66640 : stdgo.GoInt32), (66640 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((1 : stdgo.GoInt), (8545 : stdgo.GoInt32), (8561 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT),
(new stdgo._internal.unicode_test.Unicode_test.T_caseT((0 : stdgo.GoInt), (837 : stdgo.GoInt32), (921 : stdgo.GoInt32)) : stdgo._internal.unicode_test.Unicode_test.T_caseT)].concat([for (i in 77 ... (77 > 77 ? 77 : 77 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode_test.Unicode_test.T_caseT)])) : stdgo.Slice<stdgo._internal.unicode_test.Unicode_test.T_caseT>);
var _simpleFoldTests : stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(9, 9, ...[("Aa" : stdgo.GoString), ("δΔ" : stdgo.GoString), ("KkK" : stdgo.GoString), ("Ssſ" : stdgo.GoString), ("ρϱΡ" : stdgo.GoString), ("ͅΙιι" : stdgo.GoString), ("İ" : stdgo.GoString), ("ı" : stdgo.GoString), ("Ꮀꮀ" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
var _calibrate : stdgo.Pointer<Bool> = stdgo._internal.flag.Flag.bool_(("calibrate" : stdgo.GoString), false, ("compute crossover for linear vs. binary search" : stdgo.GoString));
var _inCategoryTest : stdgo.Slice<stdgo._internal.unicode_test.Unicode_test.T_> = (new stdgo.Slice<stdgo._internal.unicode_test.Unicode_test.T_>(36, 36, ...[
(new stdgo._internal.unicode_test.Unicode_test.T_((129 : stdgo.GoInt32), ("Cc" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((8203 : stdgo.GoInt32), ("Cf" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((983040 : stdgo.GoInt32), ("Co" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((56192 : stdgo.GoInt32), ("Cs" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((566 : stdgo.GoInt32), ("Ll" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((7581 : stdgo.GoInt32), ("Lm" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((1999 : stdgo.GoInt32), ("Lo" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((8074 : stdgo.GoInt32), ("Lt" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((1023 : stdgo.GoInt32), ("Lu" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((3009 : stdgo.GoInt32), ("Mc" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((8415 : stdgo.GoInt32), ("Me" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((2032 : stdgo.GoInt32), ("Mn" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((7090 : stdgo.GoInt32), ("Nd" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((65863 : stdgo.GoInt32), ("Nl" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((9336 : stdgo.GoInt32), ("No" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((65075 : stdgo.GoInt32), ("Pc" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((8209 : stdgo.GoInt32), ("Pd" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((12318 : stdgo.GoInt32), ("Pe" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((11779 : stdgo.GoInt32), ("Pf" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((11778 : stdgo.GoInt32), ("Pi" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((34 : stdgo.GoInt32), ("Po" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((10096 : stdgo.GoInt32), ("Ps" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((164 : stdgo.GoInt32), ("Sc" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((42769 : stdgo.GoInt32), ("Sk" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((9721 : stdgo.GoInt32), ("Sm" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((8456 : stdgo.GoInt32), ("So" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((8232 : stdgo.GoInt32), ("Zl" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((8233 : stdgo.GoInt32), ("Zp" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((8239 : stdgo.GoInt32), ("Zs" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((1194 : stdgo.GoInt32), ("L" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((9 : stdgo.GoInt32), ("C" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((5906 : stdgo.GoInt32), ("M" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((49 : stdgo.GoInt32), ("N" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((187 : stdgo.GoInt32), ("P" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((162 : stdgo.GoInt32), ("S" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((160 : stdgo.GoInt32), ("Z" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_)].concat([for (i in 36 ... (36 > 36 ? 36 : 36 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode_test.Unicode_test.T_)])) : stdgo.Slice<stdgo._internal.unicode_test.Unicode_test.T_>);
var _inPropTest : stdgo.Slice<stdgo._internal.unicode_test.Unicode_test.T_> = (new stdgo.Slice<stdgo._internal.unicode_test.Unicode_test.T_>(35, 35, ...[
(new stdgo._internal.unicode_test.Unicode_test.T_((70 : stdgo.GoInt32), ("ASCII_Hex_Digit" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((8207 : stdgo.GoInt32), ("Bidi_Control" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((8722 : stdgo.GoInt32), ("Dash" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((917505 : stdgo.GoInt32), ("Deprecated" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((183 : stdgo.GoInt32), ("Diacritic" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((12542 : stdgo.GoInt32), ("Extender" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((65350 : stdgo.GoInt32), ("Hex_Digit" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((11799 : stdgo.GoInt32), ("Hyphen" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((12283 : stdgo.GoInt32), ("IDS_Binary_Operator" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((12275 : stdgo.GoInt32), ("IDS_Trinary_Operator" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((64106 : stdgo.GoInt32), ("Ideographic" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((8205 : stdgo.GoInt32), ("Join_Control" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((3780 : stdgo.GoInt32), ("Logical_Order_Exception" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((196607 : stdgo.GoInt32), ("Noncharacter_Code_Point" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((1630 : stdgo.GoInt32), ("Other_Alphabetic" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((8293 : stdgo.GoInt32), ("Other_Default_Ignorable_Code_Point" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((3031 : stdgo.GoInt32), ("Other_Grapheme_Extend" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((903 : stdgo.GoInt32), ("Other_ID_Continue" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((8494 : stdgo.GoInt32), ("Other_ID_Start" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((8340 : stdgo.GoInt32), ("Other_Lowercase" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((8256 : stdgo.GoInt32), ("Other_Math" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((8559 : stdgo.GoInt32), ("Other_Uppercase" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((39 : stdgo.GoInt32), ("Pattern_Syntax" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((32 : stdgo.GoInt32), ("Pattern_White_Space" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((1757 : stdgo.GoInt32), ("Prepended_Concatenation_Mark" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((12301 : stdgo.GoInt32), ("Quotation_Mark" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((12019 : stdgo.GoInt32), ("Radical" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((127487 : stdgo.GoInt32), ("Regional_Indicator" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((1567 : stdgo.GoInt32), ("STerm" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((1567 : stdgo.GoInt32), ("Sentence_Terminal" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((8305 : stdgo.GoInt32), ("Soft_Dotted" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((58 : stdgo.GoInt32), ("Terminal_Punctuation" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((40899 : stdgo.GoInt32), ("Unified_Ideograph" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((65039 : stdgo.GoInt32), ("Variation_Selector" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_),
(new stdgo._internal.unicode_test.Unicode_test.T_((32 : stdgo.GoInt32), ("White_Space" : stdgo.GoString)) : stdgo._internal.unicode_test.Unicode_test.T_)].concat([for (i in 35 ... (35 > 35 ? 35 : 35 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode_test.Unicode_test.T_)])) : stdgo.Slice<stdgo._internal.unicode_test.Unicode_test.T_>);
@:structInit @:private class T_caseT {
    public var _cas : stdgo.GoInt = 0;
    public var _in : stdgo.GoInt32 = 0;
    public var _out : stdgo.GoInt32 = 0;
    public function new(?_cas:stdgo.GoInt, ?_in:stdgo.GoInt32, ?_out:stdgo.GoInt32) {
        if (_cas != null) this._cas = _cas;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_caseT(_cas, _in, _out);
    }
}
@:structInit class T_ {
    public var _rune : stdgo.GoInt32 = 0;
    public var _script : stdgo.GoString = "";
    public function new(?_rune:stdgo.GoInt32, ?_script:stdgo.GoString) {
        if (_rune != null) this._rune = _rune;
        if (_script != null) this._script = _script;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_(_rune, _script);
    }
}
function testDigit(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _r in _testDigit) {
            if (!isDigit(_r)) {
                _t.errorf(("IsDigit(U+%04X) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
        for (__9 => _r in _testLetter) {
            if (isDigit(_r)) {
                _t.errorf(("IsDigit(U+%04X) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
    }
function testDigitOptimization(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_i <= (255 : stdgo.GoInt32) : Bool), _i++, {
                if (is_(digit, _i) != (isDigit(_i))) {
                    _t.errorf(("IsDigit(U+%04X) disagrees with Is(Digit)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            });
        };
    }
function example_is():Void {
        {};
        for (__0 => _c in ("\x085Ὂg̀9! ℃ᾭG" : stdgo.GoString)) {
            stdgo._internal.fmt.Fmt.printf(("For %q:\n" : stdgo.GoString), stdgo.Go.toInterface(_c));
            if (stdgo._internal.unicode.Unicode.isControl(_c)) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis control rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode.isDigit(_c)) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis digit rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode.isGraphic(_c)) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis graphic rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode.isLetter(_c)) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis letter rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode.isLower(_c)) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis lower case rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode.isMark(_c)) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis mark rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode.isNumber(_c)) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis number rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode.isPrint(_c)) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis printable rune" : stdgo.GoString)));
            };
            if (!stdgo._internal.unicode.Unicode.isPrint(_c)) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis not printable rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode.isPunct(_c)) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis punct rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode.isSpace(_c)) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis space rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode.isSymbol(_c)) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis symbol rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode.isTitle(_c)) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis title case rune" : stdgo.GoString)));
            };
            if (stdgo._internal.unicode.Unicode.isUpper(_c)) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("\tis upper case rune" : stdgo.GoString)));
            };
        };
    }
function exampleSimpleFold():Void {
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.simpleFold((65 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.simpleFold((97 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.simpleFold((75 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.simpleFold((107 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.simpleFold((8490 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.simpleFold((49 : stdgo.GoInt32))));
    }
function exampleTo():Void {
        {};
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.to((0 : stdgo.GoInt), (103 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.to((1 : stdgo.GoInt), (103 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.to((2 : stdgo.GoInt), (103 : stdgo.GoInt32))));
        {};
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.to((0 : stdgo.GoInt), (71 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.to((1 : stdgo.GoInt), (71 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.to((2 : stdgo.GoInt), (71 : stdgo.GoInt32))));
    }
function exampleToLower():Void {
        {};
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.toLower((71 : stdgo.GoInt32))));
    }
function exampleToTitle():Void {
        {};
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.toTitle((103 : stdgo.GoInt32))));
    }
function exampleToUpper():Void {
        {};
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.toUpper((103 : stdgo.GoInt32))));
    }
function exampleSpecialCase():Void {
        var _t:stdgo._internal.unicode.Unicode.SpecialCase = stdgo._internal.unicode.Unicode.turkishCase;
        {};
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(_t.toLower((105 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(_t.toTitle((105 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(_t.toUpper((105 : stdgo.GoInt32))));
        {};
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(_t.toLower((304 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(_t.toTitle((304 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%#U\n" : stdgo.GoString), stdgo.Go.toInterface(_t.toUpper((304 : stdgo.GoInt32))));
    }
function exampleIsDigit():Void {
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isDigit((2537 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isDigit((65 : stdgo.GoInt32))));
    }
function exampleIsNumber():Void {
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isNumber((8551 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isNumber((65 : stdgo.GoInt32))));
    }
function exampleIsLetter():Void {
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isLetter((65 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isLetter((55 : stdgo.GoInt32))));
    }
function exampleIsLower():Void {
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isLower((97 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isLower((65 : stdgo.GoInt32))));
    }
function exampleIsUpper():Void {
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isUpper((65 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isUpper((97 : stdgo.GoInt32))));
    }
function exampleIsTitle():Void {
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isTitle((453 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isTitle((97 : stdgo.GoInt32))));
    }
function exampleIsSpace():Void {
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isSpace((32 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isSpace((10 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isSpace((9 : stdgo.GoInt32))));
        stdgo._internal.fmt.Fmt.printf(("%t\n" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode.isSpace((97 : stdgo.GoInt32))));
    }
function testIsControlLatin1(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_i <= (255 : stdgo.GoInt32) : Bool), _i++, {
                var _got:Bool = isControl(_i);
                var _want:Bool = false;
                if ((((0 : stdgo.GoInt32) <= _i : Bool) && (_i <= (31 : stdgo.GoInt32) : Bool) : Bool)) {
                    _want = true;
                } else if ((((127 : stdgo.GoInt32) <= _i : Bool) && (_i <= (159 : stdgo.GoInt32) : Bool) : Bool)) {
                    _want = true;
                };
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            });
        };
    }
function testIsLetterLatin1(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_i <= (255 : stdgo.GoInt32) : Bool), _i++, {
                var _got:Bool = isLetter(_i);
                var _want:Bool = is_(letter, _i);
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            });
        };
    }
function testIsUpperLatin1(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_i <= (255 : stdgo.GoInt32) : Bool), _i++, {
                var _got:Bool = isUpper(_i);
                var _want:Bool = is_(upper, _i);
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            });
        };
    }
function testIsLowerLatin1(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_i <= (255 : stdgo.GoInt32) : Bool), _i++, {
                var _got:Bool = isLower(_i);
                var _want:Bool = is_(lower, _i);
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            });
        };
    }
function testNumberLatin1(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_i <= (255 : stdgo.GoInt32) : Bool), _i++, {
                var _got:Bool = isNumber(_i);
                var _want:Bool = is_(number, _i);
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            });
        };
    }
function testIsPrintLatin1(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_i <= (255 : stdgo.GoInt32) : Bool), _i++, {
                var _got:Bool = isPrint(_i);
                var _want:Bool = in_(_i, ...(printRanges : Array<stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>));
                if (_i == ((32 : stdgo.GoInt32))) {
                    _want = true;
                };
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            });
        };
    }
function testIsGraphicLatin1(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_i <= (255 : stdgo.GoInt32) : Bool), _i++, {
                var _got:Bool = isGraphic(_i);
                var _want:Bool = in_(_i, ...(graphicRanges : Array<stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>));
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            });
        };
    }
function testIsPunctLatin1(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_i <= (255 : stdgo.GoInt32) : Bool), _i++, {
                var _got:Bool = isPunct(_i);
                var _want:Bool = is_(punct, _i);
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            });
        };
    }
function testIsSpaceLatin1(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_i <= (255 : stdgo.GoInt32) : Bool), _i++, {
                var _got:Bool = isSpace(_i);
                var _want:Bool = is_(white_Space, _i);
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            });
        };
    }
function testIsSymbolLatin1(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_i <= (255 : stdgo.GoInt32) : Bool), _i++, {
                var _got:Bool = isSymbol(_i);
                var _want:Bool = is_(symbol, _i);
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                };
            });
        };
    }
function testIsLetter(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _r in _upperTest) {
            if (!isLetter(_r)) {
                _t.errorf(("IsLetter(U+%04X) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
        for (__9 => _r in _letterTest) {
            if (!isLetter(_r)) {
                _t.errorf(("IsLetter(U+%04X) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
        for (__18 => _r in _notletterTest) {
            if (isLetter(_r)) {
                _t.errorf(("IsLetter(U+%04X) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
    }
function testIsUpper(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _r in _upperTest) {
            if (!isUpper(_r)) {
                _t.errorf(("IsUpper(U+%04X) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
        for (__9 => _r in _notupperTest) {
            if (isUpper(_r)) {
                _t.errorf(("IsUpper(U+%04X) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
        for (__18 => _r in _notletterTest) {
            if (isUpper(_r)) {
                _t.errorf(("IsUpper(U+%04X) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
    }
function _caseString(_c:stdgo.GoInt):stdgo.GoString {
        {
            final __value__ = _c;
            if (__value__ == ((0 : stdgo.GoInt))) {
                return ("UpperCase" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return ("LowerCase" : stdgo.GoString);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                return ("TitleCase" : stdgo.GoString);
            };
        };
        return ("ErrorCase" : stdgo.GoString);
    }
function testTo(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _c in _caseTest) {
            var _r:stdgo.GoInt32 = to(_c._cas, _c._in);
            if (_c._out != (_r)) {
                _t.errorf(("To(U+%04X, %s) = U+%04X want U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_c._in), stdgo.Go.toInterface(_caseString(_c._cas)), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_c._out));
            };
        };
    }
function testToUpperCase(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _c in _caseTest) {
            if (_c._cas != ((0 : stdgo.GoInt))) {
                continue;
            };
            var _r:stdgo.GoInt32 = toUpper(_c._in);
            if (_c._out != (_r)) {
                _t.errorf(("ToUpper(U+%04X) = U+%04X want U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_c._in), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_c._out));
            };
        };
    }
function testToLowerCase(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _c in _caseTest) {
            if (_c._cas != ((1 : stdgo.GoInt))) {
                continue;
            };
            var _r:stdgo.GoInt32 = toLower(_c._in);
            if (_c._out != (_r)) {
                _t.errorf(("ToLower(U+%04X) = U+%04X want U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_c._in), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_c._out));
            };
        };
    }
function testToTitleCase(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _c in _caseTest) {
            if (_c._cas != ((2 : stdgo.GoInt))) {
                continue;
            };
            var _r:stdgo.GoInt32 = toTitle(_c._in);
            if (_c._out != (_r)) {
                _t.errorf(("ToTitle(U+%04X) = U+%04X want U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_c._in), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_c._out));
            };
        };
    }
function testIsSpace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _c in _spaceTest) {
            if (!isSpace(_c)) {
                _t.errorf(("IsSpace(U+%04X) = false; want true" : stdgo.GoString), stdgo.Go.toInterface(_c));
            };
        };
        for (__9 => _c in _letterTest) {
            if (isSpace(_c)) {
                _t.errorf(("IsSpace(U+%04X) = true; want false" : stdgo.GoString), stdgo.Go.toInterface(_c));
            };
        };
    }
function testLetterOptimizations(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i:stdgo.GoInt32 = ((0 : stdgo.GoInt32) : stdgo.GoRune);
            stdgo.Go.cfor((_i <= (255 : stdgo.GoInt32) : Bool), _i++, {
                if (is_(letter, _i) != (isLetter(_i))) {
                    _t.errorf(("IsLetter(U+%04X) disagrees with Is(Letter)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (is_(upper, _i) != (isUpper(_i))) {
                    _t.errorf(("IsUpper(U+%04X) disagrees with Is(Upper)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (is_(lower, _i) != (isLower(_i))) {
                    _t.errorf(("IsLower(U+%04X) disagrees with Is(Lower)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (is_(title, _i) != (isTitle(_i))) {
                    _t.errorf(("IsTitle(U+%04X) disagrees with Is(Title)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (is_(white_Space, _i) != (isSpace(_i))) {
                    _t.errorf(("IsSpace(U+%04X) disagrees with Is(White_Space)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (to((0 : stdgo.GoInt), _i) != (toUpper(_i))) {
                    _t.errorf(("ToUpper(U+%04X) disagrees with To(Upper)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (to((1 : stdgo.GoInt), _i) != (toLower(_i))) {
                    _t.errorf(("ToLower(U+%04X) disagrees with To(Lower)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (to((2 : stdgo.GoInt), _i) != (toTitle(_i))) {
                    _t.errorf(("ToTitle(U+%04X) disagrees with To(Title)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            });
        };
    }
function testTurkishCase(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _lower = (("abcçdefgğhıijklmnoöprsştuüvyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoRune>);
        var _upper = (("ABCÇDEFGĞHIİJKLMNOÖPRSŞTUÜVYZ" : stdgo.GoString) : stdgo.Slice<stdgo.GoRune>);
        for (_i => _l in _lower) {
            var _u:stdgo.GoInt32 = _upper[(_i : stdgo.GoInt)];
            if (turkishCase.toLower(_l) != (_l)) {
                _t.errorf(("lower(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(turkishCase.toLower(_l)), stdgo.Go.toInterface(_l));
            };
            if (turkishCase.toUpper(_u) != (_u)) {
                _t.errorf(("upper(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(turkishCase.toUpper(_u)), stdgo.Go.toInterface(_u));
            };
            if (turkishCase.toUpper(_l) != (_u)) {
                _t.errorf(("upper(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(turkishCase.toUpper(_l)), stdgo.Go.toInterface(_u));
            };
            if (turkishCase.toLower(_u) != (_l)) {
                _t.errorf(("lower(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(turkishCase.toLower(_l)), stdgo.Go.toInterface(_l));
            };
            if (turkishCase.toTitle(_u) != (_u)) {
                _t.errorf(("title(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(turkishCase.toTitle(_u)), stdgo.Go.toInterface(_u));
            };
            if (turkishCase.toTitle(_l) != (_u)) {
                _t.errorf(("title(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(turkishCase.toTitle(_l)), stdgo.Go.toInterface(_u));
            };
        };
    }
function testSimpleFold(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        for (__0 => _tt in _simpleFoldTests) {
            var _cycle = (_tt : stdgo.Slice<stdgo.GoRune>);
            var _r:stdgo.GoInt32 = _cycle[((_cycle.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
            for (__1 => _out in _cycle) {
                {
                    var _r:stdgo.GoInt32 = simpleFold(_r);
                    if (_r != (_out)) {
                        _t.errorf(("SimpleFold(%#U) = %#U, want %#U" : stdgo.GoString), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_out));
                    };
                };
                _r = _out;
            };
        };
        {
            var _r:stdgo.GoInt32 = simpleFold((-42 : stdgo.GoInt32));
            if (_r != ((-42 : stdgo.GoInt32))) {
                _t.errorf(("SimpleFold(-42) = %v, want -42" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
    }
function testCalibrate(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        if (!_calibrate.value) {
            return;
        };
        if (false) {
            stdgo._internal.fmt.Fmt.printf(("warning: running calibration on %s\n" : stdgo.GoString), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
        var _n:stdgo.GoInt = stdgo._internal.sort.Sort.search((64 : stdgo.GoInt), function(_n:stdgo.GoInt):Bool {
            var _tab = _fakeTable(_n);
            var _blinear = function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                var _tab = _tab;
                var _max:stdgo.GoInt = ((_n * (5 : stdgo.GoInt) : stdgo.GoInt) + (20 : stdgo.GoInt) : stdgo.GoInt);
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        {
                            var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j <= _max : Bool), _j++, {
                                _linear(_tab, (_j : stdgo.GoUInt16));
                            });
                        };
                    });
                };
            };
            var _bbinary = function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                var _tab = _tab;
                var _max:stdgo.GoInt = ((_n * (5 : stdgo.GoInt) : stdgo.GoInt) + (20 : stdgo.GoInt) : stdgo.GoInt);
                {
                    var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        {
                            var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j <= _max : Bool), _j++, {
                                _binary(_tab, (_j : stdgo.GoUInt16));
                            });
                        };
                    });
                };
            };
            var _bmlinear:stdgo._internal.testing.Testing.BenchmarkResult = stdgo._internal.testing.Testing.benchmark(_blinear)?.__copy__();
            var _bmbinary:stdgo._internal.testing.Testing.BenchmarkResult = stdgo._internal.testing.Testing.benchmark(_bbinary)?.__copy__();
            stdgo._internal.fmt.Fmt.printf(("n=%d: linear=%d binary=%d\n" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_bmlinear.nsPerOp()), stdgo.Go.toInterface(_bmbinary.nsPerOp()));
            return ((_bmlinear.nsPerOp() * (100i64 : stdgo.GoInt64) : stdgo.GoInt64) > (_bmbinary.nsPerOp() * (110i64 : stdgo.GoInt64) : stdgo.GoInt64) : Bool);
        });
        stdgo._internal.fmt.Fmt.printf(("calibration: linear cutoff = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_n));
    }
function _fakeTable(_n:stdgo.GoInt):stdgo.Slice<Range16> {
        var _r16:stdgo.Slice<Range16> = (null : stdgo.Slice<stdgo._internal.unicode.Unicode.Range16>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _r16 = (_r16.__append__((new stdgo._internal.unicode.Unicode.Range16((((_i * (5 : stdgo.GoInt) : stdgo.GoInt) + (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16), (((_i * (5 : stdgo.GoInt) : stdgo.GoInt) + (12 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt16), (1 : stdgo.GoUInt16)) : stdgo._internal.unicode.Unicode.Range16)));
            });
        };
        return _r16;
    }
function _linear(_ranges:stdgo.Slice<Range16>, _r:stdgo.GoUInt16):Bool {
        for (_i => _ in _ranges) {
            var _range_ = (stdgo.Go.setRef(_ranges[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.unicode.Unicode.Range16>);
            if ((_r < _range_.lo : Bool)) {
                return false;
            };
            if ((_r <= _range_.hi : Bool)) {
                return (((_r - _range_.lo : stdgo.GoUInt16)) % _range_.stride : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
            };
        };
        return false;
    }
function _binary(_ranges:stdgo.Slice<Range16>, _r:stdgo.GoUInt16):Bool {
        var _lo:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hi:stdgo.GoInt = (_ranges.length);
        while ((_lo < _hi : Bool)) {
            var _m:stdgo.GoInt = (_lo + (((_hi - _lo : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            var _range_ = (stdgo.Go.setRef(_ranges[(_m : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.unicode.Unicode.Range16>);
            if (((_range_.lo <= _r : Bool) && (_r <= _range_.hi : Bool) : Bool)) {
                return (((_r - _range_.lo : stdgo.GoUInt16)) % _range_.stride : stdgo.GoUInt16) == ((0 : stdgo.GoUInt16));
            };
            if ((_r < _range_.lo : Bool)) {
                _hi = _m;
            } else {
                _lo = (_m + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        return false;
    }
function testLatinOffset(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _maps:stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>> = (new stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>>(5, 5, ...[categories, foldCategory, foldScript, properties, scripts]) : stdgo.Slice<stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>>>);
        for (__0 => _m in _maps) {
            for (_name => _tab in _m) {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                while (((_i < (_tab.r16.length) : Bool) && (_tab.r16[(_i : stdgo.GoInt)].hi <= (255 : stdgo.GoUInt16) : Bool) : Bool)) {
                    _i++;
                };
                if (_tab.latinOffset != (_i)) {
                    _t.errorf(("%s: LatinOffset=%d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_tab.latinOffset), stdgo.Go.toInterface(_i));
                };
            };
        };
    }
function testSpecialCaseNoMapping(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _noChangeForCapitalA:stdgo._internal.unicode.Unicode.CaseRange = (new stdgo._internal.unicode.Unicode.CaseRange((65u32 : stdgo.GoUInt32), (65u32 : stdgo.GoUInt32), (new stdgo.GoArray<stdgo.GoInt32>(3, 3, ...[(0 : stdgo.GoInt32), (0 : stdgo.GoInt32), (0 : stdgo.GoInt32)]).__setNumber32__() : stdgo.GoArray<stdgo.GoInt32>)?.__copy__()) : stdgo._internal.unicode.Unicode.CaseRange);
        var _got:stdgo.GoString = stdgo._internal.strings.Strings.toLowerSpecial(((new stdgo.Slice<stdgo._internal.unicode.Unicode.CaseRange>(1, 1, ...[_noChangeForCapitalA?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.unicode.Unicode.CaseRange)])) : stdgo.Slice<stdgo._internal.unicode.Unicode.CaseRange>) : SpecialCase), ("ABC" : stdgo.GoString))?.__copy__();
        var _want:stdgo.GoString = ("Abc" : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
    }
function testNegativeRune(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _nonLatin1 = (new stdgo.Slice<stdgo.GoUInt32>(8, 8, ...[(256u32 : stdgo.GoUInt32), (257u32 : stdgo.GoUInt32), (453u32 : stdgo.GoUInt32), (768u32 : stdgo.GoUInt32), (1632u32 : stdgo.GoUInt32), (894u32 : stdgo.GoUInt32), (706u32 : stdgo.GoUInt32), (5760u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < ((255 : stdgo.GoInt) + (_nonLatin1.length) : stdgo.GoInt) : Bool), _i++, {
                var _base:stdgo.GoUInt32 = (_i : stdgo.GoUInt32);
                if ((_i >= (255 : stdgo.GoInt) : Bool)) {
                    _base = _nonLatin1[(_i - (255 : stdgo.GoInt) : stdgo.GoInt)];
                };
                var _r:stdgo.GoInt32 = ((_base - (-2147483648u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoRune);
                if (is_(letter, _r)) {
                    _t.errorf(("Is(Letter, 0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (isControl(_r)) {
                    _t.errorf(("IsControl(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (isDigit(_r)) {
                    _t.errorf(("IsDigit(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (isGraphic(_r)) {
                    _t.errorf(("IsGraphic(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (isLetter(_r)) {
                    _t.errorf(("IsLetter(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (isLower(_r)) {
                    _t.errorf(("IsLower(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (isMark(_r)) {
                    _t.errorf(("IsMark(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (isNumber(_r)) {
                    _t.errorf(("IsNumber(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (isPrint(_r)) {
                    _t.errorf(("IsPrint(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (isPunct(_r)) {
                    _t.errorf(("IsPunct(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (isSpace(_r)) {
                    _t.errorf(("IsSpace(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (isSymbol(_r)) {
                    _t.errorf(("IsSymbol(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (isTitle(_r)) {
                    _t.errorf(("IsTitle(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
                if (isUpper(_r)) {
                    _t.errorf(("IsUpper(0x%x - 1<<31) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_base));
                };
            });
        };
    }
function testCategories(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _notTested = ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>);
        for (_k => _ in categories) {
            _notTested[_k] = true;
        };
        for (__0 => _test in _inCategoryTest) {
            {
                var __tmp__ = (categories != null && categories.exists(_test._script?.__copy__()) ? { _0 : categories[_test._script?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>), _1 : false }), __1:stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    _t.fatal(stdgo.Go.toInterface(_test._script), stdgo.Go.toInterface(("not a known category" : stdgo.GoString)));
                };
            };
            if (!is_((categories[_test._script] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>)), _test._rune)) {
                _t.errorf(("IsCategory(%U, %s) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_test._rune), stdgo.Go.toInterface(_test._script));
            };
            if (_notTested != null) _notTested.remove(_test._script);
        };
        for (_k => _ in _notTested) {
            _t.error(stdgo.Go.toInterface(("category not tested:" : stdgo.GoString)), stdgo.Go.toInterface(_k));
        };
    }
function testProperties(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _notTested = ({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            @:mergeBlock {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>);
        for (_k => _ in properties) {
            _notTested[_k] = true;
        };
        for (__0 => _test in _inPropTest) {
            {
                var __tmp__ = (properties != null && properties.exists(_test._script?.__copy__()) ? { _0 : properties[_test._script?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>), _1 : false }), __1:stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    _t.fatal(stdgo.Go.toInterface(_test._script), stdgo.Go.toInterface(("not a known prop" : stdgo.GoString)));
                };
            };
            if (!is_((properties[_test._script] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode.RangeTable>)), _test._rune)) {
                _t.errorf(("IsCategory(%U, %s) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_test._rune), stdgo.Go.toInterface(_test._script));
            };
            if (_notTested != null) _notTested.remove(_test._script);
        };
        for (_k => _ in _notTested) {
            _t.error(stdgo.Go.toInterface(("property not tested:" : stdgo.GoString)), stdgo.Go.toInterface(_k));
        };
    }
