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
var _parseUint32Tests : stdgo.Slice<_internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test> = (new stdgo.Slice<_internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test>(14, 14, ...[
(new _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test(stdgo.Go.str()?.__copy__(), (0u32 : stdgo.GoUInt32), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test),
(new _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test(("0" : stdgo.GoString), (0u32 : stdgo.GoUInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test),
(new _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test(("1" : stdgo.GoString), (1u32 : stdgo.GoUInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test),
(new _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test(("12345" : stdgo.GoString), (12345u32 : stdgo.GoUInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test),
(new _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test(("012345" : stdgo.GoString), (12345u32 : stdgo.GoUInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test),
(new _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test(("12345x" : stdgo.GoString), (0u32 : stdgo.GoUInt32), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test),
(new _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test(("987654321" : stdgo.GoString), (987654321u32 : stdgo.GoUInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test),
(new _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test(("4294967295" : stdgo.GoString), (-1u32 : stdgo.GoUInt32), (null : stdgo.Error)) : _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test),
(new _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test(("4294967296" : stdgo.GoString), (-1u32 : stdgo.GoUInt32), stdgo._internal.strconv.Strconv_errRange.errRange) : _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test),
(new _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test(("1_2_3_4_5" : stdgo.GoString), (0u32 : stdgo.GoUInt32), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test),
(new _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test(("_12345" : stdgo.GoString), (0u32 : stdgo.GoUInt32), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test),
(new _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test(("_12345" : stdgo.GoString), (0u32 : stdgo.GoUInt32), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test),
(new _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test(("1__2345" : stdgo.GoString), (0u32 : stdgo.GoUInt32), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test),
(new _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test(("12345_" : stdgo.GoString), (0u32 : stdgo.GoUInt32), stdgo._internal.strconv.Strconv_errSyntax.errSyntax) : _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({} : _internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test)])) : stdgo.Slice<_internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test>);
