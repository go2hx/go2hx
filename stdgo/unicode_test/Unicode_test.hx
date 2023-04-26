package stdgo.unicode_test;
import stdgo.unicode.Unicode;
import stdgo.unicode.Unicode;
import stdgo.unicode.Unicode;
import stdgo.unicode.Unicode;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
import stdgo.unicode.Unicode;
/**
    
    
    
**/
private var _testDigit = (new Slice<GoInt32>(
56,
56,
(48 : GoInt32),
(57 : GoInt32),
(1633 : GoInt32),
(1777 : GoInt32),
(1993 : GoInt32),
(2406 : GoInt32),
(2543 : GoInt32),
(2662 : GoInt32),
(2799 : GoInt32),
(2918 : GoInt32),
(2927 : GoInt32),
(3046 : GoInt32),
(3055 : GoInt32),
(3174 : GoInt32),
(3311 : GoInt32),
(3430 : GoInt32),
(3439 : GoInt32),
(3664 : GoInt32),
(3673 : GoInt32),
(3792 : GoInt32),
(3801 : GoInt32),
(3872 : GoInt32),
(3881 : GoInt32),
(4160 : GoInt32),
(4169 : GoInt32),
(4240 : GoInt32),
(4241 : GoInt32),
(4249 : GoInt32),
(6112 : GoInt32),
(6121 : GoInt32),
(6160 : GoInt32),
(6169 : GoInt32),
(6470 : GoInt32),
(6479 : GoInt32),
(6608 : GoInt32),
(6617 : GoInt32),
(6992 : GoInt32),
(7001 : GoInt32),
(7088 : GoInt32),
(7097 : GoInt32),
(7232 : GoInt32),
(7241 : GoInt32),
(7248 : GoInt32),
(7257 : GoInt32),
(42528 : GoInt32),
(42537 : GoInt32),
(43216 : GoInt32),
(43225 : GoInt32),
(43264 : GoInt32),
(43273 : GoInt32),
(43600 : GoInt32),
(43609 : GoInt32),
(65296 : GoInt32),
(65305 : GoInt32),
(66721 : GoInt32),
(120782 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _testLetter = (new Slice<GoInt32>(
32,
32,
(65 : GoInt32),
(97 : GoInt32),
(170 : GoInt32),
(186 : GoInt32),
(200 : GoInt32),
(219 : GoInt32),
(249 : GoInt32),
(748 : GoInt32),
(1333 : GoInt32),
(1766 : GoInt32),
(2365 : GoInt32),
(2581 : GoInt32),
(2969 : GoInt32),
(3520 : GoInt32),
(3805 : GoInt32),
(4096 : GoInt32),
(4608 : GoInt32),
(4882 : GoInt32),
(5121 : GoInt32),
(6277 : GoInt32),
(11264 : GoInt32),
(43008 : GoInt32),
(63744 : GoInt32),
(64048 : GoInt32),
(65498 : GoInt32),
(65500 : GoInt32),
(65536 : GoInt32),
(66304 : GoInt32),
(66560 : GoInt32),
(131072 : GoInt32),
(194560 : GoInt32),
(195101 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _upperTest = (new Slice<GoInt32>(
22,
22,
(65 : GoInt32),
(192 : GoInt32),
(216 : GoInt32),
(256 : GoInt32),
(313 : GoInt32),
(330 : GoInt32),
(376 : GoInt32),
(385 : GoInt32),
(886 : GoInt32),
(975 : GoInt32),
(5053 : GoInt32),
(7978 : GoInt32),
(8450 : GoInt32),
(11264 : GoInt32),
(11280 : GoInt32),
(11296 : GoInt32),
(42576 : GoInt32),
(42786 : GoInt32),
(65338 : GoInt32),
(66560 : GoInt32),
(119808 : GoInt32),
(120778 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _notupperTest = (new Slice<GoInt32>(
11,
11,
(64 : GoInt32),
(91 : GoInt32),
(97 : GoInt32),
(389 : GoInt32),
(432 : GoInt32),
(887 : GoInt32),
(903 : GoInt32),
(8528 : GoInt32),
(43901 : GoInt32),
(65535 : GoInt32),
(65536 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _letterTest = (new Slice<GoInt32>(
32,
32,
(65 : GoInt32),
(97 : GoInt32),
(170 : GoInt32),
(186 : GoInt32),
(200 : GoInt32),
(219 : GoInt32),
(249 : GoInt32),
(748 : GoInt32),
(1333 : GoInt32),
(1568 : GoInt32),
(1766 : GoInt32),
(2365 : GoInt32),
(2581 : GoInt32),
(2969 : GoInt32),
(3520 : GoInt32),
(3805 : GoInt32),
(4096 : GoInt32),
(4608 : GoInt32),
(4882 : GoInt32),
(5121 : GoInt32),
(11264 : GoInt32),
(43008 : GoInt32),
(63744 : GoInt32),
(64048 : GoInt32),
(65498 : GoInt32),
(65500 : GoInt32),
(65536 : GoInt32),
(66304 : GoInt32),
(66560 : GoInt32),
(131072 : GoInt32),
(194560 : GoInt32),
(195101 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _notletterTest = (new Slice<GoInt32>(
9,
9,
(32 : GoInt32),
(53 : GoInt32),
(885 : GoInt32),
(1561 : GoInt32),
(1792 : GoInt32),
(6277 : GoInt32),
(65534 : GoInt32),
(131071 : GoInt32),
(1114111 : GoInt32)) : Slice<GoInt32>);
/**
    // Contains all the special cased Latin-1 chars.
    
    
**/
private var _spaceTest = (new Slice<GoInt32>(
10,
10,
(9 : GoInt32),
(10 : GoInt32),
(11 : GoInt32),
(12 : GoInt32),
(13 : GoInt32),
(32 : GoInt32),
(133 : GoInt32),
(160 : GoInt32),
(8192 : GoInt32),
(12288 : GoInt32)) : Slice<GoInt32>);
/**
    
    
    
**/
private var _caseTest = (new Slice<stdgo.unicode_test.Unicode_test.T_caseT>(
77,
77,
(new stdgo.unicode_test.Unicode_test.T_caseT((-1 : GoInt), (10 : GoInt32), (65533 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (-1 : GoInt32), (-1 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (1073741824 : GoInt32), (1073741824 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (10 : GoInt32), (10 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (97 : GoInt32), (65 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (65 : GoInt32), (65 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (55 : GoInt32), (55 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (10 : GoInt32), (10 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (97 : GoInt32), (97 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (65 : GoInt32), (97 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (55 : GoInt32), (55 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (10 : GoInt32), (10 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (97 : GoInt32), (65 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (65 : GoInt32), (65 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (55 : GoInt32), (55 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (128 : GoInt32), (128 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (197 : GoInt32), (197 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (229 : GoInt32), (197 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (128 : GoInt32), (128 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (197 : GoInt32), (229 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (229 : GoInt32), (229 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (128 : GoInt32), (128 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (197 : GoInt32), (197 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (229 : GoInt32), (197 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (305 : GoInt32), (73 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (305 : GoInt32), (305 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (305 : GoInt32), (73 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (307 : GoInt32), (306 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (307 : GoInt32), (307 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (307 : GoInt32), (306 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (8490 : GoInt32), (8490 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (8490 : GoInt32), (107 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (8490 : GoInt32), (8490 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (42560 : GoInt32), (42560 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (42560 : GoInt32), (42561 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (42560 : GoInt32), (42560 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (42561 : GoInt32), (42560 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (42561 : GoInt32), (42561 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (42561 : GoInt32), (42560 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (42574 : GoInt32), (42574 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (42574 : GoInt32), (42575 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (42574 : GoInt32), (42574 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (42591 : GoInt32), (42590 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (42591 : GoInt32), (42591 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (42591 : GoInt32), (42590 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (313 : GoInt32), (313 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (313 : GoInt32), (314 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (313 : GoInt32), (313 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (319 : GoInt32), (319 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (319 : GoInt32), (320 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (319 : GoInt32), (319 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (328 : GoInt32), (327 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (328 : GoInt32), (328 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (328 : GoInt32), (327 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (43896 : GoInt32), (5032 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (43896 : GoInt32), (43896 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (43896 : GoInt32), (5032 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (5032 : GoInt32), (5032 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (5032 : GoInt32), (43896 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (5032 : GoInt32), (5032 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (66560 : GoInt32), (66560 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (66560 : GoInt32), (66600 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (66560 : GoInt32), (66560 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (66599 : GoInt32), (66599 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (66599 : GoInt32), (66639 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (66599 : GoInt32), (66599 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (66600 : GoInt32), (66560 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (66600 : GoInt32), (66600 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (66600 : GoInt32), (66560 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (66639 : GoInt32), (66599 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (66639 : GoInt32), (66639 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (66639 : GoInt32), (66599 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (66640 : GoInt32), (66640 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (66640 : GoInt32), (66640 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((2 : GoInt), (66640 : GoInt32), (66640 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((1 : GoInt), (8545 : GoInt32), (8561 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT),
(new stdgo.unicode_test.Unicode_test.T_caseT((0 : GoInt), (837 : GoInt32), (921 : GoInt32)) : stdgo.unicode_test.Unicode_test.T_caseT)) : Slice<stdgo.unicode_test.Unicode_test.T_caseT>);
/**
    
    
    
**/
private var _simpleFoldTests = (new Slice<GoString>(
9,
9,
("Aa" : GoString),
("δΔ" : GoString),
("KkK" : GoString),
("Ssſ" : GoString),
("ρϱΡ" : GoString),
("ͅΙιι" : GoString),
("İ" : GoString),
("ı" : GoString),
("Ꮀꮀ" : GoString)) : Slice<GoString>);
/**
    
    
    
**/
private var _calibrate = stdgo.flag.Flag.bool_(("calibrate" : GoString), false, ("compute crossover for linear vs. binary search" : GoString));
/**
    
    
    
**/
private var _inCategoryTest = (new Slice<stdgo.unicode_test.Unicode_test.T>(
36,
36,
(new stdgo.unicode_test.Unicode_test.T((129 : GoInt32), ("Cc" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((8203 : GoInt32), ("Cf" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((983040 : GoInt32), ("Co" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((56192 : GoInt32), ("Cs" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((566 : GoInt32), ("Ll" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((7581 : GoInt32), ("Lm" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((1999 : GoInt32), ("Lo" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((8074 : GoInt32), ("Lt" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((1023 : GoInt32), ("Lu" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((3009 : GoInt32), ("Mc" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((8415 : GoInt32), ("Me" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((2032 : GoInt32), ("Mn" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((7090 : GoInt32), ("Nd" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((65863 : GoInt32), ("Nl" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((9336 : GoInt32), ("No" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((65075 : GoInt32), ("Pc" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((8209 : GoInt32), ("Pd" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((12318 : GoInt32), ("Pe" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((11779 : GoInt32), ("Pf" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((11778 : GoInt32), ("Pi" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((34 : GoInt32), ("Po" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((10096 : GoInt32), ("Ps" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((164 : GoInt32), ("Sc" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((42769 : GoInt32), ("Sk" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((9721 : GoInt32), ("Sm" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((8456 : GoInt32), ("So" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((8232 : GoInt32), ("Zl" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((8233 : GoInt32), ("Zp" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((8239 : GoInt32), ("Zs" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((1194 : GoInt32), ("L" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((9 : GoInt32), ("C" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((5906 : GoInt32), ("M" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((49 : GoInt32), ("N" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((187 : GoInt32), ("P" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((162 : GoInt32), ("S" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((160 : GoInt32), ("Z" : GoString)) : stdgo.unicode_test.Unicode_test.T)) : Slice<stdgo.unicode_test.Unicode_test.T>);
/**
    
    
    
**/
private var _inPropTest = (new Slice<stdgo.unicode_test.Unicode_test.T>(
35,
35,
(new stdgo.unicode_test.Unicode_test.T((70 : GoInt32), ("ASCII_Hex_Digit" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((8207 : GoInt32), ("Bidi_Control" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((8722 : GoInt32), ("Dash" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((917505 : GoInt32), ("Deprecated" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((183 : GoInt32), ("Diacritic" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((12542 : GoInt32), ("Extender" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((65350 : GoInt32), ("Hex_Digit" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((11799 : GoInt32), ("Hyphen" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((12283 : GoInt32), ("IDS_Binary_Operator" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((12275 : GoInt32), ("IDS_Trinary_Operator" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((64106 : GoInt32), ("Ideographic" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((8205 : GoInt32), ("Join_Control" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((3780 : GoInt32), ("Logical_Order_Exception" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((196607 : GoInt32), ("Noncharacter_Code_Point" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((1630 : GoInt32), ("Other_Alphabetic" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((8293 : GoInt32), ("Other_Default_Ignorable_Code_Point" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((3031 : GoInt32), ("Other_Grapheme_Extend" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((903 : GoInt32), ("Other_ID_Continue" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((8494 : GoInt32), ("Other_ID_Start" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((8340 : GoInt32), ("Other_Lowercase" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((8256 : GoInt32), ("Other_Math" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((8559 : GoInt32), ("Other_Uppercase" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((39 : GoInt32), ("Pattern_Syntax" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((32 : GoInt32), ("Pattern_White_Space" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((1757 : GoInt32), ("Prepended_Concatenation_Mark" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((12301 : GoInt32), ("Quotation_Mark" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((12019 : GoInt32), ("Radical" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((127487 : GoInt32), ("Regional_Indicator" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((1567 : GoInt32), ("STerm" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((1567 : GoInt32), ("Sentence_Terminal" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((8305 : GoInt32), ("Soft_Dotted" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((58 : GoInt32), ("Terminal_Punctuation" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((40899 : GoInt32), ("Unified_Ideograph" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((65039 : GoInt32), ("Variation_Selector" : GoString)) : stdgo.unicode_test.Unicode_test.T),
(new stdgo.unicode_test.Unicode_test.T((32 : GoInt32), ("White_Space" : GoString)) : stdgo.unicode_test.Unicode_test.T)) : Slice<stdgo.unicode_test.Unicode_test.T>);
/**
    
    
    
**/
@:structInit @:private class T_caseT {
    public var _cas : GoInt = 0;
    public var _in : GoInt32 = 0;
    public var _out : GoInt32 = 0;
    public function new(?_cas:GoInt, ?_in:GoInt32, ?_out:GoInt32) {
        if (_cas != null) this._cas = _cas;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_caseT(_cas, _in, _out);
    }
}
/**
    
    
    
**/
@:structInit class T {
    public var _rune : GoInt32 = 0;
    public var _script : GoString = "";
    public function new(?_rune:GoInt32, ?_script:GoString) {
        if (_rune != null) this._rune = _rune;
        if (_script != null) this._script = _script;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T(_rune, _script);
    }
}
function testDigit(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _r in _testDigit) {
            if (!isDigit(_r)) {
                _t.errorf(("IsDigit(U+%04X) = false, want true" : GoString), Go.toInterface(_r));
            };
        };
        for (__1 => _r in _testLetter) {
            if (isDigit(_r)) {
                _t.errorf(("IsDigit(U+%04X) = true, want false" : GoString), Go.toInterface(_r));
            };
        };
    }
/**
    // Test that the special case in IsDigit agrees with the table
**/
function testDigitOptimization(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_i <= (255 : GoInt32), _i++, {
                if (is_(digit, _i) != (isDigit(_i))) {
                    _t.errorf(("IsDigit(U+%04X) disagrees with Is(Digit)" : GoString), Go.toInterface(_i));
                };
            });
        };
    }
/**
    // Functions starting with "Is" can be used to inspect which table of range a
    // rune belongs to. Note that runes may fit into more than one range.
**/
function example_is():Void {
        {};
        for (__0 => _c in ("\x085Ὂg̀9! ℃ᾭG" : GoString)) {
            stdgo.fmt.Fmt.printf(("For %q:\n" : GoString), Go.toInterface(_c));
            if (stdgo.unicode.Unicode.isControl(_c)) {
                stdgo.fmt.Fmt.println(Go.toInterface(("\tis control rune" : GoString)));
            };
            if (stdgo.unicode.Unicode.isDigit(_c)) {
                stdgo.fmt.Fmt.println(Go.toInterface(("\tis digit rune" : GoString)));
            };
            if (stdgo.unicode.Unicode.isGraphic(_c)) {
                stdgo.fmt.Fmt.println(Go.toInterface(("\tis graphic rune" : GoString)));
            };
            if (stdgo.unicode.Unicode.isLetter(_c)) {
                stdgo.fmt.Fmt.println(Go.toInterface(("\tis letter rune" : GoString)));
            };
            if (stdgo.unicode.Unicode.isLower(_c)) {
                stdgo.fmt.Fmt.println(Go.toInterface(("\tis lower case rune" : GoString)));
            };
            if (stdgo.unicode.Unicode.isMark(_c)) {
                stdgo.fmt.Fmt.println(Go.toInterface(("\tis mark rune" : GoString)));
            };
            if (stdgo.unicode.Unicode.isNumber(_c)) {
                stdgo.fmt.Fmt.println(Go.toInterface(("\tis number rune" : GoString)));
            };
            if (stdgo.unicode.Unicode.isPrint(_c)) {
                stdgo.fmt.Fmt.println(Go.toInterface(("\tis printable rune" : GoString)));
            };
            if (!stdgo.unicode.Unicode.isPrint(_c)) {
                stdgo.fmt.Fmt.println(Go.toInterface(("\tis not printable rune" : GoString)));
            };
            if (stdgo.unicode.Unicode.isPunct(_c)) {
                stdgo.fmt.Fmt.println(Go.toInterface(("\tis punct rune" : GoString)));
            };
            if (stdgo.unicode.Unicode.isSpace(_c)) {
                stdgo.fmt.Fmt.println(Go.toInterface(("\tis space rune" : GoString)));
            };
            if (stdgo.unicode.Unicode.isSymbol(_c)) {
                stdgo.fmt.Fmt.println(Go.toInterface(("\tis symbol rune" : GoString)));
            };
            if (stdgo.unicode.Unicode.isTitle(_c)) {
                stdgo.fmt.Fmt.println(Go.toInterface(("\tis title case rune" : GoString)));
            };
            if (stdgo.unicode.Unicode.isUpper(_c)) {
                stdgo.fmt.Fmt.println(Go.toInterface(("\tis upper case rune" : GoString)));
            };
        };
    }
function exampleSimpleFold():Void {
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.simpleFold((65 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.simpleFold((97 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.simpleFold((75 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.simpleFold((107 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.simpleFold((8490 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.simpleFold((49 : GoInt32))));
    }
function exampleTo():Void {
        {};
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.to((0 : GoInt), (103 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.to((1 : GoInt), (103 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.to((2 : GoInt), (103 : GoInt32))));
        {};
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.to((0 : GoInt), (71 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.to((1 : GoInt), (71 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.to((2 : GoInt), (71 : GoInt32))));
    }
function exampleToLower():Void {
        {};
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.toLower((71 : GoInt32))));
    }
function exampleToTitle():Void {
        {};
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.toTitle((103 : GoInt32))));
    }
function exampleToUpper():Void {
        {};
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.toUpper((103 : GoInt32))));
    }
function exampleSpecialCase():Void {
        var _t:stdgo.unicode.Unicode.SpecialCase = stdgo.unicode.Unicode.turkishCase;
        {};
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(_t.toLower((105 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(_t.toTitle((105 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(_t.toUpper((105 : GoInt32))));
        {};
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(_t.toLower((304 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(_t.toTitle((304 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%#U\n" : GoString), Go.toInterface(_t.toUpper((304 : GoInt32))));
    }
function exampleIsDigit():Void {
        stdgo.fmt.Fmt.printf(("%t\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.isDigit((2537 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.isDigit((65 : GoInt32))));
    }
function exampleIsNumber():Void {
        stdgo.fmt.Fmt.printf(("%t\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.isNumber((8551 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.isNumber((65 : GoInt32))));
    }
function exampleIsLetter():Void {
        stdgo.fmt.Fmt.printf(("%t\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.isLetter((65 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.isLetter((55 : GoInt32))));
    }
function exampleIsLower():Void {
        stdgo.fmt.Fmt.printf(("%t\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.isLower((97 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.isLower((65 : GoInt32))));
    }
function exampleIsUpper():Void {
        stdgo.fmt.Fmt.printf(("%t\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.isUpper((65 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.isUpper((97 : GoInt32))));
    }
function exampleIsTitle():Void {
        stdgo.fmt.Fmt.printf(("%t\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.isTitle((453 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.isTitle((97 : GoInt32))));
    }
function exampleIsSpace():Void {
        stdgo.fmt.Fmt.printf(("%t\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.isSpace((32 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.isSpace((10 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.isSpace((9 : GoInt32))));
        stdgo.fmt.Fmt.printf(("%t\n" : GoString), Go.toInterface(stdgo.unicode.Unicode.isSpace((97 : GoInt32))));
    }
function testIsControlLatin1(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_i <= (255 : GoInt32), _i++, {
                var _got:Bool = isControl(_i);
                var _want:Bool = false;
                if (((0 : GoInt32) <= _i) && (_i <= (31 : GoInt32))) {
                    _want = true;
                } else if (((127 : GoInt32) <= _i) && (_i <= (159 : GoInt32))) {
                    _want = true;
                };
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsLetterLatin1(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_i <= (255 : GoInt32), _i++, {
                var _got:Bool = isLetter(_i);
                var _want:Bool = is_(letter, _i);
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsUpperLatin1(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_i <= (255 : GoInt32), _i++, {
                var _got:Bool = isUpper(_i);
                var _want:Bool = is_(upper, _i);
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsLowerLatin1(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_i <= (255 : GoInt32), _i++, {
                var _got:Bool = isLower(_i);
                var _want:Bool = is_(lower, _i);
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testNumberLatin1(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_i <= (255 : GoInt32), _i++, {
                var _got:Bool = isNumber(_i);
                var _want:Bool = is_(number, _i);
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsPrintLatin1(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_i <= (255 : GoInt32), _i++, {
                var _got:Bool = isPrint(_i);
                var _want:Bool = in_(_i, ...printRanges.__toArray__());
                if (_i == ((32 : GoInt32))) {
                    _want = true;
                };
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsGraphicLatin1(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_i <= (255 : GoInt32), _i++, {
                var _got:Bool = isGraphic(_i);
                var _want:Bool = in_(_i, ...graphicRanges.__toArray__());
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsPunctLatin1(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_i <= (255 : GoInt32), _i++, {
                var _got:Bool = isPunct(_i);
                var _want:Bool = is_(punct, _i);
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsSpaceLatin1(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_i <= (255 : GoInt32), _i++, {
                var _got:Bool = isSpace(_i);
                var _want:Bool = is_(white_Space, _i);
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsSymbolLatin1(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_i <= (255 : GoInt32), _i++, {
                var _got:Bool = isSymbol(_i);
                var _want:Bool = is_(symbol, _i);
                if (_got != (_want)) {
                    _t.errorf(("%U incorrect: got %t; want %t" : GoString), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsLetter(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _r in _upperTest) {
            if (!isLetter(_r)) {
                _t.errorf(("IsLetter(U+%04X) = false, want true" : GoString), Go.toInterface(_r));
            };
        };
        for (__1 => _r in _letterTest) {
            if (!isLetter(_r)) {
                _t.errorf(("IsLetter(U+%04X) = false, want true" : GoString), Go.toInterface(_r));
            };
        };
        for (__2 => _r in _notletterTest) {
            if (isLetter(_r)) {
                _t.errorf(("IsLetter(U+%04X) = true, want false" : GoString), Go.toInterface(_r));
            };
        };
    }
function testIsUpper(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _r in _upperTest) {
            if (!isUpper(_r)) {
                _t.errorf(("IsUpper(U+%04X) = false, want true" : GoString), Go.toInterface(_r));
            };
        };
        for (__1 => _r in _notupperTest) {
            if (isUpper(_r)) {
                _t.errorf(("IsUpper(U+%04X) = true, want false" : GoString), Go.toInterface(_r));
            };
        };
        for (__2 => _r in _notletterTest) {
            if (isUpper(_r)) {
                _t.errorf(("IsUpper(U+%04X) = true, want false" : GoString), Go.toInterface(_r));
            };
        };
    }
private function _caseString(_c:GoInt):GoString {
        {
            final __value__ = _c;
            if (__value__ == ((0 : GoInt))) {
                return ("UpperCase" : GoString);
            } else if (__value__ == ((1 : GoInt))) {
                return ("LowerCase" : GoString);
            } else if (__value__ == ((2 : GoInt))) {
                return ("TitleCase" : GoString);
            };
        };
        return ("ErrorCase" : GoString);
    }
function testTo(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _c in _caseTest) {
            var _r:GoInt32 = to(_c._cas, _c._in);
            if (_c._out != (_r)) {
                _t.errorf(("To(U+%04X, %s) = U+%04X want U+%04X" : GoString), Go.toInterface(_c._in), Go.toInterface(_caseString(_c._cas)), Go.toInterface(_r), Go.toInterface(_c._out));
            };
        };
    }
function testToUpperCase(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _c in _caseTest) {
            if (_c._cas != ((0 : GoInt))) {
                continue;
            };
            var _r:GoInt32 = toUpper(_c._in);
            if (_c._out != (_r)) {
                _t.errorf(("ToUpper(U+%04X) = U+%04X want U+%04X" : GoString), Go.toInterface(_c._in), Go.toInterface(_r), Go.toInterface(_c._out));
            };
        };
    }
function testToLowerCase(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _c in _caseTest) {
            if (_c._cas != ((1 : GoInt))) {
                continue;
            };
            var _r:GoInt32 = toLower(_c._in);
            if (_c._out != (_r)) {
                _t.errorf(("ToLower(U+%04X) = U+%04X want U+%04X" : GoString), Go.toInterface(_c._in), Go.toInterface(_r), Go.toInterface(_c._out));
            };
        };
    }
function testToTitleCase(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _c in _caseTest) {
            if (_c._cas != ((2 : GoInt))) {
                continue;
            };
            var _r:GoInt32 = toTitle(_c._in);
            if (_c._out != (_r)) {
                _t.errorf(("ToTitle(U+%04X) = U+%04X want U+%04X" : GoString), Go.toInterface(_c._in), Go.toInterface(_r), Go.toInterface(_c._out));
            };
        };
    }
function testIsSpace(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _c in _spaceTest) {
            if (!isSpace(_c)) {
                _t.errorf(("IsSpace(U+%04X) = false; want true" : GoString), Go.toInterface(_c));
            };
        };
        for (__1 => _c in _letterTest) {
            if (isSpace(_c)) {
                _t.errorf(("IsSpace(U+%04X) = true; want false" : GoString), Go.toInterface(_c));
            };
        };
    }
/**
    // Check that the optimizations for IsLetter etc. agree with the tables.
    // We only need to check the Latin-1 range.
**/
function testLetterOptimizations(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt32 = ((0 : GoInt32) : GoRune);
            Go.cfor(_i <= (255 : GoInt32), _i++, {
                if (is_(letter, _i) != (isLetter(_i))) {
                    _t.errorf(("IsLetter(U+%04X) disagrees with Is(Letter)" : GoString), Go.toInterface(_i));
                };
                if (is_(upper, _i) != (isUpper(_i))) {
                    _t.errorf(("IsUpper(U+%04X) disagrees with Is(Upper)" : GoString), Go.toInterface(_i));
                };
                if (is_(lower, _i) != (isLower(_i))) {
                    _t.errorf(("IsLower(U+%04X) disagrees with Is(Lower)" : GoString), Go.toInterface(_i));
                };
                if (is_(title, _i) != (isTitle(_i))) {
                    _t.errorf(("IsTitle(U+%04X) disagrees with Is(Title)" : GoString), Go.toInterface(_i));
                };
                if (is_(white_Space, _i) != (isSpace(_i))) {
                    _t.errorf(("IsSpace(U+%04X) disagrees with Is(White_Space)" : GoString), Go.toInterface(_i));
                };
                if (to((0 : GoInt), _i) != (toUpper(_i))) {
                    _t.errorf(("ToUpper(U+%04X) disagrees with To(Upper)" : GoString), Go.toInterface(_i));
                };
                if (to((1 : GoInt), _i) != (toLower(_i))) {
                    _t.errorf(("ToLower(U+%04X) disagrees with To(Lower)" : GoString), Go.toInterface(_i));
                };
                if (to((2 : GoInt), _i) != (toTitle(_i))) {
                    _t.errorf(("ToTitle(U+%04X) disagrees with To(Title)" : GoString), Go.toInterface(_i));
                };
            });
        };
    }
function testTurkishCase(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _lower = (("abcçdefgğhıijklmnoöprsştuüvyz" : GoString) : Slice<GoRune>);
        var _upper = (("ABCÇDEFGĞHIİJKLMNOÖPRSŞTUÜVYZ" : GoString) : Slice<GoRune>);
        for (_i => _l in _lower) {
            var _u:GoInt32 = _upper[(_i : GoInt)];
            if (turkishCase.toLower(_l) != (_l)) {
                _t.errorf(("lower(U+%04X) is U+%04X not U+%04X" : GoString), Go.toInterface(_l), Go.toInterface(turkishCase.toLower(_l)), Go.toInterface(_l));
            };
            if (turkishCase.toUpper(_u) != (_u)) {
                _t.errorf(("upper(U+%04X) is U+%04X not U+%04X" : GoString), Go.toInterface(_u), Go.toInterface(turkishCase.toUpper(_u)), Go.toInterface(_u));
            };
            if (turkishCase.toUpper(_l) != (_u)) {
                _t.errorf(("upper(U+%04X) is U+%04X not U+%04X" : GoString), Go.toInterface(_l), Go.toInterface(turkishCase.toUpper(_l)), Go.toInterface(_u));
            };
            if (turkishCase.toLower(_u) != (_l)) {
                _t.errorf(("lower(U+%04X) is U+%04X not U+%04X" : GoString), Go.toInterface(_u), Go.toInterface(turkishCase.toLower(_l)), Go.toInterface(_l));
            };
            if (turkishCase.toTitle(_u) != (_u)) {
                _t.errorf(("title(U+%04X) is U+%04X not U+%04X" : GoString), Go.toInterface(_u), Go.toInterface(turkishCase.toTitle(_u)), Go.toInterface(_u));
            };
            if (turkishCase.toTitle(_l) != (_u)) {
                _t.errorf(("title(U+%04X) is U+%04X not U+%04X" : GoString), Go.toInterface(_l), Go.toInterface(turkishCase.toTitle(_l)), Go.toInterface(_u));
            };
        };
    }
function testSimpleFold(_t:Ref<stdgo.testing.Testing.T>):Void {
        for (__0 => _tt in _simpleFoldTests) {
            var _cycle = (_tt : Slice<GoRune>);
            var _r:GoInt32 = _cycle[((_cycle.length) - (1 : GoInt) : GoInt)];
            for (__1 => _out in _cycle) {
                {
                    var _r:GoInt32 = simpleFold(_r);
                    if (_r != (_out)) {
                        _t.errorf(("SimpleFold(%#U) = %#U, want %#U" : GoString), Go.toInterface(_r), Go.toInterface(_r), Go.toInterface(_out));
                    };
                };
                _r = _out;
            };
        };
        {
            var _r:GoInt32 = simpleFold((-42 : GoInt32));
            if (_r != ((-42 : GoInt32))) {
                _t.errorf(("SimpleFold(-42) = %v, want -42" : GoString), Go.toInterface(_r));
            };
        };
    }
function testCalibrate(_t:Ref<stdgo.testing.Testing.T>):Void {
        if (!_calibrate.value) {
            return;
        };
        if (false) {
            stdgo.fmt.Fmt.printf(("warning: running calibration on %s\n" : GoString), Go.toInterface(("wasm" : GoString)));
        };
        var _n:GoInt = stdgo.sort.Sort.search((64 : GoInt), function(_n:GoInt):Bool {
            var _tab = _fakeTable(_n);
            var _blinear = function(_b:Ref<stdgo.testing.Testing.B>):Void {
                var _tab = _tab;
                var _max:GoInt = (_n * (5 : GoInt)) + (20 : GoInt);
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _b.n, _i++, {
                        {
                            var _j:GoInt = (0 : GoInt);
                            Go.cfor(_j <= _max, _j++, {
                                _linear(_tab, (_j : GoUInt16));
                            });
                        };
                    });
                };
            };
            var _bbinary = function(_b:Ref<stdgo.testing.Testing.B>):Void {
                var _tab = _tab;
                var _max:GoInt = (_n * (5 : GoInt)) + (20 : GoInt);
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _b.n, _i++, {
                        {
                            var _j:GoInt = (0 : GoInt);
                            Go.cfor(_j <= _max, _j++, {
                                _binary(_tab, (_j : GoUInt16));
                            });
                        };
                    });
                };
            };
            var _bmlinear:stdgo.testing.Testing.BenchmarkResult = stdgo.testing.Testing.benchmark(_blinear)?.__copy__();
            var _bmbinary:stdgo.testing.Testing.BenchmarkResult = stdgo.testing.Testing.benchmark(_bbinary)?.__copy__();
            stdgo.fmt.Fmt.printf(("n=%d: linear=%d binary=%d\n" : GoString), Go.toInterface(_n), Go.toInterface(_bmlinear.nsPerOp()), Go.toInterface(_bmbinary.nsPerOp()));
            return (_bmlinear.nsPerOp() * (100i64 : GoInt64)) > (_bmbinary.nsPerOp() * (110i64 : GoInt64));
        });
        stdgo.fmt.Fmt.printf(("calibration: linear cutoff = %d\n" : GoString), Go.toInterface(_n));
    }
private function _fakeTable(_n:GoInt):Slice<Range16> {
        var _r16:Slice<Range16> = (null : Slice<stdgo.unicode.Unicode.Range16>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _n, _i++, {
                _r16 = (_r16.__append__((new Range16(((_i * (5 : GoInt)) + (10 : GoInt) : GoUInt16), ((_i * (5 : GoInt)) + (12 : GoInt) : GoUInt16), (1 : GoUInt16)) : Range16)));
            });
        };
        return _r16;
    }
private function _linear(_ranges:Slice<Range16>, _r:GoUInt16):Bool {
        for (_i in 0 ... _ranges.length.toBasic()) {
            var _range_ = (Go.setRef(_ranges[(_i : GoInt)]) : Ref<stdgo.unicode.Unicode.Range16>);
            if (_r < _range_.lo) {
                return false;
            };
            if (_r <= _range_.hi) {
                return (_r - _range_.lo) % _range_.stride == ((0 : GoUInt16));
            };
        };
        return false;
    }
private function _binary(_ranges:Slice<Range16>, _r:GoUInt16):Bool {
        var _lo:GoInt = (0 : GoInt);
        var _hi:GoInt = (_ranges.length);
        while (_lo < _hi) {
            var _m:GoInt = _lo + ((_hi - _lo) / (2 : GoInt));
            var _range_ = (Go.setRef(_ranges[(_m : GoInt)]) : Ref<stdgo.unicode.Unicode.Range16>);
            if ((_range_.lo <= _r) && (_r <= _range_.hi)) {
                return (_r - _range_.lo) % _range_.stride == ((0 : GoUInt16));
            };
            if (_r < _range_.lo) {
                _hi = _m;
            } else {
                _lo = _m + (1 : GoInt);
            };
        };
        return false;
    }
function testLatinOffset(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _maps:Slice<GoMap<GoString, Ref<stdgo.unicode.Unicode.RangeTable>>> = (new Slice<GoMap<GoString, Ref<stdgo.unicode.Unicode.RangeTable>>>(5, 5, categories, foldCategory, foldScript, properties, scripts) : Slice<GoMap<GoString, Ref<stdgo.unicode.Unicode.RangeTable>>>);
        for (__0 => _m in _maps) {
            for (_name => _tab in _m) {
                var _i:GoInt = (0 : GoInt);
                while ((_i < _tab.r16.length) && (_tab.r16[(_i : GoInt)].hi <= (255 : GoUInt16))) {
                    _i++;
                };
                if (_tab.latinOffset != (_i)) {
                    _t.errorf(("%s: LatinOffset=%d, want %d" : GoString), Go.toInterface(_name), Go.toInterface(_tab.latinOffset), Go.toInterface(_i));
                };
            };
        };
    }
function testSpecialCaseNoMapping(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _noChangeForCapitalA:stdgo.unicode.Unicode.CaseRange = (new CaseRange((65u32 : GoUInt32), (65u32 : GoUInt32), (new GoArray<GoInt32>((0 : GoInt32), (0 : GoInt32), (0 : GoInt32)) : GoArray<GoInt32>)) : CaseRange);
        var _got:GoString = stdgo.strings.Strings.toLowerSpecial(((new Slice<stdgo.unicode.Unicode.CaseRange>(1, 1, _noChangeForCapitalA?.__copy__()) : Slice<stdgo.unicode.Unicode.CaseRange>) : SpecialCase), ("ABC" : GoString));
        var _want:GoString = ("Abc" : GoString);
        if (_got != (_want)) {
            _t.errorf(("got %q; want %q" : GoString), Go.toInterface(_got), Go.toInterface(_want));
        };
    }
function testNegativeRune(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _nonLatin1 = (new Slice<GoUInt32>(8, 8, (256u32 : GoUInt32), (257u32 : GoUInt32), (453u32 : GoUInt32), (768u32 : GoUInt32), (1632u32 : GoUInt32), (894u32 : GoUInt32), (706u32 : GoUInt32), (5760u32 : GoUInt32)) : Slice<GoUInt32>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < ((255 : GoInt) + _nonLatin1.length), _i++, {
                var _base:GoUInt32 = (_i : GoUInt32);
                if (_i >= (255 : GoInt)) {
                    _base = _nonLatin1[(_i - (255 : GoInt) : GoInt)];
                };
                var _r:GoInt32 = (_base - (-2147483648u32 : GoUInt32) : GoRune);
                if (is_(letter, _r)) {
                    _t.errorf(("Is(Letter, 0x%x - 1<<31) = true, want false" : GoString), Go.toInterface(_base));
                };
                if (isControl(_r)) {
                    _t.errorf(("IsControl(0x%x - 1<<31) = true, want false" : GoString), Go.toInterface(_base));
                };
                if (isDigit(_r)) {
                    _t.errorf(("IsDigit(0x%x - 1<<31) = true, want false" : GoString), Go.toInterface(_base));
                };
                if (isGraphic(_r)) {
                    _t.errorf(("IsGraphic(0x%x - 1<<31) = true, want false" : GoString), Go.toInterface(_base));
                };
                if (isLetter(_r)) {
                    _t.errorf(("IsLetter(0x%x - 1<<31) = true, want false" : GoString), Go.toInterface(_base));
                };
                if (isLower(_r)) {
                    _t.errorf(("IsLower(0x%x - 1<<31) = true, want false" : GoString), Go.toInterface(_base));
                };
                if (isMark(_r)) {
                    _t.errorf(("IsMark(0x%x - 1<<31) = true, want false" : GoString), Go.toInterface(_base));
                };
                if (isNumber(_r)) {
                    _t.errorf(("IsNumber(0x%x - 1<<31) = true, want false" : GoString), Go.toInterface(_base));
                };
                if (isPrint(_r)) {
                    _t.errorf(("IsPrint(0x%x - 1<<31) = true, want false" : GoString), Go.toInterface(_base));
                };
                if (isPunct(_r)) {
                    _t.errorf(("IsPunct(0x%x - 1<<31) = true, want false" : GoString), Go.toInterface(_base));
                };
                if (isSpace(_r)) {
                    _t.errorf(("IsSpace(0x%x - 1<<31) = true, want false" : GoString), Go.toInterface(_base));
                };
                if (isSymbol(_r)) {
                    _t.errorf(("IsSymbol(0x%x - 1<<31) = true, want false" : GoString), Go.toInterface(_base));
                };
                if (isTitle(_r)) {
                    _t.errorf(("IsTitle(0x%x - 1<<31) = true, want false" : GoString), Go.toInterface(_base));
                };
                if (isUpper(_r)) {
                    _t.errorf(("IsUpper(0x%x - 1<<31) = true, want false" : GoString), Go.toInterface(_base));
                };
            });
        };
    }
function testCategories(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _notTested = ({
            final x = new GoMap<GoString, Bool>();
            @:mergeBlock {};
            x;
        });
        for (_k => _ in categories) {
            _notTested[_k] = true;
        };
        for (__0 => _test in _inCategoryTest) {
            {
                var __tmp__ = (categories != null && categories.exists(_test._script) ? { value : categories[_test._script], ok : true } : { value : (null : Ref<stdgo.unicode.Unicode.RangeTable>), ok : false }), __1:Ref<stdgo.unicode.Unicode.RangeTable> = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (!_ok) {
                    _t.fatal(Go.toInterface(_test._script), Go.toInterface(("not a known category" : GoString)));
                };
            };
            if (!is_(categories[_test._script], _test._rune)) {
                _t.errorf(("IsCategory(%U, %s) = false, want true" : GoString), Go.toInterface(_test._rune), Go.toInterface(_test._script));
            };
            if (_notTested != null) _notTested.remove(_test._script);
        };
        for (_k => _ in _notTested) {
            _t.error(Go.toInterface(("category not tested:" : GoString)), Go.toInterface(_k));
        };
    }
function testProperties(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _notTested = ({
            final x = new GoMap<GoString, Bool>();
            @:mergeBlock {};
            x;
        });
        for (_k => _ in properties) {
            _notTested[_k] = true;
        };
        for (__0 => _test in _inPropTest) {
            {
                var __tmp__ = (properties != null && properties.exists(_test._script) ? { value : properties[_test._script], ok : true } : { value : (null : Ref<stdgo.unicode.Unicode.RangeTable>), ok : false }), __1:Ref<stdgo.unicode.Unicode.RangeTable> = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (!_ok) {
                    _t.fatal(Go.toInterface(_test._script), Go.toInterface(("not a known prop" : GoString)));
                };
            };
            if (!is_(properties[_test._script], _test._rune)) {
                _t.errorf(("IsCategory(%U, %s) = false, want true" : GoString), Go.toInterface(_test._rune), Go.toInterface(_test._script));
            };
            if (_notTested != null) _notTested.remove(_test._script);
        };
        for (_k => _ in _notTested) {
            _t.error(Go.toInterface(("property not tested:" : GoString)), Go.toInterface(_k));
        };
    }
