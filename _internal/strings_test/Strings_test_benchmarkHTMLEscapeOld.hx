package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkHTMLEscapeOld(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _str = ("I <3 to escape HTML & other text too." : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _internal.strings_test.Strings_test__oldHTMLEscape._oldHTMLEscape(_str?.__copy__());
            });
        };
    }
