package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkClone(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _str:stdgo.GoString = stdgo._internal.strings.Strings_repeat.repeat(("a" : stdgo.GoString), (42 : stdgo.GoInt));
        _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _internal.strings_test.Strings_test__stringSink._stringSink = stdgo._internal.strings.Strings_clone.clone(_str?.__copy__())?.__copy__();
            });
        };
    }
