package stdgo._internal.encoding.gob;
function benchmarkDecodeComplex128Slice(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _a = (new stdgo.Slice<stdgo.GoComplex128>((1000 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoComplex128>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L256"
        for (_i => _ in _a) {
            _a[(_i : stdgo.GoInt)] = ((1.2f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 3.4f64));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L259"
        stdgo._internal.encoding.gob.Gob__benchmarkdecodeslice._benchmarkDecodeSlice(_b, stdgo.Go.toInterface(_a));
    }
