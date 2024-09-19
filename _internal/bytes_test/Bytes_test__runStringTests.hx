package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function _runStringTests(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _f:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>, _funcName:stdgo.GoString, _testCases:stdgo.Slice<_internal.bytes_test.Bytes_test_StringTest.StringTest>):Void {
        for (__0 => _tc in _testCases) {
            var _actual = _f((_tc._in : stdgo.Slice<stdgo.GoUInt8>));
            if (((_actual == null) && (_tc._out != null) : Bool)) {
                _t.errorf(("%s(%q) = nil; want %q" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_tc._out));
            };
            if (((_actual != null) && (_tc._out == null) : Bool)) {
                _t.errorf(("%s(%q) = %q; want nil" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual));
            };
            if (!stdgo._internal.bytes.Bytes_equal.equal(_actual, _tc._out)) {
                _t.errorf(("%s(%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_funcName), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._out));
            };
        };
    }
