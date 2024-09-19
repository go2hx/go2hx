package _internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
function testEncode(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.unicode.utf16_test.Utf16_test__encodeTests._encodeTests) {
            var _out = stdgo._internal.unicode.utf16.Utf16_encode.encode(_tt._in);
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out))) {
                _t.errorf(("Encode(%x) = %x; want %x" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
