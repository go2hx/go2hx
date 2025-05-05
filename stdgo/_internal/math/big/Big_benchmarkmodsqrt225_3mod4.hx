package stdgo._internal.math.big;
function benchmarkModSqrt225_3Mod4(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _p = stdgo._internal.math.big.Big__tri._tri((225u32 : stdgo.GoUInt));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setUint64((2i64 : stdgo.GoUInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1483"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1484"
                _x.setUint64((2i64 : stdgo.GoUInt64));
//"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1485"
                _x._modSqrt3Mod4Prime(_x, _p);
                _i++;
            };
        };
    }
