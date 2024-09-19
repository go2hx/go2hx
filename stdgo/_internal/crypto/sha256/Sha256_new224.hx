package stdgo._internal.crypto.sha256;
function new224():stdgo._internal.hash.Hash_Hash.Hash {
        if (false) {
            return stdgo._internal.crypto.internal.boring.Boring_newSHA224.newSHA224();
        };
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.crypto.sha256.Sha256_T_digest.T_digest)) : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_T_digest.T_digest>);
        _d._is224 = true;
        _d.reset();
        return stdgo.Go.asInterface(_d);
    }
