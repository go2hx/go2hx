package stdgo._internal.encoding.gob;
function benchmarkDecodeInterfaceSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _a = (new stdgo.Slice<stdgo.AnyInterface>((1000 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L302"
        for (_i => _ in _a) {
            _a[(_i : stdgo.GoInt)] = stdgo.Go.toInterface(("now is the time" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L305"
        stdgo._internal.encoding.gob.Gob__benchmarkdecodeslice._benchmarkDecodeSlice(_b, stdgo.Go.toInterface(_a));
    }
