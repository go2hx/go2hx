package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkByteByteReplaces(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _str = ((stdgo._internal.strings.Strings_repeat.repeat(("a" : stdgo.GoString), (100 : stdgo.GoInt)) + stdgo._internal.strings.Strings_repeat.repeat(("b" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.strings.Strings_replace.replace(stdgo._internal.strings.Strings_replace.replace(_str?.__copy__(), ("a" : stdgo.GoString), ("A" : stdgo.GoString), (-1 : stdgo.GoInt))?.__copy__(), ("b" : stdgo.GoString), ("B" : stdgo.GoString), (-1 : stdgo.GoInt));
            });
        };
    }