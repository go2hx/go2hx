package stdgo._internal.math.big;
function benchmarkLeafSize(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {
            var _n = (0 : stdgo.GoInt);
            while ((_n <= (16 : stdgo.GoInt) : Bool)) {
                @:check2r _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_n)).__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                    stdgo._internal.math.big.Big_leafsizehelper.leafSizeHelper(_b, (10 : stdgo.GoInt), _n);
                });
                _n++;
            };
        };
        for (__8 => _n in (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(32 : stdgo.GoInt), (64 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            @:check2r _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                stdgo._internal.math.big.Big_leafsizehelper.leafSizeHelper(_b, (10 : stdgo.GoInt), _n);
            });
        };
    }
