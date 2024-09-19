package _internal.internal.godebug_test;
import stdgo._internal.internal.godebug.Godebug;
function testMetrics(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _m:stdgo.GoArray<stdgo._internal.runtime.metrics.Metrics_Sample.Sample> = new stdgo.GoArray<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>(1, 1, ...[for (i in 0 ... 1) ({} : stdgo._internal.runtime.metrics.Metrics_Sample.Sample)]);
        _m[(0 : stdgo.GoInt)].name = ("/godebug/non-default-behavior/http2client:events" : stdgo.GoString);
        stdgo._internal.runtime.metrics.Metrics_read.read((_m.__slice__(0) : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>));
        {
            var _kind = (_m[(0 : stdgo.GoInt)].value.kind() : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind);
            if (_kind != ((1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind))) {
                _t.fatalf(("NonDefault kind = %v, want uint64" : stdgo.GoString), stdgo.Go.toInterface(_kind));
            };
        };
        var _s = stdgo._internal.internal.godebug.Godebug_new_.new_(("http2client" : stdgo.GoString));
        _s.value();
        _s.incNonDefault();
        _s.incNonDefault();
        _s.incNonDefault();
        stdgo._internal.runtime.metrics.Metrics_read.read((_m.__slice__(0) : stdgo.Slice<stdgo._internal.runtime.metrics.Metrics_Sample.Sample>));
        {
            var _kind = (_m[(0 : stdgo.GoInt)].value.kind() : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind);
            if (_kind != ((1 : stdgo._internal.runtime.metrics.Metrics_ValueKind.ValueKind))) {
                _t.fatalf(("NonDefault kind = %v, want uint64" : stdgo.GoString), stdgo.Go.toInterface(_kind));
            };
        };
        {
            var _count = (_m[(0 : stdgo.GoInt)].value.uint64() : stdgo.GoUInt64);
            if (_count != ((3i64 : stdgo.GoUInt64))) {
                _t.fatalf(("NonDefault value = %d, want 3" : stdgo.GoString), stdgo.Go.toInterface(_count));
            };
        };
    }
