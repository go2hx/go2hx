package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testBuilderAllocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        trace("testBuilderAllocs" + " skip function");
        return;
        var _n = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((10000 : stdgo.GoInt), function():Void {
            var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
            _b.grow((5 : stdgo.GoInt));
            _b.writeString(("abcde" : stdgo.GoString));
            var __blank__ = (_b.string() : stdgo.GoString);
        }) : stdgo.GoFloat64);
        if (_n != (1 : stdgo.GoFloat64)) {
            _t.errorf(("Builder allocs = %v; want 1" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
