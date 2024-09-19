package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function benchmarkSprintfComplex(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                var __blank__ = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%f" : stdgo.GoString), stdgo.Go.toInterface(((5.23184f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 5.23184f64))));
            };
        });
    }
