package stdgo._internal.crypto.tls;
function _aeadChaCha20Poly1305(_key:stdgo.Slice<stdgo.GoUInt8>, _nonceMask:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.tls.Tls_t_aead.T_aead {
        if ((_nonceMask.length) != ((12 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("tls: internal error: wrong nonce length" : stdgo.GoString));
        };
        var __tmp__ = _internal.golang_dot_org.x.crypto.chacha20poly1305.Chacha20poly1305_new_.new_(_key), _aead:stdgo._internal.crypto.cipher.Cipher_aead.AEAD = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _ret = (stdgo.Go.setRef(({ _aead : _aead } : stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD>);
        ((@:checkr _ret ?? throw "null pointer dereference")._nonceMask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_nonceMask);
        return stdgo.Go.asInterface(_ret);
    }
