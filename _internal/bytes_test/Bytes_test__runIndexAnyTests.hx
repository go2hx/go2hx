package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function _runIndexAnyTests(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f:(stdgo.Slice<stdgo.GoUInt8>, stdgo.GoString) -> stdgo.GoInt, _funcName:stdgo.GoString, _testCases:stdgo.Slice<_internal.bytes_test.Bytes_test_BinOpTest.BinOpTest>):Void {
        for (__0 => _test in _testCases) {
            var _a = (_test._a : stdgo.Slice<stdgo.GoUInt8>);
            var _actual = (_f(_a, _test._b?.__copy__()) : stdgo.GoInt);
            if (_actual != (_test._i)) {
                _t.errorf(("%s(%q,%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_test._b), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_test._i));
            };
        };
    }
