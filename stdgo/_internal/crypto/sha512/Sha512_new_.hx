package stdgo._internal.crypto.sha512;
function new_():stdgo._internal.hash.Hash_hash.Hash {
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512.go#L209"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512.go#L210"
            return stdgo._internal.crypto.internal.boring.Boring_newsha512.newSHA512();
        };
        var _d = (stdgo.Go.setRef(({ _function : (7u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest)) : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512.go#L213"
        _d.reset();
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha512/sha512.go#L214"
        return stdgo.Go.asInterface(_d);
    }
