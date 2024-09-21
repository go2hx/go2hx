package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function _benchmarkLastIndexHard(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _sep:stdgo.GoString):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.strings.Strings_lastIndex.lastIndex(_internal.strings_test.Strings_test__benchInputHard._benchInputHard?.__copy__(), _sep?.__copy__());
            });
        };
    }
