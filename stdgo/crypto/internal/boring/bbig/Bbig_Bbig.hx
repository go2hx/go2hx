package stdgo.crypto.internal.boring.bbig;
class Bbig {
    static public inline function enc(_b:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt {
        final _b = (_b : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return stdgo._internal.crypto.internal.boring.bbig.Bbig_enc.enc(_b);
    }
    static public inline function dec(_b:stdgo._internal.crypto.internal.boring.Boring_BigInt.BigInt):stdgo._internal.math.big.Big_Int_.Int_ {
        return stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_b);
    }
}
