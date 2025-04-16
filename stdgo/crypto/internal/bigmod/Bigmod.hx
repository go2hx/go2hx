package stdgo.crypto.internal.bigmod;
typedef Nat = stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat;
typedef Modulus = stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus;
typedef NatPointer = stdgo._internal.crypto.internal.bigmod.Bigmod_natpointer.NatPointer;
typedef ModulusPointer = stdgo._internal.crypto.internal.bigmod.Bigmod_moduluspointer.ModulusPointer;
class Bigmod {
    /**
        * NewNat returns a new nat with a size of zero, just like new(Nat), but with
        * the preallocated capacity to hold a number of up to preallocTarget bits.
        * NewNat inlines, so the allocation can live on the stack.
    **/
    static public inline function newNat():stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_nat.Nat> return stdgo._internal.crypto.internal.bigmod.Bigmod_newnat.newNat();
    /**
        * NewModulusFromBig creates a new Modulus from a [big.Int].
        * 
        * The Int must be odd. The number of significant bits (and nothing else) is
        * leaked through timing side-channels.
    **/
    static public inline function newModulusFromBig(_n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_modulus.Modulus>; var _1 : stdgo.Error; } return stdgo._internal.crypto.internal.bigmod.Bigmod_newmodulusfrombig.newModulusFromBig(_n);
}
