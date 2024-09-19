package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkTrimByte(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _x = ("  the quick brown fox   " : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.strings.Strings_trim.trim(_x?.__copy__(), (" " : stdgo.GoString));
            });
        };
    }
