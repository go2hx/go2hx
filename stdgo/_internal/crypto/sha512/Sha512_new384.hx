package stdgo._internal.crypto.sha512;
function new384():stdgo._internal.hash.Hash_hash.Hash {
        if (false) {
            return stdgo._internal.crypto.internal.boring.Boring_newsha384.newSHA384();
        };
        var _d = (stdgo.Go.setRef(({ _function : (6u32 : stdgo._internal.crypto.Crypto_hash.Hash) } : stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest)) : stdgo.Ref<stdgo._internal.crypto.sha512.Sha512_t_digest.T_digest>);
        @:check2r _d.reset();
        return stdgo.Go.asInterface(_d);
    }
