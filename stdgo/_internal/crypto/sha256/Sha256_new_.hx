package stdgo._internal.crypto.sha256;
function new_():stdgo._internal.hash.Hash_Hash.Hash {
        if (false) {
            return stdgo._internal.crypto.internal.boring.Boring_newSHA256.newSHA256();
        };
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.crypto.sha256.Sha256_T_digest.T_digest)) : stdgo.Ref<stdgo._internal.crypto.sha256.Sha256_T_digest.T_digest>);
        @:check2r _d.reset();
        return stdgo.Go.asInterface(_d);
    }
