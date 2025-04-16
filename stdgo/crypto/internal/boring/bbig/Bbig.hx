package stdgo.crypto.internal.boring.bbig;
class Bbig {
    static public inline function enc(_b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt return stdgo._internal.crypto.internal.boring.bbig.Bbig_enc.enc(_b);
    static public inline function dec(_b:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return stdgo._internal.crypto.internal.boring.bbig.Bbig_dec.dec(_b);
}
