package stdgo.crypto.internal.boring.sig;
/**
    * Package sig holds “code signatures” that can be called
    * and will result in certain code sequences being linked into
    * the final binary. The functions themselves are no-ops.
**/
class Sig {
    /**
        * BoringCrypto indicates that the BoringCrypto module is present.
    **/
    static public inline function boringCrypto():Void stdgo._internal.crypto.internal.boring.sig.Sig_boringcrypto.boringCrypto();
    /**
        * FIPSOnly indicates that package crypto/tls/fipsonly is present.
    **/
    static public inline function fIPSOnly():Void stdgo._internal.crypto.internal.boring.sig.Sig_fipsonly.fIPSOnly();
    /**
        * StandardCrypto indicates that standard Go crypto is present.
    **/
    static public inline function standardCrypto():Void stdgo._internal.crypto.internal.boring.sig.Sig_standardcrypto.standardCrypto();
}
