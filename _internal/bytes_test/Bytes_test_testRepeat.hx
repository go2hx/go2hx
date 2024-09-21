package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testRepeat(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.bytes_test.Bytes_test_repeatTests.repeatTests) {
            var _tin = (_tt._in : stdgo.Slice<stdgo.GoUInt8>);
            var _tout = (_tt._out : stdgo.Slice<stdgo.GoUInt8>);
            var _a = stdgo._internal.bytes.Bytes_repeat.repeat(_tin, _tt._count);
            if (!stdgo._internal.bytes.Bytes_equal.equal(_a, _tout)) {
                _t.errorf(("Repeat(%q, %d) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tin), stdgo.Go.toInterface(_tt._count), stdgo.Go.toInterface(_a), stdgo.Go.toInterface(_tout));
                continue;
            };
        };
    }
