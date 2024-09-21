package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function benchmarkSprintfStructure(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _s = (stdgo.Go.setRef((new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((new _internal.fmt_test.Fmt_test_SI.SI(stdgo.Go.toInterface((12345 : stdgo.GoInt))) : _internal.fmt_test.Fmt_test_SI.SI)), stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set((0 : stdgo.GoInt), ("hello" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>))]) : stdgo.Slice<stdgo.AnyInterface>)) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                var __blank__ = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%#v" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        });
    }
