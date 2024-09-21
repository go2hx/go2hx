package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkMapNoChanges(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _identity = (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.strings.Strings_map_.map_(_identity, ("Some string that won\'t be modified." : stdgo.GoString));
            });
        };
    }
