package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function testValidRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.unicode.utf8_test.Utf8_test__validrunetests._validrunetests) {
            {
                var _ok = (stdgo._internal.unicode.utf8.Utf8_validRune.validRune(_tt._r) : Bool);
                if (_ok != (_tt._ok)) {
                    _t.errorf(("ValidRune(%#U) = %t, want %t" : stdgo.GoString), stdgo.Go.toInterface(_tt._r), stdgo.Go.toInterface(_ok), stdgo.Go.toInterface(_tt._ok));
                };
            };
        };
    }
