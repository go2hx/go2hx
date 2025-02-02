package stdgo._internal.crypto;
function registerHash(_h:stdgo._internal.crypto.Crypto_Hash.Hash, _f:() -> stdgo._internal.hash.Hash_Hash.Hash):Void {
        if ((_h >= (20u32 : stdgo._internal.crypto.Crypto_Hash.Hash) : Bool)) {
            throw stdgo.Go.toInterface(("crypto: RegisterHash of unknown hash function" : stdgo.GoString));
        };
        stdgo._internal.crypto.Crypto__hashes._hashes[(_h : stdgo.GoInt)] = _f;
    }
