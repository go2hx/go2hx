package _internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
function testDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.unicode.utf16_test.Utf16_test__decodeTests._decodeTests) {
            var _out = stdgo._internal.unicode.utf16.Utf16_decode.decode(_tt._in);
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out))) {
                _t.errorf(("Decode(%x) = %x; want %x" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
