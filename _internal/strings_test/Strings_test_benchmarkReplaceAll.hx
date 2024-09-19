package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkReplaceAll(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _internal.strings_test.Strings_test__stringSink._stringSink = stdgo._internal.strings.Strings_replaceAll.replaceAll(("banana" : stdgo.GoString), ("a" : stdgo.GoString), ("<>" : stdgo.GoString))?.__copy__();
            });
        };
    }
