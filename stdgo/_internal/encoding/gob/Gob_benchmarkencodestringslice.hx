package stdgo._internal.encoding.gob;
function benchmarkEncodeStringSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _a = (new stdgo.Slice<stdgo.GoString>((1000 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L180"
        for (_i => _ in _a) {
            _a[(_i : stdgo.GoInt)] = ("now is the time" : stdgo.GoString);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/timing_test.go#L183"
        stdgo._internal.encoding.gob.Gob__benchmarkencodeslice._benchmarkEncodeSlice(_b, stdgo.Go.toInterface(_a));
    }
