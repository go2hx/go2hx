package stdgo.crypto;
/**
    Package crypto collects common cryptographic constants.
**/
class Crypto {
    /**
        RegisterHash registers a function that returns a new instance of the given
        hash function. This is intended to be called from the init function in
        packages that implement hash functions.
    **/
    static public inline function registerHash(_h:Hash, _f:() -> stdgo._internal.hash.Hash_Hash.Hash):Void {
        final _f = _f;
        stdgo._internal.crypto.Crypto_registerHash.registerHash(_h, _f);
    }
}
