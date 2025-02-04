package stdgo._internal.math.big;
function benchmarkProbablyPrime(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(("203956878356401977405765866929034577280193993314348263094772646453283062722701277632936616063144088173312372882677123879538709400158306567338328279154499698366071906766440037074217117805690872792848149112022286332144876183376326512083574821647933992961249917319836219304274280243803104015000563790123" : stdgo.GoString), (10 : stdgo.GoInt)), _p:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __8:Bool = __tmp__._1;
        for (__9 => _n in (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(0 : stdgo.GoInt), (1 : stdgo.GoInt), (5 : stdgo.GoInt), (10 : stdgo.GoInt), (20 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            @:check2r _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("n=%d" : stdgo.GoString), stdgo.Go.toInterface(_n))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        @:check2r _p.probablyPrime(_n);
                        _i++;
                    };
                };
            });
        };
        @:check2r _b.run(("Lucas" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    (@:checkr _p ?? throw "null pointer dereference")._abs._probablyPrimeLucas();
                    _i++;
                };
            };
        });
        @:check2r _b.run(("MillerRabinBase2" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                    (@:checkr _p ?? throw "null pointer dereference")._abs._probablyPrimeMillerRabin((1 : stdgo.GoInt), true);
                    _i++;
                };
            };
        });
    }
