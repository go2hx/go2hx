package stdgo._internal.encoding.gob;
function benchmarkDecodeInt32Slice(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _a = (new stdgo.Slice<stdgo.GoInt32>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L272"
        for (_i => _ in _a) {
            _a[(_i : stdgo.GoInt)] = (1234 : stdgo.GoInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L275"
        stdgo._internal.encoding.gob.Gob__benchmarkdecodeslice._benchmarkDecodeSlice(_b, stdgo.Go.toInterface(_a));
    }
