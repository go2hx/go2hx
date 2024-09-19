package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function testRuneLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.unicode.utf8_test.Utf8_test__runelentests._runelentests) {
            {
                var _size = (stdgo._internal.unicode.utf8.Utf8_runeLen.runeLen(_tt._r) : stdgo.GoInt);
                if (_size != (_tt._size)) {
                    _t.errorf(("RuneLen(%#U) = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._r), stdgo.Go.toInterface(_size), stdgo.Go.toInterface(_tt._size));
                };
            };
        };
    }
