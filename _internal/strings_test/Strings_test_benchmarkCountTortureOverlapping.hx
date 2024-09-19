package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkCountTortureOverlapping(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var a = (stdgo._internal.strings.Strings_repeat.repeat(("ABC" : stdgo.GoString), (1048576 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        var b = (stdgo._internal.strings.Strings_repeat.repeat(("ABC" : stdgo.GoString), (1024 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.strings.Strings_count.count(a?.__copy__(), b?.__copy__());
            });
        };
    }
