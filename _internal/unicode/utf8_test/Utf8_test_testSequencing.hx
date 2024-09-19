package _internal.unicode.utf8_test;
import stdgo._internal.unicode.utf8.Utf8;
function testSequencing(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _ts in _internal.unicode.utf8_test.Utf8_test__testStrings._testStrings) {
            for (__1 => _m in _internal.unicode.utf8_test.Utf8_test__utf8map._utf8map) {
                for (__2 => _s in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[(_ts + _m._str?.__copy__() : stdgo.GoString)?.__copy__(), (_m._str + _ts?.__copy__() : stdgo.GoString)?.__copy__(), ((_ts + _m._str?.__copy__() : stdgo.GoString) + _ts?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                    _internal.unicode.utf8_test.Utf8_test__testSequence._testSequence(_t, _s?.__copy__());
                };
            };
        };
    }
