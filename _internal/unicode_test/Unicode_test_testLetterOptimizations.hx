package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function testLetterOptimizations(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            stdgo.Go.cfor((_i <= (255 : stdgo.GoInt32) : Bool), _i++, {
                if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_letter.letter, _i) != (stdgo._internal.unicode.Unicode_isLetter.isLetter(_i))) {
                    _t.errorf(("IsLetter(U+%04X) disagrees with Is(Letter)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_upper.upper, _i) != (stdgo._internal.unicode.Unicode_isUpper.isUpper(_i))) {
                    _t.errorf(("IsUpper(U+%04X) disagrees with Is(Upper)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_lower.lower, _i) != (stdgo._internal.unicode.Unicode_isLower.isLower(_i))) {
                    _t.errorf(("IsLower(U+%04X) disagrees with Is(Lower)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_title.title, _i) != (stdgo._internal.unicode.Unicode_isTitle.isTitle(_i))) {
                    _t.errorf(("IsTitle(U+%04X) disagrees with Is(Title)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_white_Space.white_Space, _i) != (stdgo._internal.unicode.Unicode_isSpace.isSpace(_i))) {
                    _t.errorf(("IsSpace(U+%04X) disagrees with Is(White_Space)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (stdgo._internal.unicode.Unicode_to.to((0 : stdgo.GoInt), _i) != (stdgo._internal.unicode.Unicode_toUpper.toUpper(_i))) {
                    _t.errorf(("ToUpper(U+%04X) disagrees with To(Upper)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (stdgo._internal.unicode.Unicode_to.to((1 : stdgo.GoInt), _i) != (stdgo._internal.unicode.Unicode_toLower.toLower(_i))) {
                    _t.errorf(("ToLower(U+%04X) disagrees with To(Lower)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (stdgo._internal.unicode.Unicode_to.to((2 : stdgo.GoInt), _i) != (stdgo._internal.unicode.Unicode_toTitle.toTitle(_i))) {
                    _t.errorf(("ToTitle(U+%04X) disagrees with To(Title)" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            });
        };
    }
