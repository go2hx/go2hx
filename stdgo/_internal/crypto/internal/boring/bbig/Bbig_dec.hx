package stdgo._internal.crypto.internal.boring.bbig;
function dec(_b:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        if (_b == null) {
            return null;
        };
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            return (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        };
        var _x = stdgo._internal.unsafe.Unsafe_slice.slice(new stdgo.Pointer<stdgo._internal.math.big.Big_word.Word>(() -> (stdgo.Go.pointer(_b[(0 : stdgo.GoInt)]).value : stdgo._internal.math.big.Big_word.Word), v -> (stdgo.Go.pointer(_b[(0 : stdgo.GoInt)]).value = (v : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word)), (_b.length));
        return @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBits(_x);
    }
