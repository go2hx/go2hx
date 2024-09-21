package _internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
function testAppendRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.unicode.utf16_test.Utf16_test__encodeTests._encodeTests) {
            var _out:stdgo.Slice<stdgo.GoUInt16> = (null : stdgo.Slice<stdgo.GoUInt16>);
            for (__1 => _u in _tt._in) {
                _out = stdgo._internal.unicode.utf16.Utf16_appendRune.appendRune(_out, _u);
            };
            if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out))) {
                _t.errorf(("AppendRune(%x) = %x; want %x" : stdgo.GoString), stdgo.Go.toInterface(_tt._in), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_tt._out));
            };
        };
    }
