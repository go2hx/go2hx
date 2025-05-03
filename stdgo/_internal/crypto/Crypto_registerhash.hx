package stdgo._internal.crypto;
function registerHash(_h:stdgo._internal.crypto.Crypto_hash.Hash, _f:() -> stdgo._internal.hash.Hash_hash.Hash):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L146"
        if ((_h >= (20u32 : stdgo._internal.crypto.Crypto_hash.Hash) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/crypto.go#L147"
            throw stdgo.Go.toInterface(("crypto: RegisterHash of unknown hash function" : stdgo.GoString));
        };
        stdgo._internal.crypto.Crypto__hashes._hashes[(_h : stdgo.GoInt)] = _f;
    }
