package stdgo._internal.crypto.sha256;
function new_():stdgo._internal.hash.Hash_hash.Hash {
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256.go#L151"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256.go#L152"
            return stdgo._internal.crypto.internal.boring.Boring_newsha256.newSHA256();
        };
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest)) : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256.go#L155"
        _d.reset();
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256.go#L156"
        return stdgo.Go.asInterface(_d);
    }
