package stdgo._internal.encoding.gob;
function benchmarkDecodeFloat64Slice(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _a = (new stdgo.Slice<stdgo.GoFloat64>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L264"
        for (_i => _ in _a) {
            _a[(_i : stdgo.GoInt)] = (12300 : stdgo.GoFloat64);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L267"
        stdgo._internal.encoding.gob.Gob__benchmarkdecodeslice._benchmarkDecodeSlice(_b, stdgo.Go.toInterface(_a));
    }
