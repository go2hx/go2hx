package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function testIsLetter(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _r in _internal.unicode_test.Unicode_test__upperTest._upperTest) {
            if (!stdgo._internal.unicode.Unicode_isLetter.isLetter(_r)) {
                _t.errorf(("IsLetter(U+%04X) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
        for (__1 => _r in _internal.unicode_test.Unicode_test__letterTest._letterTest) {
            if (!stdgo._internal.unicode.Unicode_isLetter.isLetter(_r)) {
                _t.errorf(("IsLetter(U+%04X) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
        for (__2 => _r in _internal.unicode_test.Unicode_test__notletterTest._notletterTest) {
            if (stdgo._internal.unicode.Unicode_isLetter.isLetter(_r)) {
                _t.errorf(("IsLetter(U+%04X) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
    }
