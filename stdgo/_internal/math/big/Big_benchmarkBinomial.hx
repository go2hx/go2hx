package stdgo._internal.math.big;
function benchmarkBinomial(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _z:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _b.n : Bool)) {
                _z.binomial((1000i64 : stdgo.GoInt64), (990i64 : stdgo.GoInt64));
                _i++;
            };
        };
    }
