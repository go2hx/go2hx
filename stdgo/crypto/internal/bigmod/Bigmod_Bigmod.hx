package stdgo.crypto.internal.bigmod;
class Bigmod {
    /**
        NewNat returns a new nat with a size of zero, just like new(Nat), but with
        the preallocated capacity to hold a number of up to preallocTarget bits.
        NewNat inlines, so the allocation can live on the stack.
    **/
    static public inline function newNat():Nat {
        return stdgo._internal.crypto.internal.bigmod.Bigmod_newNat.newNat();
    }
    /**
        NewModulusFromBig creates a new Modulus from a [big.Int].
        
        The Int must be odd. The number of significant bits (and nothing else) is
        leaked through timing side-channels.
    **/
    static public inline function newModulusFromBig(_n:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<Modulus, stdgo.Error> {
        final _n = (_n : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.internal.bigmod.Bigmod_newModulusFromBig.newModulusFromBig(_n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
