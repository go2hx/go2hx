package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function testToTitleCase(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _c in _internal.unicode_test.Unicode_test__caseTest._caseTest) {
            if (_c._cas != ((2 : stdgo.GoInt))) {
                continue;
            };
            var _r = (stdgo._internal.unicode.Unicode_toTitle.toTitle(_c._in) : stdgo.GoInt32);
            if (_c._out != (_r)) {
                _t.errorf(("ToTitle(U+%04X) = U+%04X want U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_c._in), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_c._out));
            };
        };
    }