package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function testDigitOptimization(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor((_i <= (255 : stdgo.GoInt32) : Bool), _i++, {
                if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_digit.digit, _i) != (stdgo._internal.unicode.Unicode_isDigit.isDigit(_i))) {
                    _t.errorf(("IsDigit(U+%04X) disagrees with Is(Digit)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            });
        };
    }
