package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function testDigit(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _r in _internal.unicode_test.Unicode_test__testDigit._testDigit) {
            if (!stdgo._internal.unicode.Unicode_isDigit.isDigit(_r)) {
                _t.errorf(("IsDigit(U+%04X) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
        for (__1 => _r in _internal.unicode_test.Unicode_test__testLetter._testLetter) {
            if (stdgo._internal.unicode.Unicode_isDigit.isDigit(_r)) {
                _t.errorf(("IsDigit(U+%04X) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_r));
            };
        };
    }
