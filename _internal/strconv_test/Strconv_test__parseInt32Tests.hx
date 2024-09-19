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
var _parseInt32Tests : stdgo.Slice<_internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test> = (new stdgo.Slice<_internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test>(25, 25, ...[
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt32), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("0" : stdgo.GoString), (0 : stdgo.GoInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("-0" : stdgo.GoString), (0 : stdgo.GoInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("1" : stdgo.GoString), (1 : stdgo.GoInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("-1" : stdgo.GoString), (-1 : stdgo.GoInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("12345" : stdgo.GoString), (12345 : stdgo.GoInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("-12345" : stdgo.GoString), (-12345 : stdgo.GoInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("012345" : stdgo.GoString), (12345 : stdgo.GoInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("-012345" : stdgo.GoString), (-12345 : stdgo.GoInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("12345x" : stdgo.GoString), (0 : stdgo.GoInt32), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("-12345x" : stdgo.GoString), (0 : stdgo.GoInt32), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("987654321" : stdgo.GoString), (987654321 : stdgo.GoInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("-987654321" : stdgo.GoString), (-987654321 : stdgo.GoInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("2147483647" : stdgo.GoString), (2147483647 : stdgo.GoInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("-2147483647" : stdgo.GoString), (-2147483647 : stdgo.GoInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("2147483648" : stdgo.GoString), (2147483647 : stdgo.GoInt32), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("-2147483648" : stdgo.GoString), (-2147483648 : stdgo.GoInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("2147483649" : stdgo.GoString), (2147483647 : stdgo.GoInt32), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("-2147483649" : stdgo.GoString), (-2147483648 : stdgo.GoInt32), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("-1_2_3_4_5" : stdgo.GoString), (0 : stdgo.GoInt32), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("-_12345" : stdgo.GoString), (0 : stdgo.GoInt32), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("_12345" : stdgo.GoString), (0 : stdgo.GoInt32), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("1__2345" : stdgo.GoString), (0 : stdgo.GoInt32), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("12345_" : stdgo.GoString), (0 : stdgo.GoInt32), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test),
(new _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test(("123%45" : stdgo.GoString), (0 : stdgo.GoInt32), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test)].concat([for (i in 25 ... (25 > 25 ? 25 : 25 : stdgo.GoInt).toBasic()) ({} : _internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test)])) : stdgo.Slice<_internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test>);
