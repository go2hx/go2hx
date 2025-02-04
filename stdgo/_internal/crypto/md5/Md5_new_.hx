package stdgo._internal.crypto.md5;
function new_():stdgo._internal.hash.Hash_hash.Hash {
        var _d = (stdgo.Go.setRef(({} : stdgo._internal.crypto.md5.Md5_t_digest.T_digest)) : stdgo.Ref<stdgo._internal.crypto.md5.Md5_t_digest.T_digest>);
        @:check2r _d.reset();
        return stdgo.Go.asInterface(_d);
    }
