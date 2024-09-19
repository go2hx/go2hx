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
var _parseInt64Tests : stdgo.Slice<_internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test> = (new stdgo.Slice<_internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test>(25, 25, ...[
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(stdgo.Go.str()?.__copy__(), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("0" : stdgo.GoString), (0i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("-0" : stdgo.GoString), (0i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("+0" : stdgo.GoString), (0i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("1" : stdgo.GoString), (1i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("-1" : stdgo.GoString), (-1i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("+1" : stdgo.GoString), (1i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("12345" : stdgo.GoString), (12345i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("-12345" : stdgo.GoString), (-12345i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("012345" : stdgo.GoString), (12345i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("-012345" : stdgo.GoString), (-12345i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("98765432100" : stdgo.GoString), (98765432100i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("-98765432100" : stdgo.GoString), (-98765432100i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("9223372036854775807" : stdgo.GoString), (9223372036854775807i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("-9223372036854775807" : stdgo.GoString), (-9223372036854775807i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("9223372036854775808" : stdgo.GoString), (9223372036854775807i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("-9223372036854775808" : stdgo.GoString), (-9223372036854775808i64 : stdgo.GoInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("9223372036854775809" : stdgo.GoString), (9223372036854775807i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("-9223372036854775809" : stdgo.GoString), (-9223372036854775808i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("-1_2_3_4_5" : stdgo.GoString), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("-_12345" : stdgo.GoString), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("_12345" : stdgo.GoString), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("1__2345" : stdgo.GoString), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("12345_" : stdgo.GoString), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test),
(new _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test(("123%45" : stdgo.GoString), (0i64 : stdgo.GoInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test)].concat([for (i in 25 ... (25 > 25 ? 25 : 25 : stdgo.GoInt).toBasic()) ({} : _internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test)])) : stdgo.Slice<_internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test>);
