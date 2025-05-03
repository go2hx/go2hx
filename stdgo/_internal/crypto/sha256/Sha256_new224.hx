package stdgo._internal.crypto.sha256;
function new224():stdgo._internal.hash.Hash_hash.Hash {
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256.go#L161"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256.go#L162"
            return stdgo._internal.crypto.internal.boring.Boring_newsha224.newSHA224();
        };
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest)) : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>);
        (@:checkr _d ?? throw "null pointer dereference")._is224 = true;
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256.go#L166"
        _d.reset();
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256.go#L167"
        return stdgo.Go.asInterface(_d);
    }
