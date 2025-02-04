package stdgo._internal.math.big;
function benchmarkDiv(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _sizes = (new stdgo.Slice<stdgo.GoInt>(11, 11, ...[
(10 : stdgo.GoInt),
(20 : stdgo.GoInt),
(50 : stdgo.GoInt),
(100 : stdgo.GoInt),
(200 : stdgo.GoInt),
(500 : stdgo.GoInt),
(1000 : stdgo.GoInt),
(10000 : stdgo.GoInt),
(100000 : stdgo.GoInt),
(1000000 : stdgo.GoInt),
(10000000 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (__8 => _i in _sizes) {
            var _j = ((2 : stdgo.GoInt) * _i : stdgo.GoInt);
            @:check2r _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d/%d" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_i))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                stdgo._internal.math.big.Big__benchmarkdiv._benchmarkDiv(_b, _j, _i);
            });
        };
    }
