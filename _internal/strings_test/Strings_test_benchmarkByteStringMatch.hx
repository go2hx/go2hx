package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkByteStringMatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _str = ((((("<" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("a" : stdgo.GoString), (99 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("b" : stdgo.GoString), (99 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (">" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _internal.strings_test.Strings_test__htmlEscaper._htmlEscaper.replace(_str?.__copy__());
            });
        };
    }
