package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function _benchmarkBuilder(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _f:(stdgo.Ref<stdgo._internal.testing.Testing_B.B>, stdgo.GoInt, Bool) -> Void):Void {
        _b.run(("1Write_NoGrow" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.reportAllocs();
            _f(_b, (1 : stdgo.GoInt), false);
        });
        _b.run(("3Write_NoGrow" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.reportAllocs();
            _f(_b, (3 : stdgo.GoInt), false);
        });
        _b.run(("3Write_Grow" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
            _b.reportAllocs();
            _f(_b, (3 : stdgo.GoInt), true);
        });
    }
