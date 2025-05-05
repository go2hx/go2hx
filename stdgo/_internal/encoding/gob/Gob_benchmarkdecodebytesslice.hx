package stdgo._internal.encoding.gob;
function benchmarkDecodeBytesSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _a = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((1000 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L294"
        for (_i => _ in _a) {
            _a[(_i : stdgo.GoInt)] = ((("now is the time" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L297"
        stdgo._internal.encoding.gob.Gob__benchmarkdecodeslice._benchmarkDecodeSlice(_b, stdgo.Go.toInterface(_a));
    }
