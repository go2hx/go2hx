package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function testIsUpper(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _r in _internal.unicode_test.Unicode_test__upperTest._upperTest) {
            if (!stdgo._internal.unicode.Unicode_isUpper.isUpper(_r)) {
                _t.errorf(("IsUpper(U+%04X) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
        for (__1 => _r in _internal.unicode_test.Unicode_test__notupperTest._notupperTest) {
            if (stdgo._internal.unicode.Unicode_isUpper.isUpper(_r)) {
                _t.errorf(("IsUpper(U+%04X) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
        for (__2 => _r in _internal.unicode_test.Unicode_test__notletterTest._notletterTest) {
            if (stdgo._internal.unicode.Unicode_isUpper.isUpper(_r)) {
                _t.errorf(("IsUpper(U+%04X) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
    }
