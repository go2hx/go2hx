package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
var _parseInt64BaseTests : stdgo.Slice<_internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest> = (new stdgo.Slice<_internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest>(60, 60, ...[
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("0" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-0" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("1" : stdgo.GoString), (0 : stdgo.GoInt), (1i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-1" : stdgo.GoString), (0 : stdgo.GoInt), (-1i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("12345" : stdgo.GoString), (0 : stdgo.GoInt), (12345i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-12345" : stdgo.GoString), (0 : stdgo.GoInt), (-12345i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("012345" : stdgo.GoString), (0 : stdgo.GoInt), (5349i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-012345" : stdgo.GoString), (0 : stdgo.GoInt), (-5349i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("0x12345" : stdgo.GoString), (0 : stdgo.GoInt), (74565i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-0X12345" : stdgo.GoString), (0 : stdgo.GoInt), (-74565i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("12345x" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-12345x" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("98765432100" : stdgo.GoString), (0 : stdgo.GoInt), (98765432100i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-98765432100" : stdgo.GoString), (0 : stdgo.GoInt), (-98765432100i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("9223372036854775807" : stdgo.GoString), (0 : stdgo.GoInt), (9223372036854775807i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-9223372036854775807" : stdgo.GoString), (0 : stdgo.GoInt), (-9223372036854775807i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("9223372036854775808" : stdgo.GoString), (0 : stdgo.GoInt), (9223372036854775807i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-9223372036854775808" : stdgo.GoString), (0 : stdgo.GoInt), (-9223372036854775808i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("9223372036854775809" : stdgo.GoString), (0 : stdgo.GoInt), (9223372036854775807i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-9223372036854775809" : stdgo.GoString), (0 : stdgo.GoInt), (-9223372036854775808i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("g" : stdgo.GoString), (17 : stdgo.GoInt), (16i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("10" : stdgo.GoString), (25 : stdgo.GoInt), (25i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("holycow" : stdgo.GoString), (35 : stdgo.GoInt), (32544027072i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("holycow" : stdgo.GoString), (36 : stdgo.GoInt), (38493362624i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("0" : stdgo.GoString), (2 : stdgo.GoInt), (0i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-1" : stdgo.GoString), (2 : stdgo.GoInt), (-1i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("1010" : stdgo.GoString), (2 : stdgo.GoInt), (10i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("1000000000000000" : stdgo.GoString), (2 : stdgo.GoInt), (32768i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("111111111111111111111111111111111111111111111111111111111111111" : stdgo.GoString), (2 : stdgo.GoInt), (9223372036854775807i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("1000000000000000000000000000000000000000000000000000000000000000" : stdgo.GoString), (2 : stdgo.GoInt), (9223372036854775807i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-1000000000000000000000000000000000000000000000000000000000000000" : stdgo.GoString), (2 : stdgo.GoInt), (-9223372036854775808i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-1000000000000000000000000000000000000000000000000000000000000001" : stdgo.GoString), (2 : stdgo.GoInt), (-9223372036854775808i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-10" : stdgo.GoString), (8 : stdgo.GoInt), (-8i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("57635436545" : stdgo.GoString), (8 : stdgo.GoInt), (6416645477i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("100000000" : stdgo.GoString), (8 : stdgo.GoInt), (16777216i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("10" : stdgo.GoString), (16 : stdgo.GoInt), (16i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-123456789abcdef" : stdgo.GoString), (16 : stdgo.GoInt), (-81985529216486895i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("7fffffffffffffff" : stdgo.GoString), (16 : stdgo.GoInt), (9223372036854775807i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-0x_1_2_3_4_5" : stdgo.GoString), (0 : stdgo.GoInt), (-74565i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("0x_1_2_3_4_5" : stdgo.GoString), (0 : stdgo.GoInt), (74565i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-_0x12345" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("_-0x12345" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("_0x12345" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("0x__12345" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("0x1__2345" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("0x1234__5" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("0x12345_" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-0_1_2_3_4_5" : stdgo.GoString), (0 : stdgo.GoInt), (-5349i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("0_1_2_3_4_5" : stdgo.GoString), (0 : stdgo.GoInt), (5349i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-_012345" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("_-012345" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("_012345" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("0__12345" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("01234__5" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("012345_" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("+0xf" : stdgo.GoString), (0 : stdgo.GoInt), (15i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("-0xf" : stdgo.GoString), (0 : stdgo.GoInt), (-15i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("0x+f" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest),
(new _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest(("0x-f" : stdgo.GoString), (0 : stdgo.GoInt), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest)].concat([for (i in 60 ... (60 > 60 ? 60 : 60 : stdgo.GoInt).toBasic()) ({} : _internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest)])) : stdgo.Slice<_internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest>);