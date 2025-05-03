package stdgo._internal.math.big;
function benchmarkBinomial(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _z:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L257"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L258"
                _z.binomial((1000i64 : stdgo.GoInt64), (990i64 : stdgo.GoInt64));
                _i++;
            };
        };
    }
