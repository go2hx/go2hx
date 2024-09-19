package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkByteByteNoMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _str = ((stdgo._internal.strings.Strings_repeat.repeat(("A" : stdgo.GoString), (100 : stdgo.GoInt)) + stdgo._internal.strings.Strings_repeat.repeat(("B" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _internal.strings_test.Strings_test__capitalLetters._capitalLetters.replace(_str?.__copy__());
            });
        };
    }
