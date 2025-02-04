package stdgo._internal.crypto;
function registerHash(_h:stdgo._internal.crypto.Crypto_hash.Hash, _f:() -> stdgo._internal.hash.Hash_hash.Hash):Void {
        if ((_h >= (20u32 : stdgo._internal.crypto.Crypto_hash.Hash) : Bool)) {
            throw stdgo.Go.toInterface(("crypto: RegisterHash of unknown hash function" : stdgo.GoString));
        };
        stdgo._internal.crypto.Crypto__hashes._hashes[(_h : stdgo.GoInt)] = _f;
    }
