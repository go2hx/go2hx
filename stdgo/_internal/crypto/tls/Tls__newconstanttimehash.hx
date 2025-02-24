package stdgo._internal.crypto.tls;
function _newConstantTimeHash(_h:() -> stdgo._internal.hash.Hash_hash.Hash):() -> stdgo._internal.hash.Hash_hash.Hash {
        stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
        return function():stdgo._internal.hash.Hash_hash.Hash {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.crypto.tls.Tls_t_cthwrapper.T_cthWrapper((stdgo.Go.typeAssert((stdgo.Go.toInterface(_h()) : stdgo._internal.crypto.tls.Tls_t_constanttimehash.T_constantTimeHash)) : stdgo._internal.crypto.tls.Tls_t_constanttimehash.T_constantTimeHash)) : stdgo._internal.crypto.tls.Tls_t_cthwrapper.T_cthWrapper)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_cthwrapper.T_cthWrapper>));
        };
    }
