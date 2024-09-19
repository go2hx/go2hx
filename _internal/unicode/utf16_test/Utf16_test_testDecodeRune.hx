package _internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
function testDecodeRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _tt in _internal.unicode.utf16_test.Utf16_test__decodeRuneTests._decodeRuneTests) {
            var _got = (stdgo._internal.unicode.utf16.Utf16_decodeRune.decodeRune(_tt._r1, _tt._r2) : stdgo.GoInt32);
            if (_got != (_tt._want)) {
                _t.errorf(("%d: DecodeRune(%q, %q) = %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_tt._r1), stdgo.Go.toInterface(_tt._r2), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
            };
        };
    }
