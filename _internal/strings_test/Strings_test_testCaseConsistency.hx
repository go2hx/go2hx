package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testCaseConsistency(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _numRunes = ((1114112 : stdgo.GoInt) : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            _numRunes = (1000 : stdgo.GoInt);
        };
        var _a = (new stdgo.Slice<stdgo.GoInt32>((_numRunes : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        for (_i => _ in _a) {
            _a[(_i : stdgo.GoInt)] = (_i : stdgo.GoInt32);
        };
        var _s = ((_a : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _upper = (stdgo._internal.strings.Strings_toUpper.toUpper(_s?.__copy__())?.__copy__() : stdgo.GoString);
        var _lower = (stdgo._internal.strings.Strings_toLower.toLower(_s?.__copy__())?.__copy__() : stdgo.GoString);
        {
            var _n = (stdgo._internal.unicode.utf8.Utf8_runeCountInString.runeCountInString(_upper?.__copy__()) : stdgo.GoInt);
            if (_n != (_numRunes)) {
                _t.error(stdgo.Go.toInterface(("rune count wrong in upper:" : stdgo.GoString)), stdgo.Go.toInterface(_n));
            };
        };
        {
            var _n = (stdgo._internal.unicode.utf8.Utf8_runeCountInString.runeCountInString(_lower?.__copy__()) : stdgo.GoInt);
            if (_n != (_numRunes)) {
                _t.error(stdgo.Go.toInterface(("rune count wrong in lower:" : stdgo.GoString)), stdgo.Go.toInterface(_n));
            };
        };
        if (!_internal.strings_test.Strings_test__equal._equal(("ToUpper(upper)" : stdgo.GoString), stdgo._internal.strings.Strings_toUpper.toUpper(_upper?.__copy__())?.__copy__(), _upper?.__copy__(), _t)) {
            _t.error(stdgo.Go.toInterface(("ToUpper(upper) consistency fail" : stdgo.GoString)));
        };
        if (!_internal.strings_test.Strings_test__equal._equal(("ToLower(lower)" : stdgo.GoString), stdgo._internal.strings.Strings_toLower.toLower(_lower?.__copy__())?.__copy__(), _lower?.__copy__(), _t)) {
            _t.error(stdgo.Go.toInterface(("ToLower(lower) consistency fail" : stdgo.GoString)));
        };
    }
