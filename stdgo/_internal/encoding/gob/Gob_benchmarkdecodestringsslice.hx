package stdgo._internal.encoding.gob;
function benchmarkDecodeStringsSlice(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _a = (new stdgo.Slice<stdgo.Slice<stdgo.GoString>>((1000 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoString>>);
        for (_i => _ in _a) {
            _a[(_i : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("now is the time" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        };
        stdgo._internal.encoding.gob.Gob__benchmarkdecodeslice._benchmarkDecodeSlice(_b, stdgo.Go.toInterface(_a));
    }
