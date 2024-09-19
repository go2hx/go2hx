package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testSpecialCase(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _lower = ("abcçdefgğhıijklmnoöprsştuüvyz" : stdgo.GoString);
        var _upper = ("ABCÇDEFGĞHIİJKLMNOÖPRSŞTUÜVYZ" : stdgo.GoString);
        var _u = (stdgo._internal.strings.Strings_toUpperSpecial.toUpperSpecial(stdgo._internal.unicode.Unicode_turkishCase.turkishCase, _upper?.__copy__())?.__copy__() : stdgo.GoString);
        if (_u != (_upper)) {
            _t.errorf(("Upper(upper) is %s not %s" : stdgo.GoString), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(_upper));
        };
        _u = stdgo._internal.strings.Strings_toUpperSpecial.toUpperSpecial(stdgo._internal.unicode.Unicode_turkishCase.turkishCase, _lower?.__copy__())?.__copy__();
        if (_u != (_upper)) {
            _t.errorf(("Upper(lower) is %s not %s" : stdgo.GoString), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(_upper));
        };
        var _l = (stdgo._internal.strings.Strings_toLowerSpecial.toLowerSpecial(stdgo._internal.unicode.Unicode_turkishCase.turkishCase, _lower?.__copy__())?.__copy__() : stdgo.GoString);
        if (_l != (_lower)) {
            _t.errorf(("Lower(lower) is %s not %s" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_lower));
        };
        _l = stdgo._internal.strings.Strings_toLowerSpecial.toLowerSpecial(stdgo._internal.unicode.Unicode_turkishCase.turkishCase, _upper?.__copy__())?.__copy__();
        if (_l != (_lower)) {
            _t.errorf(("Lower(upper) is %s not %s" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(_lower));
        };
    }
