package stdgo._internal.math.big;
function benchmarkBitsetNegOrig(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _z = stdgo._internal.math.big.Big_newint.newInt((-1i64 : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1453"
        stdgo._internal.math.big.Big__altsetbit._altSetBit(_z, _z, (512 : stdgo.GoInt), (0u32 : stdgo.GoUInt));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1454"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1455"
        {
            var _i = ((@:checkr _b ?? throw "null pointer dereference").n - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1456"
                stdgo._internal.math.big.Big__altsetbit._altSetBit(_z, _z, (_i & (512 : stdgo.GoInt) : stdgo.GoInt), (0u32 : stdgo.GoUInt));
                _i--;
            };
        };
    }
