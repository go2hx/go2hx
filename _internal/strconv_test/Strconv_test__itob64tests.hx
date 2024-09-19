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
var _itob64tests : stdgo.Slice<_internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test> = (new stdgo.Slice<_internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test>(37, 37, ...[
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((0i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("0" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((1i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("1" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((-1i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("-1" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((12345678i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("12345678" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((-987654321i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("-987654321" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((2147483647i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("2147483647" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((-2147483647i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("-2147483647" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((2147483648i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("2147483648" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((-2147483648i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("-2147483648" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((2147483649i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("2147483649" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((-2147483649i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("-2147483649" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((4294967295i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("4294967295" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((-4294967295i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("-4294967295" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((4294967296i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("4294967296" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((-4294967296i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("-4294967296" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((4294967297i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("4294967297" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((-4294967297i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("-4294967297" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((1125899906842624i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("1125899906842624" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((9223372036854775807i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("9223372036854775807" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((-9223372036854775807i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("-9223372036854775807" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((-9223372036854775808i64 : stdgo.GoInt64), (10 : stdgo.GoInt), ("-9223372036854775808" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((0i64 : stdgo.GoInt64), (2 : stdgo.GoInt), ("0" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((10i64 : stdgo.GoInt64), (2 : stdgo.GoInt), ("1010" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((-1i64 : stdgo.GoInt64), (2 : stdgo.GoInt), ("-1" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((32768i64 : stdgo.GoInt64), (2 : stdgo.GoInt), ("1000000000000000" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((-8i64 : stdgo.GoInt64), (8 : stdgo.GoInt), ("-10" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((6416645477i64 : stdgo.GoInt64), (8 : stdgo.GoInt), ("57635436545" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((16777216i64 : stdgo.GoInt64), (8 : stdgo.GoInt), ("100000000" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((16i64 : stdgo.GoInt64), (16 : stdgo.GoInt), ("10" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((-81985529216486895i64 : stdgo.GoInt64), (16 : stdgo.GoInt), ("-123456789abcdef" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((9223372036854775807i64 : stdgo.GoInt64), (16 : stdgo.GoInt), ("7fffffffffffffff" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((9223372036854775807i64 : stdgo.GoInt64), (2 : stdgo.GoInt), ("111111111111111111111111111111111111111111111111111111111111111" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((-9223372036854775808i64 : stdgo.GoInt64), (2 : stdgo.GoInt), ("-1000000000000000000000000000000000000000000000000000000000000000" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((16i64 : stdgo.GoInt64), (17 : stdgo.GoInt), ("g" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((25i64 : stdgo.GoInt64), (25 : stdgo.GoInt), ("10" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((32544027072i64 : stdgo.GoInt64), (35 : stdgo.GoInt), ("holycow" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test),
(new _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test((38493362624i64 : stdgo.GoInt64), (36 : stdgo.GoInt), ("holycow" : stdgo.GoString)) : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test)].concat([for (i in 37 ... (37 > 37 ? 37 : 37 : stdgo.GoInt).toBasic()) ({} : _internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test)])) : stdgo.Slice<_internal.strconv_test.Strconv_test_T_itob64Test.T_itob64Test>);
