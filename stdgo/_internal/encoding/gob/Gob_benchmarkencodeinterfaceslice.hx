package stdgo._internal.encoding.gob;
function benchmarkEncodeInterfaceSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _a = (new stdgo.Slice<stdgo.AnyInterface>((1000 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        for (_i => _ in _a) {
            _a[(_i : stdgo.GoInt)] = stdgo.Go.toInterface(("now is the time" : stdgo.GoString));
        };
        stdgo._internal.encoding.gob.Gob__benchmarkencodeslice._benchmarkEncodeSlice(_b, stdgo.Go.toInterface(_a));
    }
