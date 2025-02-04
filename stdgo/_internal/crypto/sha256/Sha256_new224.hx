package stdgo._internal.crypto.sha256;
function new224():stdgo._internal.hash.Hash_hash.Hash {
        if (false) {
            return stdgo._internal.crypto.internal.boring.Boring_newsha224.newSHA224();
        };
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest)) : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_t_digest.T_digest>);
        (@:checkr _d ?? throw "null pointer dereference")._is224 = true;
        @:check2r _d.reset();
        return stdgo.Go.asInterface(_d);
    }
