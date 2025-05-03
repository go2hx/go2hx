package stdgo._internal.slices;
function benchmarkCompact(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L724"
        for (__0 => _c in stdgo._internal.slices.Slices__compacttests._compactTests) {
            //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L725"
            _b.run(_c._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                var _ss = (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), (64 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L727"
                {
                    var _k = (0 : stdgo.GoInt);
                    while ((_k < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        _ss = (_ss.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
_ss = (_ss.__append__(...(_c._s : Array<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
stdgo._internal.slices.Slices_compact.compact(_ss);
                        _k++;
                    };
                };
            });
        };
    }
