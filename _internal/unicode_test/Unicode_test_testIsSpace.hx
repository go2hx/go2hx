package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function testIsSpace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _c in _internal.unicode_test.Unicode_test__spaceTest._spaceTest) {
            if (!stdgo._internal.unicode.Unicode_isSpace.isSpace(_c)) {
                _t.errorf(("IsSpace(U+%04X) = false; want true" : stdgo.GoString), stdgo.Go.toInterface(_c));
            };
        };
        for (__1 => _c in _internal.unicode_test.Unicode_test__letterTest._letterTest) {
            if (stdgo._internal.unicode.Unicode_isSpace.isSpace(_c)) {
                _t.errorf(("IsSpace(U+%04X) = true; want false" : stdgo.GoString), stdgo.Go.toInterface(_c));
            };
        };
    }
