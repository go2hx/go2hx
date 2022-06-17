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
var _testDigit : Slice<GoInt32> = ((new Slice<GoInt32>(
((48 : GoInt32)),
((57 : GoInt32)),
((1633 : GoInt32)),
((1777 : GoInt32)),
((1993 : GoInt32)),
((2406 : GoInt32)),
((2543 : GoInt32)),
((2662 : GoInt32)),
((2799 : GoInt32)),
((2918 : GoInt32)),
((2927 : GoInt32)),
((3046 : GoInt32)),
((3055 : GoInt32)),
((3174 : GoInt32)),
((3311 : GoInt32)),
((3430 : GoInt32)),
((3439 : GoInt32)),
((3664 : GoInt32)),
((3673 : GoInt32)),
((3792 : GoInt32)),
((3801 : GoInt32)),
((3872 : GoInt32)),
((3881 : GoInt32)),
((4160 : GoInt32)),
((4169 : GoInt32)),
((4240 : GoInt32)),
((4241 : GoInt32)),
((4249 : GoInt32)),
((6112 : GoInt32)),
((6121 : GoInt32)),
((6160 : GoInt32)),
((6169 : GoInt32)),
((6470 : GoInt32)),
((6479 : GoInt32)),
((6608 : GoInt32)),
((6617 : GoInt32)),
((6992 : GoInt32)),
((7001 : GoInt32)),
((7088 : GoInt32)),
((7097 : GoInt32)),
((7232 : GoInt32)),
((7241 : GoInt32)),
((7248 : GoInt32)),
((7257 : GoInt32)),
((42528 : GoInt32)),
((42537 : GoInt32)),
((43216 : GoInt32)),
((43225 : GoInt32)),
((43264 : GoInt32)),
((43273 : GoInt32)),
((43600 : GoInt32)),
((43609 : GoInt32)),
((65296 : GoInt32)),
((65305 : GoInt32)),
((66721 : GoInt32)),
((120782 : GoInt32))) : Slice<GoInt32>));
var _testLetter : Slice<GoInt32> = ((new Slice<GoInt32>(
((65 : GoInt32)),
((97 : GoInt32)),
((170 : GoInt32)),
((186 : GoInt32)),
((200 : GoInt32)),
((219 : GoInt32)),
((249 : GoInt32)),
((748 : GoInt32)),
((1333 : GoInt32)),
((1766 : GoInt32)),
((2365 : GoInt32)),
((2581 : GoInt32)),
((2969 : GoInt32)),
((3520 : GoInt32)),
((3805 : GoInt32)),
((4096 : GoInt32)),
((4608 : GoInt32)),
((4882 : GoInt32)),
((5121 : GoInt32)),
((6277 : GoInt32)),
((11264 : GoInt32)),
((43008 : GoInt32)),
((63744 : GoInt32)),
((64048 : GoInt32)),
((65498 : GoInt32)),
((65500 : GoInt32)),
((65536 : GoInt32)),
((66304 : GoInt32)),
((66560 : GoInt32)),
((131072 : GoInt32)),
((194560 : GoInt32)),
((195101 : GoInt32))) : Slice<GoInt32>));
var _upperTest : Slice<GoInt32> = ((new Slice<GoInt32>(
((65 : GoInt32)),
((192 : GoInt32)),
((216 : GoInt32)),
((256 : GoInt32)),
((313 : GoInt32)),
((330 : GoInt32)),
((376 : GoInt32)),
((385 : GoInt32)),
((886 : GoInt32)),
((975 : GoInt32)),
((5053 : GoInt32)),
((7978 : GoInt32)),
((8450 : GoInt32)),
((11264 : GoInt32)),
((11280 : GoInt32)),
((11296 : GoInt32)),
((42576 : GoInt32)),
((42786 : GoInt32)),
((65338 : GoInt32)),
((66560 : GoInt32)),
((119808 : GoInt32)),
((120778 : GoInt32))) : Slice<GoInt32>));
var _notupperTest : Slice<GoInt32> = ((new Slice<GoInt32>(
((64 : GoInt32)),
((91 : GoInt32)),
((97 : GoInt32)),
((389 : GoInt32)),
((432 : GoInt32)),
((887 : GoInt32)),
((903 : GoInt32)),
((8528 : GoInt32)),
((43901 : GoInt32)),
((65535 : GoInt32)),
((65536 : GoInt32))) : Slice<GoInt32>));
var _letterTest : Slice<GoInt32> = ((new Slice<GoInt32>(
((65 : GoInt32)),
((97 : GoInt32)),
((170 : GoInt32)),
((186 : GoInt32)),
((200 : GoInt32)),
((219 : GoInt32)),
((249 : GoInt32)),
((748 : GoInt32)),
((1333 : GoInt32)),
((1568 : GoInt32)),
((1766 : GoInt32)),
((2365 : GoInt32)),
((2581 : GoInt32)),
((2969 : GoInt32)),
((3520 : GoInt32)),
((3805 : GoInt32)),
((4096 : GoInt32)),
((4608 : GoInt32)),
((4882 : GoInt32)),
((5121 : GoInt32)),
((11264 : GoInt32)),
((43008 : GoInt32)),
((63744 : GoInt32)),
((64048 : GoInt32)),
((65498 : GoInt32)),
((65500 : GoInt32)),
((65536 : GoInt32)),
((66304 : GoInt32)),
((66560 : GoInt32)),
((131072 : GoInt32)),
((194560 : GoInt32)),
((195101 : GoInt32))) : Slice<GoInt32>));
var _notletterTest : Slice<GoInt32> = ((new Slice<GoInt32>(((32 : GoInt32)), ((53 : GoInt32)), ((885 : GoInt32)), ((1561 : GoInt32)), ((1792 : GoInt32)), ((6277 : GoInt32)), ((65534 : GoInt32)), ((131071 : GoInt32)), ((1114111 : GoInt32))) : Slice<GoInt32>));
var _spaceTest : Slice<GoInt32> = ((new Slice<GoInt32>(((9 : GoInt32)), ((10 : GoInt32)), ((11 : GoInt32)), ((12 : GoInt32)), ((13 : GoInt32)), ((32 : GoInt32)), ((133 : GoInt32)), ((160 : GoInt32)), ((8192 : GoInt32)), ((12288 : GoInt32))) : Slice<GoInt32>));
var _caseTest : Slice<stdgo.unicode_test.Unicode_test.T_caseT> = ((new Slice<stdgo.unicode_test.Unicode_test.T_caseT>(
((new stdgo.unicode_test.Unicode_test.T_caseT(((-1 : GoInt)), ((((("\n" : GoString))).code : GoRune)), ((65533 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((-1 : GoInt32)), ((-1 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((1073741824 : GoInt32)), ((1073741824 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((((("\n" : GoString))).code : GoRune)), ((((("\n" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((((("a" : GoString))).code : GoRune)), ((((("A" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((((("A" : GoString))).code : GoRune)), ((((("A" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((((("7" : GoString))).code : GoRune)), ((((("7" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((((("\n" : GoString))).code : GoRune)), ((((("\n" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((((("a" : GoString))).code : GoRune)), ((((("a" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((((("A" : GoString))).code : GoRune)), ((((("a" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((((("7" : GoString))).code : GoRune)), ((((("7" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((((("\n" : GoString))).code : GoRune)), ((((("\n" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((((("a" : GoString))).code : GoRune)), ((((("A" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((((("A" : GoString))).code : GoRune)), ((((("A" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((((("7" : GoString))).code : GoRune)), ((((("7" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((128 : GoInt32)), ((128 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((((("Å" : GoString))).code : GoRune)), ((((("Å" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((((("å" : GoString))).code : GoRune)), ((((("Å" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((128 : GoInt32)), ((128 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((((("Å" : GoString))).code : GoRune)), ((((("å" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((((("å" : GoString))).code : GoRune)), ((((("å" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((128 : GoInt32)), ((128 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((((("Å" : GoString))).code : GoRune)), ((((("Å" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((((("å" : GoString))).code : GoRune)), ((((("Å" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((305 : GoInt32)), ((((("I" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((305 : GoInt32)), ((305 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((305 : GoInt32)), ((((("I" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((307 : GoInt32)), ((306 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((307 : GoInt32)), ((307 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((307 : GoInt32)), ((306 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((8490 : GoInt32)), ((8490 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((8490 : GoInt32)), ((((("k" : GoString))).code : GoRune))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((8490 : GoInt32)), ((8490 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((42560 : GoInt32)), ((42560 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((42560 : GoInt32)), ((42561 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((42560 : GoInt32)), ((42560 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((42561 : GoInt32)), ((42560 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((42561 : GoInt32)), ((42561 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((42561 : GoInt32)), ((42560 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((42574 : GoInt32)), ((42574 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((42574 : GoInt32)), ((42575 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((42574 : GoInt32)), ((42574 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((42591 : GoInt32)), ((42590 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((42591 : GoInt32)), ((42591 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((42591 : GoInt32)), ((42590 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((313 : GoInt32)), ((313 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((313 : GoInt32)), ((314 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((313 : GoInt32)), ((313 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((319 : GoInt32)), ((319 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((319 : GoInt32)), ((320 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((319 : GoInt32)), ((319 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((328 : GoInt32)), ((327 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((328 : GoInt32)), ((328 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((328 : GoInt32)), ((327 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((43896 : GoInt32)), ((5032 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((43896 : GoInt32)), ((43896 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((43896 : GoInt32)), ((5032 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((5032 : GoInt32)), ((5032 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((5032 : GoInt32)), ((43896 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((5032 : GoInt32)), ((5032 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((66560 : GoInt32)), ((66560 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((66560 : GoInt32)), ((66600 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((66560 : GoInt32)), ((66560 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((66599 : GoInt32)), ((66599 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((66599 : GoInt32)), ((66639 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((66599 : GoInt32)), ((66599 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((66600 : GoInt32)), ((66560 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((66600 : GoInt32)), ((66600 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((66600 : GoInt32)), ((66560 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((66639 : GoInt32)), ((66599 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((66639 : GoInt32)), ((66639 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((66639 : GoInt32)), ((66599 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((66640 : GoInt32)), ((66640 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((66640 : GoInt32)), ((66640 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((2 : GoInt)), ((66640 : GoInt32)), ((66640 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((1 : GoInt)), ((8545 : GoInt32)), ((8561 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT)),
((new stdgo.unicode_test.Unicode_test.T_caseT(((0 : GoInt)), ((837 : GoInt32)), ((921 : GoInt32))) : stdgo.unicode_test.Unicode_test.T_caseT))) : Slice<stdgo.unicode_test.Unicode_test.T_caseT>));
var _simpleFoldTests : Slice<GoString> = ((new Slice<GoString>(((("Aa" : GoString))), ((("δΔ" : GoString))), ((("KkK" : GoString))), ((("Ssſ" : GoString))), ((("ρϱΡ" : GoString))), ((("ͅΙιι" : GoString))), ((("İ" : GoString))), ((("ı" : GoString))), ((("\u13b0\uab80" : GoString)))) : Slice<GoString>));
var _calibrate : Pointer<Bool> = stdgo.flag.Flag.bool(((("calibrate" : GoString))), false, ((("compute crossover for linear vs. binary search" : GoString))));
var _inCategoryTest : Slice<stdgo.unicode_test.Unicode_test.T_> = ((new Slice<stdgo.unicode_test.Unicode_test.T_>(
((new stdgo.unicode_test.Unicode_test.T_(((129 : GoInt32)), ((("Cc" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((8203 : GoInt32)), ((("Cf" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((983040 : GoInt32)), ((("Co" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((56192 : GoInt32)), ((("Cs" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((566 : GoInt32)), ((("Ll" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((7581 : GoInt32)), ((("Lm" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((1999 : GoInt32)), ((("Lo" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((8074 : GoInt32)), ((("Lt" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((1023 : GoInt32)), ((("Lu" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((3009 : GoInt32)), ((("Mc" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((8415 : GoInt32)), ((("Me" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((2032 : GoInt32)), ((("Mn" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((7090 : GoInt32)), ((("Nd" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((65863 : GoInt32)), ((("Nl" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((9336 : GoInt32)), ((("No" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((65075 : GoInt32)), ((("Pc" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((8209 : GoInt32)), ((("Pd" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((12318 : GoInt32)), ((("Pe" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((11779 : GoInt32)), ((("Pf" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((11778 : GoInt32)), ((("Pi" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((34 : GoInt32)), ((("Po" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((10096 : GoInt32)), ((("Ps" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((164 : GoInt32)), ((("Sc" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((42769 : GoInt32)), ((("Sk" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((9721 : GoInt32)), ((("Sm" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((8456 : GoInt32)), ((("So" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((8232 : GoInt32)), ((("Zl" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((8233 : GoInt32)), ((("Zp" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((8239 : GoInt32)), ((("Zs" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((1194 : GoInt32)), ((("L" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((9 : GoInt32)), ((("C" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((5906 : GoInt32)), ((("M" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((49 : GoInt32)), ((("N" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((187 : GoInt32)), ((("P" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((162 : GoInt32)), ((("S" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((160 : GoInt32)), ((("Z" : GoString)))) : stdgo.unicode_test.Unicode_test.T_))) : Slice<stdgo.unicode_test.Unicode_test.T_>));
var _inPropTest : Slice<stdgo.unicode_test.Unicode_test.T_> = ((new Slice<stdgo.unicode_test.Unicode_test.T_>(
((new stdgo.unicode_test.Unicode_test.T_(((70 : GoInt32)), ((("ASCII_Hex_Digit" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((8207 : GoInt32)), ((("Bidi_Control" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((8722 : GoInt32)), ((("Dash" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((917505 : GoInt32)), ((("Deprecated" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((183 : GoInt32)), ((("Diacritic" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((12542 : GoInt32)), ((("Extender" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((65350 : GoInt32)), ((("Hex_Digit" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((11799 : GoInt32)), ((("Hyphen" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((12283 : GoInt32)), ((("IDS_Binary_Operator" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((12275 : GoInt32)), ((("IDS_Trinary_Operator" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((64106 : GoInt32)), ((("Ideographic" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((8205 : GoInt32)), ((("Join_Control" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((3780 : GoInt32)), ((("Logical_Order_Exception" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((196607 : GoInt32)), ((("Noncharacter_Code_Point" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((1630 : GoInt32)), ((("Other_Alphabetic" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((8293 : GoInt32)), ((("Other_Default_Ignorable_Code_Point" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((3031 : GoInt32)), ((("Other_Grapheme_Extend" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((903 : GoInt32)), ((("Other_ID_Continue" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((8494 : GoInt32)), ((("Other_ID_Start" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((8340 : GoInt32)), ((("Other_Lowercase" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((8256 : GoInt32)), ((("Other_Math" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((8559 : GoInt32)), ((("Other_Uppercase" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((39 : GoInt32)), ((("Pattern_Syntax" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((32 : GoInt32)), ((("Pattern_White_Space" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((1757 : GoInt32)), ((("Prepended_Concatenation_Mark" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((12301 : GoInt32)), ((("Quotation_Mark" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((12019 : GoInt32)), ((("Radical" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((127487 : GoInt32)), ((("Regional_Indicator" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((1567 : GoInt32)), ((("STerm" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((1567 : GoInt32)), ((("Sentence_Terminal" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((8305 : GoInt32)), ((("Soft_Dotted" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((58 : GoInt32)), ((("Terminal_Punctuation" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((40899 : GoInt32)), ((("Unified_Ideograph" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((65039 : GoInt32)), ((("Variation_Selector" : GoString)))) : stdgo.unicode_test.Unicode_test.T_)),
((new stdgo.unicode_test.Unicode_test.T_(((32 : GoInt32)), ((("White_Space" : GoString)))) : stdgo.unicode_test.Unicode_test.T_))) : Slice<stdgo.unicode_test.Unicode_test.T_>));
@:structInit class T_caseT {
    public var _cas : GoInt = ((0 : GoInt));
    public var _in : GoInt32 = ((0 : GoInt32));
    public var _out : GoInt32 = ((0 : GoInt32));
    public function new(?_cas:GoInt, ?_in:GoInt32, ?_out:GoInt32) {
        if (_cas != null) this._cas = _cas;
        if (_in != null) this._in = _in;
        if (_out != null) this._out = _out;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_caseT(_cas, _in, _out);
    }
}
@:structInit class T_ {
    public var _rune : GoInt32 = ((0 : GoInt32));
    public var _script : GoString = (("" : GoString));
    public function new(?_rune:GoInt32, ?_script:GoString) {
        if (_rune != null) this._rune = _rune;
        if (_script != null) this._script = _script;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_(_rune, _script);
    }
}
function testDigit(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _r in _testDigit) {
            if (!isDigit(_r)) {
                _t.errorf(((("IsDigit(U+%04X) = false, want true" : GoString))), Go.toInterface(_r));
            };
        };
        for (_1 => _r in _testLetter) {
            if (isDigit(_r)) {
                _t.errorf(((("IsDigit(U+%04X) = true, want false" : GoString))), Go.toInterface(_r));
            };
        };
    }
function testDigitOptimization(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_i <= ((255 : GoInt32)), _i++, {
                if (is_(digit, _i) != isDigit(_i)) {
                    _t.errorf(((("IsDigit(U+%04X) disagrees with Is(Digit)" : GoString))), Go.toInterface(_i));
                };
            });
        };
    }
function example_is():Void {
        {};
        for (_0 => _c in (((haxe.io.Bytes.ofHex("08") : GoString)) + (("5" : GoString)) + ((haxe.io.Bytes.ofHex("E1") : GoString)) + ((haxe.io.Bytes.ofHex("BD") : GoString)) + ((haxe.io.Bytes.ofHex("8A") : GoString)) + (("g" : GoString)) + ((haxe.io.Bytes.ofHex("CC") : GoString)) + ((haxe.io.Bytes.ofHex("80") : GoString)) + (("9! " : GoString)) + ((haxe.io.Bytes.ofHex("E2") : GoString)) + ((haxe.io.Bytes.ofHex("84") : GoString)) + ((haxe.io.Bytes.ofHex("83") : GoString)) + ((haxe.io.Bytes.ofHex("E1") : GoString)) + ((haxe.io.Bytes.ofHex("BE") : GoString)) + ((haxe.io.Bytes.ofHex("AD") : GoString)) + (("G" : GoString)))) {
            stdgo.fmt.Fmt.printf(((("For %q:\n" : GoString))), Go.toInterface(_c));
            if (stdgo.unicode.Unicode.isControl(_c)) {
                stdgo.fmt.Fmt.println(((("\tis control rune" : GoString))));
            };
            if (stdgo.unicode.Unicode.isDigit(_c)) {
                stdgo.fmt.Fmt.println(((("\tis digit rune" : GoString))));
            };
            if (stdgo.unicode.Unicode.isGraphic(_c)) {
                stdgo.fmt.Fmt.println(((("\tis graphic rune" : GoString))));
            };
            if (stdgo.unicode.Unicode.isLetter(_c)) {
                stdgo.fmt.Fmt.println(((("\tis letter rune" : GoString))));
            };
            if (stdgo.unicode.Unicode.isLower(_c)) {
                stdgo.fmt.Fmt.println(((("\tis lower case rune" : GoString))));
            };
            if (stdgo.unicode.Unicode.isMark(_c)) {
                stdgo.fmt.Fmt.println(((("\tis mark rune" : GoString))));
            };
            if (stdgo.unicode.Unicode.isNumber(_c)) {
                stdgo.fmt.Fmt.println(((("\tis number rune" : GoString))));
            };
            if (stdgo.unicode.Unicode.isPrint(_c)) {
                stdgo.fmt.Fmt.println(((("\tis printable rune" : GoString))));
            };
            if (!stdgo.unicode.Unicode.isPrint(_c)) {
                stdgo.fmt.Fmt.println(((("\tis not printable rune" : GoString))));
            };
            if (stdgo.unicode.Unicode.isPunct(_c)) {
                stdgo.fmt.Fmt.println(((("\tis punct rune" : GoString))));
            };
            if (stdgo.unicode.Unicode.isSpace(_c)) {
                stdgo.fmt.Fmt.println(((("\tis space rune" : GoString))));
            };
            if (stdgo.unicode.Unicode.isSymbol(_c)) {
                stdgo.fmt.Fmt.println(((("\tis symbol rune" : GoString))));
            };
            if (stdgo.unicode.Unicode.isTitle(_c)) {
                stdgo.fmt.Fmt.println(((("\tis title case rune" : GoString))));
            };
            if (stdgo.unicode.Unicode.isUpper(_c)) {
                stdgo.fmt.Fmt.println(((("\tis upper case rune" : GoString))));
            };
        };
    }
function exampleSimpleFold():Void {
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.simpleFold(((((("A" : GoString))).code : GoRune)))));
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.simpleFold(((((("a" : GoString))).code : GoRune)))));
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.simpleFold(((((("K" : GoString))).code : GoRune)))));
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.simpleFold(((((("k" : GoString))).code : GoRune)))));
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.simpleFold(((((("\u212A" : GoString))).code : GoRune)))));
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.simpleFold(((((("1" : GoString))).code : GoRune)))));
    }
function exampleTo():Void {
        {};
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.to(((0 : GoInt)), ((103 : GoInt32)))));
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.to(((1 : GoInt)), ((103 : GoInt32)))));
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.to(((2 : GoInt)), ((103 : GoInt32)))));
        {};
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.to(((0 : GoInt)), ((71 : GoInt32)))));
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.to(((1 : GoInt)), ((71 : GoInt32)))));
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.to(((2 : GoInt)), ((71 : GoInt32)))));
    }
function exampleToLower():Void {
        {};
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.toLower(((71 : GoInt32)))));
    }
function exampleToTitle():Void {
        {};
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.toTitle(((103 : GoInt32)))));
    }
function exampleToUpper():Void {
        {};
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.toUpper(((103 : GoInt32)))));
    }
function exampleSpecialCase():Void {
        var _t:SpecialCase = stdgo.unicode.Unicode.turkishCase;
        {};
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(_t.toLower(((105 : GoInt32)))));
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(_t.toTitle(((105 : GoInt32)))));
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(_t.toUpper(((105 : GoInt32)))));
        {};
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(_t.toLower(((304 : GoInt32)))));
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(_t.toTitle(((304 : GoInt32)))));
        stdgo.fmt.Fmt.printf(((("%#U\n" : GoString))), Go.toInterface(_t.toUpper(((304 : GoInt32)))));
    }
function exampleIsDigit():Void {
        stdgo.fmt.Fmt.printf(((("%t\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.isDigit(((((("৩" : GoString))).code : GoRune)))));
        stdgo.fmt.Fmt.printf(((("%t\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.isDigit(((((("A" : GoString))).code : GoRune)))));
    }
function exampleIsNumber():Void {
        stdgo.fmt.Fmt.printf(((("%t\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.isNumber(((((("Ⅷ" : GoString))).code : GoRune)))));
        stdgo.fmt.Fmt.printf(((("%t\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.isNumber(((((("A" : GoString))).code : GoRune)))));
    }
function exampleIsLetter():Void {
        stdgo.fmt.Fmt.printf(((("%t\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.isLetter(((((("A" : GoString))).code : GoRune)))));
        stdgo.fmt.Fmt.printf(((("%t\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.isLetter(((((("7" : GoString))).code : GoRune)))));
    }
function exampleIsLower():Void {
        stdgo.fmt.Fmt.printf(((("%t\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.isLower(((((("a" : GoString))).code : GoRune)))));
        stdgo.fmt.Fmt.printf(((("%t\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.isLower(((((("A" : GoString))).code : GoRune)))));
    }
function exampleIsUpper():Void {
        stdgo.fmt.Fmt.printf(((("%t\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.isUpper(((((("A" : GoString))).code : GoRune)))));
        stdgo.fmt.Fmt.printf(((("%t\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.isUpper(((((("a" : GoString))).code : GoRune)))));
    }
function exampleIsTitle():Void {
        stdgo.fmt.Fmt.printf(((("%t\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.isTitle(((((("ǅ" : GoString))).code : GoRune)))));
        stdgo.fmt.Fmt.printf(((("%t\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.isTitle(((((("a" : GoString))).code : GoRune)))));
    }
function exampleIsSpace():Void {
        stdgo.fmt.Fmt.printf(((("%t\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.isSpace((((((" " : GoString))).code : GoRune)))));
        stdgo.fmt.Fmt.printf(((("%t\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.isSpace(((((("\n" : GoString))).code : GoRune)))));
        stdgo.fmt.Fmt.printf(((("%t\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.isSpace(((((("\t" : GoString))).code : GoRune)))));
        stdgo.fmt.Fmt.printf(((("%t\n" : GoString))), Go.toInterface(stdgo.unicode.Unicode.isSpace(((((("a" : GoString))).code : GoRune)))));
    }
function testIsControlLatin1(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_i <= ((255 : GoInt32)), _i++, {
                var _got:Bool = isControl(_i);
                var _want:Bool = false;
                if ((((0 : GoInt32)) <= _i) && (_i <= ((31 : GoInt32)))) {
                    _want = true;
                } else if ((((127 : GoInt32)) <= _i) && (_i <= ((159 : GoInt32)))) {
                    _want = true;
                };
                if (_got != _want) {
                    _t.errorf(((("%U incorrect: got %t; want %t" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsLetterLatin1(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_i <= ((255 : GoInt32)), _i++, {
                var _got:Bool = isLetter(_i);
                var _want:Bool = is_(letter, _i);
                if (_got != _want) {
                    _t.errorf(((("%U incorrect: got %t; want %t" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsUpperLatin1(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_i <= ((255 : GoInt32)), _i++, {
                var _got:Bool = isUpper(_i);
                var _want:Bool = is_(upper, _i);
                if (_got != _want) {
                    _t.errorf(((("%U incorrect: got %t; want %t" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsLowerLatin1(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_i <= ((255 : GoInt32)), _i++, {
                var _got:Bool = isLower(_i);
                var _want:Bool = is_(lower, _i);
                if (_got != _want) {
                    _t.errorf(((("%U incorrect: got %t; want %t" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testNumberLatin1(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_i <= ((255 : GoInt32)), _i++, {
                var _got:Bool = isNumber(_i);
                var _want:Bool = is_(number, _i);
                if (_got != _want) {
                    _t.errorf(((("%U incorrect: got %t; want %t" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsPrintLatin1(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_i <= ((255 : GoInt32)), _i++, {
                var _got:Bool = isPrint(_i);
                var _want:Bool = in_(_i, ...printRanges.__toArray__());
                if (_i == (((((" " : GoString))).code : GoRune))) {
                    _want = true;
                };
                if (_got != _want) {
                    _t.errorf(((("%U incorrect: got %t; want %t" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsGraphicLatin1(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_i <= ((255 : GoInt32)), _i++, {
                var _got:Bool = isGraphic(_i);
                var _want:Bool = in_(_i, ...graphicRanges.__toArray__());
                if (_got != _want) {
                    _t.errorf(((("%U incorrect: got %t; want %t" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsPunctLatin1(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_i <= ((255 : GoInt32)), _i++, {
                var _got:Bool = isPunct(_i);
                var _want:Bool = is_(punct, _i);
                if (_got != _want) {
                    _t.errorf(((("%U incorrect: got %t; want %t" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsSpaceLatin1(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_i <= ((255 : GoInt32)), _i++, {
                var _got:Bool = isSpace(_i);
                var _want:Bool = is_(white_Space, _i);
                if (_got != _want) {
                    _t.errorf(((("%U incorrect: got %t; want %t" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsSymbolLatin1(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_i <= ((255 : GoInt32)), _i++, {
                var _got:Bool = isSymbol(_i);
                var _want:Bool = is_(symbol, _i);
                if (_got != _want) {
                    _t.errorf(((("%U incorrect: got %t; want %t" : GoString))), Go.toInterface(_i), Go.toInterface(_got), Go.toInterface(_want));
                };
            });
        };
    }
function testIsLetter(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _r in _upperTest) {
            if (!isLetter(_r)) {
                _t.errorf(((("IsLetter(U+%04X) = false, want true" : GoString))), Go.toInterface(_r));
            };
        };
        for (_1 => _r in _letterTest) {
            if (!isLetter(_r)) {
                _t.errorf(((("IsLetter(U+%04X) = false, want true" : GoString))), Go.toInterface(_r));
            };
        };
        for (_2 => _r in _notletterTest) {
            if (isLetter(_r)) {
                _t.errorf(((("IsLetter(U+%04X) = true, want false" : GoString))), Go.toInterface(_r));
            };
        };
    }
function testIsUpper(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _r in _upperTest) {
            if (!isUpper(_r)) {
                _t.errorf(((("IsUpper(U+%04X) = false, want true" : GoString))), Go.toInterface(_r));
            };
        };
        for (_1 => _r in _notupperTest) {
            if (isUpper(_r)) {
                _t.errorf(((("IsUpper(U+%04X) = true, want false" : GoString))), Go.toInterface(_r));
            };
        };
        for (_2 => _r in _notletterTest) {
            if (isUpper(_r)) {
                _t.errorf(((("IsUpper(U+%04X) = true, want false" : GoString))), Go.toInterface(_r));
            };
        };
    }
function _caseString(_c:GoInt):GoString {
        if (_c == ((0 : GoInt))) {
            return ((("UpperCase" : GoString)));
        } else if (_c == ((1 : GoInt))) {
            return ((("LowerCase" : GoString)));
        } else if (_c == ((2 : GoInt))) {
            return ((("TitleCase" : GoString)));
        };
        return ((("ErrorCase" : GoString)));
    }
function testTo(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _c in _caseTest) {
            var _r:GoInt32 = to(_c._cas, _c._in);
            if (_c._out != _r) {
                _t.errorf(((("To(U+%04X, %s) = U+%04X want U+%04X" : GoString))), Go.toInterface(_c._in), Go.toInterface(_caseString(_c._cas)), Go.toInterface(_r), Go.toInterface(_c._out));
            };
        };
    }
function testToUpperCase(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _c in _caseTest) {
            if (_c._cas != ((0 : GoInt))) {
                continue;
            };
            var _r:GoInt32 = toUpper(_c._in);
            if (_c._out != _r) {
                _t.errorf(((("ToUpper(U+%04X) = U+%04X want U+%04X" : GoString))), Go.toInterface(_c._in), Go.toInterface(_r), Go.toInterface(_c._out));
            };
        };
    }
function testToLowerCase(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _c in _caseTest) {
            if (_c._cas != ((1 : GoInt))) {
                continue;
            };
            var _r:GoInt32 = toLower(_c._in);
            if (_c._out != _r) {
                _t.errorf(((("ToLower(U+%04X) = U+%04X want U+%04X" : GoString))), Go.toInterface(_c._in), Go.toInterface(_r), Go.toInterface(_c._out));
            };
        };
    }
function testToTitleCase(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _c in _caseTest) {
            if (_c._cas != ((2 : GoInt))) {
                continue;
            };
            var _r:GoInt32 = toTitle(_c._in);
            if (_c._out != _r) {
                _t.errorf(((("ToTitle(U+%04X) = U+%04X want U+%04X" : GoString))), Go.toInterface(_c._in), Go.toInterface(_r), Go.toInterface(_c._out));
            };
        };
    }
function testIsSpace(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _c in _spaceTest) {
            if (!isSpace(_c)) {
                _t.errorf(((("IsSpace(U+%04X) = false; want true" : GoString))), Go.toInterface(_c));
            };
        };
        for (_1 => _c in _letterTest) {
            if (isSpace(_c)) {
                _t.errorf(((("IsSpace(U+%04X) = true; want false" : GoString))), Go.toInterface(_c));
            };
        };
    }
function testLetterOptimizations(_t:stdgo.testing.Testing.T_):Void {
        {
            var _i:GoInt32 = ((((0 : GoInt32)) : GoRune));
            Go.cfor(_i <= ((255 : GoInt32)), _i++, {
                if (is_(letter, _i) != isLetter(_i)) {
                    _t.errorf(((("IsLetter(U+%04X) disagrees with Is(Letter)" : GoString))), Go.toInterface(_i));
                };
                if (is_(upper, _i) != isUpper(_i)) {
                    _t.errorf(((("IsUpper(U+%04X) disagrees with Is(Upper)" : GoString))), Go.toInterface(_i));
                };
                if (is_(lower, _i) != isLower(_i)) {
                    _t.errorf(((("IsLower(U+%04X) disagrees with Is(Lower)" : GoString))), Go.toInterface(_i));
                };
                if (is_(title, _i) != isTitle(_i)) {
                    _t.errorf(((("IsTitle(U+%04X) disagrees with Is(Title)" : GoString))), Go.toInterface(_i));
                };
                if (is_(white_Space, _i) != isSpace(_i)) {
                    _t.errorf(((("IsSpace(U+%04X) disagrees with Is(White_Space)" : GoString))), Go.toInterface(_i));
                };
                if (to(((0 : GoInt)), _i) != toUpper(_i)) {
                    _t.errorf(((("ToUpper(U+%04X) disagrees with To(Upper)" : GoString))), Go.toInterface(_i));
                };
                if (to(((1 : GoInt)), _i) != toLower(_i)) {
                    _t.errorf(((("ToLower(U+%04X) disagrees with To(Lower)" : GoString))), Go.toInterface(_i));
                };
                if (to(((2 : GoInt)), _i) != toTitle(_i)) {
                    _t.errorf(((("ToTitle(U+%04X) disagrees with To(Title)" : GoString))), Go.toInterface(_i));
                };
            });
        };
    }
function testTurkishCase(_t:stdgo.testing.Testing.T_):Void {
        var _lower:Slice<GoInt32> = ((((("abcçdefgğhıijklmnoöprsştuüvyz" : GoString))) : Slice<GoRune>));
        var _upper:Slice<GoInt32> = ((((("ABCÇDEFGĞHIİJKLMNOÖPRSŞTUÜVYZ" : GoString))) : Slice<GoRune>));
        for (_i => _l in _lower) {
            var _u:GoInt32 = (_upper != null ? _upper[_i] : ((0 : GoInt32)));
            if (turkishCase.toLower(_l) != _l) {
                _t.errorf(((("lower(U+%04X) is U+%04X not U+%04X" : GoString))), Go.toInterface(_l), Go.toInterface(turkishCase.toLower(_l)), Go.toInterface(_l));
            };
            if (turkishCase.toUpper(_u) != _u) {
                _t.errorf(((("upper(U+%04X) is U+%04X not U+%04X" : GoString))), Go.toInterface(_u), Go.toInterface(turkishCase.toUpper(_u)), Go.toInterface(_u));
            };
            if (turkishCase.toUpper(_l) != _u) {
                _t.errorf(((("upper(U+%04X) is U+%04X not U+%04X" : GoString))), Go.toInterface(_l), Go.toInterface(turkishCase.toUpper(_l)), Go.toInterface(_u));
            };
            if (turkishCase.toLower(_u) != _l) {
                _t.errorf(((("lower(U+%04X) is U+%04X not U+%04X" : GoString))), Go.toInterface(_u), Go.toInterface(turkishCase.toLower(_l)), Go.toInterface(_l));
            };
            if (turkishCase.toTitle(_u) != _u) {
                _t.errorf(((("title(U+%04X) is U+%04X not U+%04X" : GoString))), Go.toInterface(_u), Go.toInterface(turkishCase.toTitle(_u)), Go.toInterface(_u));
            };
            if (turkishCase.toTitle(_l) != _u) {
                _t.errorf(((("title(U+%04X) is U+%04X not U+%04X" : GoString))), Go.toInterface(_l), Go.toInterface(turkishCase.toTitle(_l)), Go.toInterface(_u));
            };
        };
    }
function testSimpleFold(_t:stdgo.testing.Testing.T_):Void {
        for (_0 => _tt in _simpleFoldTests) {
            var _cycle:Slice<GoInt32> = ((_tt : Slice<GoRune>));
            var _r:GoInt32 = (_cycle != null ? _cycle[(_cycle != null ? _cycle.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoInt32)));
            for (_1 => _out in _cycle) {
                {
                    var _r:GoInt32 = simpleFold(_r);
                    if (_r != _out) {
                        _t.errorf(((("SimpleFold(%#U) = %#U, want %#U" : GoString))), Go.toInterface(_r), Go.toInterface(_r), Go.toInterface(_out));
                    };
                };
                _r = _out;
            };
        };
        {
            var _r:GoInt32 = simpleFold(((-42 : GoInt32)));
            if (_r != ((-42 : GoInt32))) {
                _t.errorf(((("SimpleFold(-42) = %v, want -42" : GoString))), Go.toInterface(_r));
            };
        };
    }
function testCalibrate(_t:stdgo.testing.Testing.T_):Void {
        if (!_calibrate.value) {
            return;
        };
        if (false) {
            stdgo.fmt.Fmt.printf(((("warning: running calibration on %s\n" : GoString))), Go.toInterface(((("wasm" : GoString)))));
        };
        var _n:GoInt = stdgo.sort.Sort.search(((64 : GoInt)), function(_n:GoInt):Bool {
            var _tab:Slice<Range16> = _fakeTable(_n);
            var _blinear:Ref<stdgo.testing.Testing.B> -> Void = function(_b:stdgo.testing.Testing.B):Void {
                var _tab:Slice<Range16> = _tab;
                var _max:GoInt = (_n * ((5 : GoInt))) + ((20 : GoInt));
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        {
                            var _j:GoInt = ((0 : GoInt));
                            Go.cfor(_j <= _max, _j++, {
                                _linear(_tab, ((_j : GoUInt16)));
                            });
                        };
                    });
                };
            };
            var _bbinary:Ref<stdgo.testing.Testing.B> -> Void = function(_b:stdgo.testing.Testing.B):Void {
                var _tab:Slice<Range16> = _tab;
                var _max:GoInt = (_n * ((5 : GoInt))) + ((20 : GoInt));
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _b.n, _i++, {
                        {
                            var _j:GoInt = ((0 : GoInt));
                            Go.cfor(_j <= _max, _j++, {
                                _binary(_tab, ((_j : GoUInt16)));
                            });
                        };
                    });
                };
            };
            var _bmlinear:stdgo.testing.Testing.BenchmarkResult = (stdgo.testing.Testing.benchmark(_blinear) == null ? null : stdgo.testing.Testing.benchmark(_blinear).__copy__());
            var _bmbinary:stdgo.testing.Testing.BenchmarkResult = (stdgo.testing.Testing.benchmark(_bbinary) == null ? null : stdgo.testing.Testing.benchmark(_bbinary).__copy__());
            stdgo.fmt.Fmt.printf(((("n=%d: linear=%d binary=%d\n" : GoString))), Go.toInterface(_n), Go.toInterface(_bmlinear.nsPerOp()), Go.toInterface(_bmbinary.nsPerOp()));
            return (_bmlinear.nsPerOp() * ((100 : GoInt64))) > (_bmbinary.nsPerOp() * ((110 : GoInt64)));
        });
        stdgo.fmt.Fmt.printf(((("calibration: linear cutoff = %d\n" : GoString))), Go.toInterface(_n));
    }
function _fakeTable(_n:GoInt):Slice<Range16> {
        var _r16:Slice<Range16> = ((null : Slice<Range16>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                _r16 = (_r16 != null ? _r16.__append__(((new Range16(((((_i * ((5 : GoInt))) + ((10 : GoInt))) : GoUInt16)), ((((_i * ((5 : GoInt))) + ((12 : GoInt))) : GoUInt16)), ((1 : GoUInt16))) : Range16))) : new Slice<Range16>(((new Range16(((((_i * ((5 : GoInt))) + ((10 : GoInt))) : GoUInt16)), ((((_i * ((5 : GoInt))) + ((12 : GoInt))) : GoUInt16)), ((1 : GoUInt16))) : Range16))));
            });
        };
        return _r16;
    }
function _linear(_ranges:Slice<Range16>, _r:GoUInt16):Bool {
        for (_i => _ in _ranges) {
            var _range_:Ref<Range16> = (_ranges != null ? _ranges[_i] : new Range16());
            if (_r < _range_.lo) {
                return false;
            };
            if (_r <= _range_.hi) {
                return ((_r - _range_.lo) % _range_.stride) == ((0 : GoUInt16));
            };
        };
        return false;
    }
function _binary(_ranges:Slice<Range16>, _r:GoUInt16):Bool {
        var _lo:GoInt = ((0 : GoInt));
        var _hi:GoInt = (_ranges != null ? _ranges.length : ((0 : GoInt)));
        while (_lo < _hi) {
            var _m:GoInt = _lo + ((_hi - _lo) / ((2 : GoInt)));
            var _range_:Ref<Range16> = (_ranges != null ? _ranges[_m] : new Range16());
            if ((_range_.lo <= _r) && (_r <= _range_.hi)) {
                return ((_r - _range_.lo) % _range_.stride) == ((0 : GoUInt16));
            };
            if (_r < _range_.lo) {
                _hi = _m;
            } else {
                _lo = _m + ((1 : GoInt));
            };
        };
        return false;
    }
function testLatinOffset(_t:stdgo.testing.Testing.T_):Void {
        var _maps:Slice<GoMap<GoString, Ref<RangeTable>>> = ((new Slice<GoMap<GoString, Ref<RangeTable>>>(categories, foldCategory, foldScript, properties, scripts) : Slice<GoMap<GoString, Ref<RangeTable>>>));
        for (_0 => _m in _maps) {
            for (_name => _tab in _m) {
                var _i:GoInt = ((0 : GoInt));
                while ((_i < (_tab.r16 != null ? _tab.r16.length : ((0 : GoInt)))) && ((_tab.r16 != null ? _tab.r16[_i] : new Range16()).hi <= ((255 : GoUInt16)))) {
                    _i++;
                };
                if (_tab.latinOffset != _i) {
                    _t.errorf(((("%s: LatinOffset=%d, want %d" : GoString))), Go.toInterface(_name), Go.toInterface(_tab.latinOffset), Go.toInterface(_i));
                };
            };
        };
    }
function testSpecialCaseNoMapping(_t:stdgo.testing.Testing.T_):Void {
        var _noChangeForCapitalA:CaseRange = ((new CaseRange(((((("A" : GoString))).code : GoRune)), ((((("A" : GoString))).code : GoRune)), ((new GoArray<GoInt32>(((0 : GoInt32)), ((0 : GoInt32)), ((0 : GoInt32))) : GoArray<GoInt32>))) : CaseRange));
        var _got:GoString = stdgo.strings.Strings.toLowerSpecial(((((new Slice<CaseRange>((_noChangeForCapitalA == null ? null : _noChangeForCapitalA.__copy__())) : Slice<CaseRange>)) : SpecialCase)), ((("ABC" : GoString))));
        var _want:GoString = ((("Abc" : GoString)));
        if (_got != _want) {
            _t.errorf(((("got %q; want %q" : GoString))), Go.toInterface(_got), Go.toInterface(_want));
        };
    }
function testNegativeRune(_t:stdgo.testing.Testing.T_):Void {
        var _nonLatin1:Slice<GoUInt32> = ((new Slice<GoUInt32>(((256 : GoUInt32)), ((257 : GoUInt32)), ((453 : GoUInt32)), ((768 : GoUInt32)), ((1632 : GoUInt32)), ((894 : GoUInt32)), ((706 : GoUInt32)), ((5760 : GoUInt32))) : Slice<GoUInt32>));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < (((255 : GoInt)) + (_nonLatin1 != null ? _nonLatin1.length : ((0 : GoInt)))), _i++, {
                var _base:GoUInt32 = ((_i : GoUInt32));
                if (_i >= ((255 : GoInt))) {
                    _base = (_nonLatin1 != null ? _nonLatin1[_i - ((255 : GoInt))] : ((0 : GoUInt32)));
                };
                var _r:GoInt32 = (((_base - (("2147483648" : GoUInt32))) : GoRune));
                if (is_(letter, _r)) {
                    _t.errorf(((("Is(Letter, 0x%x - 1<<31) = true, want false" : GoString))), Go.toInterface(_base));
                };
                if (isControl(_r)) {
                    _t.errorf(((("IsControl(0x%x - 1<<31) = true, want false" : GoString))), Go.toInterface(_base));
                };
                if (isDigit(_r)) {
                    _t.errorf(((("IsDigit(0x%x - 1<<31) = true, want false" : GoString))), Go.toInterface(_base));
                };
                if (isGraphic(_r)) {
                    _t.errorf(((("IsGraphic(0x%x - 1<<31) = true, want false" : GoString))), Go.toInterface(_base));
                };
                if (isLetter(_r)) {
                    _t.errorf(((("IsLetter(0x%x - 1<<31) = true, want false" : GoString))), Go.toInterface(_base));
                };
                if (isLower(_r)) {
                    _t.errorf(((("IsLower(0x%x - 1<<31) = true, want false" : GoString))), Go.toInterface(_base));
                };
                if (isMark(_r)) {
                    _t.errorf(((("IsMark(0x%x - 1<<31) = true, want false" : GoString))), Go.toInterface(_base));
                };
                if (isNumber(_r)) {
                    _t.errorf(((("IsNumber(0x%x - 1<<31) = true, want false" : GoString))), Go.toInterface(_base));
                };
                if (isPrint(_r)) {
                    _t.errorf(((("IsPrint(0x%x - 1<<31) = true, want false" : GoString))), Go.toInterface(_base));
                };
                if (isPunct(_r)) {
                    _t.errorf(((("IsPunct(0x%x - 1<<31) = true, want false" : GoString))), Go.toInterface(_base));
                };
                if (isSpace(_r)) {
                    _t.errorf(((("IsSpace(0x%x - 1<<31) = true, want false" : GoString))), Go.toInterface(_base));
                };
                if (isSymbol(_r)) {
                    _t.errorf(((("IsSymbol(0x%x - 1<<31) = true, want false" : GoString))), Go.toInterface(_base));
                };
                if (isTitle(_r)) {
                    _t.errorf(((("IsTitle(0x%x - 1<<31) = true, want false" : GoString))), Go.toInterface(_base));
                };
                if (isUpper(_r)) {
                    _t.errorf(((("IsUpper(0x%x - 1<<31) = true, want false" : GoString))), Go.toInterface(_base));
                };
            });
        };
    }
function testCategories(_t:stdgo.testing.Testing.T_):Void {
        var _notTested:GoMap<GoString, Bool> = new GoObjectMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
        for (_k => _ in categories) {
            if (_notTested != null) _notTested[_k] = true;
        };
        for (_0 => _test in _inCategoryTest) {
            {
                var __tmp__ = (categories != null && categories.__exists__(_test._script) ? { value : categories[_test._script], ok : true } : { value : ((null : Ref<RangeTable>)), ok : false }), _1:Ref<RangeTable> = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (!_ok) {
                    _t.fatal(Go.toInterface(_test._script), Go.toInterface(((("not a known category" : GoString)))));
                };
            };
            if (!is_((categories != null ? categories[_test._script] : ((null : Ref<RangeTable>))), _test._rune)) {
                _t.errorf(((("IsCategory(%U, %s) = false, want true" : GoString))), Go.toInterface(_test._rune), Go.toInterface(_test._script));
            };
            if (_notTested != null) _notTested.__remove__(_test._script);
        };
        for (_k => _ in _notTested) {
            _t.error(Go.toInterface(((("category not tested:" : GoString)))), Go.toInterface(_k));
        };
    }
function testProperties(_t:stdgo.testing.Testing.T_):Void {
        var _notTested:GoMap<GoString, Bool> = new GoObjectMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
        for (_k => _ in properties) {
            if (_notTested != null) _notTested[_k] = true;
        };
        for (_0 => _test in _inPropTest) {
            {
                var __tmp__ = (properties != null && properties.__exists__(_test._script) ? { value : properties[_test._script], ok : true } : { value : ((null : Ref<RangeTable>)), ok : false }), _1:Ref<RangeTable> = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (!_ok) {
                    _t.fatal(Go.toInterface(_test._script), Go.toInterface(((("not a known prop" : GoString)))));
                };
            };
            if (!is_((properties != null ? properties[_test._script] : ((null : Ref<RangeTable>))), _test._rune)) {
                _t.errorf(((("IsCategory(%U, %s) = false, want true" : GoString))), Go.toInterface(_test._rune), Go.toInterface(_test._script));
            };
            if (_notTested != null) _notTested.__remove__(_test._script);
        };
        for (_k => _ in _notTested) {
            _t.error(Go.toInterface(((("property not tested:" : GoString)))), Go.toInterface(_k));
        };
    }
class T_caseT_wrapper {
    public var __t__ : T_caseT;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
class T__wrapper {
    public var __t__ : T_;
    public function new(__t__) this.__t__ = __t__;
    public function __underlying__():AnyInterface return Go.toInterface(this);
}
