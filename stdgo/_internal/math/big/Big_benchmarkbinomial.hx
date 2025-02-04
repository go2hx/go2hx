package stdgo._internal.math.big;
function benchmarkBinomial(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _z:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2 _z.binomial((1000i64 : stdgo.GoInt64), (990i64 : stdgo.GoInt64));
                _i++;
            };
        };
    }
