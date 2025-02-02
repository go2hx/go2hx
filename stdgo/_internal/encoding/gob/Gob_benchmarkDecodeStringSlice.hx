package stdgo._internal.encoding.gob;
function benchmarkDecodeStringSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _a = (new stdgo.Slice<stdgo.GoString>((1000 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _ in _a) {
            _a[(_i : stdgo.GoInt)] = ("now is the time" : stdgo.GoString);
        };
        stdgo._internal.encoding.gob.Gob__benchmarkDecodeSlice._benchmarkDecodeSlice(_b, stdgo.Go.toInterface(_a));
    }
