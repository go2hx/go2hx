package _internal.unicode_test;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.Unicode;
function testTurkishCase(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _lower = (("abcçdefgğhıijklmnoöprsştuüvyz" : stdgo.GoString) : stdgo.Slice<stdgo.GoInt32>);
        var _upper = (("ABCÇDEFGĞHIİJKLMNOÖPRSŞTUÜVYZ" : stdgo.GoString) : stdgo.Slice<stdgo.GoInt32>);
        for (_i => _l in _lower) {
            var _u = (_upper[(_i : stdgo.GoInt)] : stdgo.GoInt32);
            if (stdgo._internal.unicode.Unicode_turkishCase.turkishCase.toLower(_l) != (_l)) {
                _t.errorf(("lower(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_turkishCase.turkishCase.toLower(_l)), stdgo.Go.toInterface(_l));
            };
            if (stdgo._internal.unicode.Unicode_turkishCase.turkishCase.toUpper(_u) != (_u)) {
                _t.errorf(("upper(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_turkishCase.turkishCase.toUpper(_u)), stdgo.Go.toInterface(_u));
            };
            if (stdgo._internal.unicode.Unicode_turkishCase.turkishCase.toUpper(_l) != (_u)) {
                _t.errorf(("upper(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_turkishCase.turkishCase.toUpper(_l)), stdgo.Go.toInterface(_u));
            };
            if (stdgo._internal.unicode.Unicode_turkishCase.turkishCase.toLower(_u) != (_l)) {
                _t.errorf(("lower(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_turkishCase.turkishCase.toLower(_l)), stdgo.Go.toInterface(_l));
            };
            if (stdgo._internal.unicode.Unicode_turkishCase.turkishCase.toTitle(_u) != (_u)) {
                _t.errorf(("title(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_u), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_turkishCase.turkishCase.toTitle(_u)), stdgo.Go.toInterface(_u));
            };
            if (stdgo._internal.unicode.Unicode_turkishCase.turkishCase.toTitle(_l) != (_u)) {
                _t.errorf(("title(U+%04X) is U+%04X not U+%04X" : stdgo.GoString), stdgo.Go.toInterface(_l), stdgo.Go.toInterface(stdgo._internal.unicode.Unicode_turkishCase.turkishCase.toTitle(_l)), stdgo.Go.toInterface(_u));
            };
        };
    }
