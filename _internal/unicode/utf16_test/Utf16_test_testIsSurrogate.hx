package _internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
function testIsSurrogate(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _tt in _internal.unicode.utf16_test.Utf16_test__surrogateTests._surrogateTests) {
            var _got = (stdgo._internal.unicode.utf16.Utf16_isSurrogate.isSurrogate(_tt._r) : Bool);
            if (_got != (_tt._want)) {
                _t.errorf(("%d: IsSurrogate(%q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._r), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
