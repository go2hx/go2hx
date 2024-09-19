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
var _parseUint64Tests : stdgo.Slice<_internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test> = (new stdgo.Slice<_internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test>(17, 17, ...[
(new _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test(stdgo.Go.str()?.__copy__(), (0i64 : stdgo.GoUInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test),
(new _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test(("0" : stdgo.GoString), (0i64 : stdgo.GoUInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test),
(new _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test(("1" : stdgo.GoString), (1i64 : stdgo.GoUInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test),
(new _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test(("12345" : stdgo.GoString), (12345i64 : stdgo.GoUInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test),
(new _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test(("012345" : stdgo.GoString), (12345i64 : stdgo.GoUInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test),
(new _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test(("12345x" : stdgo.GoString), (0i64 : stdgo.GoUInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test),
(new _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test(("98765432100" : stdgo.GoString), (98765432100i64 : stdgo.GoUInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test),
(new _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test(("18446744073709551615" : stdgo.GoString), (-1i64 : stdgo.GoUInt64), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test),
(new _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test(("18446744073709551616" : stdgo.GoString), (-1i64 : stdgo.GoUInt64), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test),
(new _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test(("18446744073709551620" : stdgo.GoString), (-1i64 : stdgo.GoUInt64), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test),
(new _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test(("1_2_3_4_5" : stdgo.GoString), (0i64 : stdgo.GoUInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test),
(new _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test(("_12345" : stdgo.GoString), (0i64 : stdgo.GoUInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test),
(new _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test(("1__2345" : stdgo.GoString), (0i64 : stdgo.GoUInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test),
(new _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test(("12345_" : stdgo.GoString), (0i64 : stdgo.GoUInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test),
(new _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test(("-0" : stdgo.GoString), (0i64 : stdgo.GoUInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test),
(new _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test(("-1" : stdgo.GoString), (0i64 : stdgo.GoUInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test),
(new _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test(("+1" : stdgo.GoString), (0i64 : stdgo.GoUInt64), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test)].concat([for (i in 17 ... (17 > 17 ? 17 : 17 : stdgo.GoInt).toBasic()) ({} : _internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test)])) : stdgo.Slice<_internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test>);
