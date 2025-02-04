package stdgo._internal.crypto.internal.boring.bbig;
function enc(_b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt {
        if ((_b == null || (_b : Dynamic).__nil__)) {
            return null;
        };
        var _x = @:check2r _b.bits();
        if ((_x.length) == ((0 : stdgo.GoInt))) {
            return (new stdgo.Slice<stdgo.GoUInt>(0, 0, ...[]).__setNumber32__() : stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt);
        };
        return stdgo._internal.unsafe.Unsafe_slice.slice(new stdgo.Pointer<stdgo.GoUInt>(() -> (stdgo.Go.pointer(_x[(0 : stdgo.GoInt)]).value : stdgo.GoUInt), v -> (stdgo.Go.pointer(_x[(0 : stdgo.GoInt)]).value = (v : stdgo._internal.math.big.Big_word.Word) : stdgo.GoUInt)), (_x.length));
    }
