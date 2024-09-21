package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function benchmarkSprintfStringer(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _stringer = ((12345 : _internal.fmt_test.Fmt_test_I.I) : _internal.fmt_test.Fmt_test_I.I);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                var __blank__ = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_stringer)));
            };
        });
    }
