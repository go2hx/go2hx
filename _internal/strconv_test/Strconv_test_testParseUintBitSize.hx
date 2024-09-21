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
function testParseUintBitSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _ in _internal.strconv_test.Strconv_test__parseBitSizeTests._parseBitSizeTests) {
            var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseBitSizeTests._parseBitSizeTests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseErrorTest.T_parseErrorTest>);
            var _testErr = (_test._errStub(("ParseUint" : stdgo.GoString), _test._arg) : stdgo.Error);
            var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(("0" : stdgo.GoString), (0 : stdgo.GoInt), _test._arg), __0:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (!_internal.strconv_test.Strconv_test__equalError._equalError(_testErr, _err)) {
                _t.errorf(("ParseUint(\"0\", 0, %v) = 0, %v want 0, %v" : stdgo.GoString), stdgo.Go.toInterface(_test._arg), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_testErr));
            };
        };
    }
