package stdgo._internal.crypto.sha1;
function new_():stdgo._internal.hash.Hash_hash.Hash {
        if (false) {
            return stdgo._internal.crypto.sha1.Sha1__boringnewsha1._boringNewSHA1();
        };
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest)) : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>);
        @:check2r _d.reset();
        return stdgo.Go.asInterface(_d);
    }
