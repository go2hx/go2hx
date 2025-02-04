package stdgo._internal.encoding.gob;
function benchmarkEncodeInt32Slice(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _a = (new stdgo.Slice<stdgo.GoInt32>((1000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        for (_i => _ in _a) {
            _a[(_i : stdgo.GoInt)] = ((_i * (100 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
        };
        stdgo._internal.encoding.gob.Gob__benchmarkencodeslice._benchmarkEncodeSlice(_b, stdgo.Go.toInterface(_a));
    }
