package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function benchmarkSprintfTruncateBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _bytes:stdgo.AnyInterface = stdgo.Go.toInterface((("日本語日本語日本語日本語" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            while (_pb.next()) {
                var __blank__ = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%.3s" : stdgo.GoString), _bytes);
            };
        });
    }
