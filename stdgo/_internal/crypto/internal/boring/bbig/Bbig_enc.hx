package stdgo._internal.crypto.internal.boring.bbig;
function enc(_b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt {
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bbig/big.go#L14"
        if (({
            final value = _b;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bbig/big.go#L15"
            return null;
        };
        var _x = _b.bits();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bbig/big.go#L18"
        if ((_x.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bbig/big.go#L19"
            return (new stdgo.Slice<stdgo.GoUInt>(0, 0, ...[]).__setNumber32__() : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bbig/big.go#L21"
        return stdgo._internal.unsafe.Unsafe_slice.slice(new stdgo.Pointer<stdgo.GoUInt>(() -> (stdgo.Go.pointer(_x[(0 : stdgo.GoInt)]).value : stdgo.GoUInt), v -> (stdgo.Go.pointer(_x[(0 : stdgo.GoInt)]).value = (v : stdgo._internal.math.big.Big_word.Word) : stdgo.GoUInt)), (_x.length));
    }
