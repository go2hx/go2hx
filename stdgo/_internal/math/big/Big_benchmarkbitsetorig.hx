package stdgo._internal.math.big;
function benchmarkBitsetOrig(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1444"
        stdgo._internal.math.big.Big__altsetbit._altSetBit(_z, _z, (512 : stdgo.GoInt), (1u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1445"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1446"
        {
            var _i = ((@:checkr _b ?? throw "null pointer dereference").n - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1447"
                stdgo._internal.math.big.Big__altsetbit._altSetBit(_z, _z, (_i & (512 : stdgo.GoInt) : stdgo.GoInt), (1u32 : stdgo.GoUInt));
                _i--;
            };
        };
    }
