package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function testFullRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _m in _internal.unicode.utf8_test.Utf8_test__utf8map._utf8map) {
            var _b = (_m._str : stdgo.Slice<stdgo.GoUInt8>);
            if (!stdgo._internal.unicode.utf8.Utf8_fullRune.fullRune(_b)) {
                _t.errorf(("FullRune(%q) (%U) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_b), stdgo.Go.toInterface(_m._r));
            };
            var _s = (_m._str?.__copy__() : stdgo.GoString);
            if (!stdgo._internal.unicode.utf8.Utf8_fullRuneInString.fullRuneInString(_s?.__copy__())) {
                _t.errorf(("FullRuneInString(%q) (%U) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_m._r));
            };
            var _b1 = (_b.__slice__((0 : stdgo.GoInt), ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            if (stdgo._internal.unicode.utf8.Utf8_fullRune.fullRune(_b1)) {
                _t.errorf(("FullRune(%q) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_b1));
            };
            var _s1 = ((_b1 : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (stdgo._internal.unicode.utf8.Utf8_fullRuneInString.fullRuneInString(_s1?.__copy__())) {
                _t.errorf(("FullRune(%q) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_s1));
            };
        };
        for (__1 => _s in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[stdgo.Go.str(192)?.__copy__(), stdgo.Go.str(193)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _b = (_s : stdgo.Slice<stdgo.GoUInt8>);
            if (!stdgo._internal.unicode.utf8.Utf8_fullRune.fullRune(_b)) {
                _t.errorf(("FullRune(%q) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
            if (!stdgo._internal.unicode.utf8.Utf8_fullRuneInString.fullRuneInString(_s?.__copy__())) {
                _t.errorf(("FullRuneInString(%q) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
    }
