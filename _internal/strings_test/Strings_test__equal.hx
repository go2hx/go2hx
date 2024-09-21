package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function _equal(_m:stdgo.GoString, _s1:stdgo.GoString, _s2:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Bool {
        if (_s1 == (_s2)) {
            return true;
        };
        var _e1 = stdgo._internal.strings.Strings_split.split(_s1?.__copy__(), stdgo.Go.str()?.__copy__());
        var _e2 = stdgo._internal.strings.Strings_split.split(_s2?.__copy__(), stdgo.Go.str()?.__copy__());
        for (_i => _c1 in _e1) {
            if ((_i >= (_e2.length) : Bool)) {
                break;
            };
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_c1?.__copy__()), _r1:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_e2[(_i : stdgo.GoInt)]?.__copy__()), _r2:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1;
            if (_r1 != (_r2)) {
                _t.errorf(("%s diff at %d: U+%04X U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_r1), stdgo.Go.toInterface(_r2));
            };
        };
        return false;
    }
