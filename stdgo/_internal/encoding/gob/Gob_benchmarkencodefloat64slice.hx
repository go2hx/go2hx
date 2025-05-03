package stdgo._internal.encoding.gob;
function benchmarkEncodeFloat64Slice(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _a = (new stdgo.Slice<stdgo.GoFloat64>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L164"
        for (_i => _ in _a) {
            _a[(_i : stdgo.GoInt)] = (12300 : stdgo.GoFloat64);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L167"
        stdgo._internal.encoding.gob.Gob__benchmarkencodeslice._benchmarkEncodeSlice(_b, stdgo.Go.toInterface(_a));
    }
