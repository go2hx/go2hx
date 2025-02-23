package stdgo._internal.crypto.tls;
function _aeadAESGCM(_key:stdgo.Slice<stdgo.GoUInt8>, _noncePrefix:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.tls.Tls_t_aead.T_aead {
        if ((_noncePrefix.length) != ((4 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("tls: internal error: wrong nonce length" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.crypto.aes.Aes_newcipher.newCipher(_key), _aes:stdgo._internal.crypto.cipher.Cipher_block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _aead:stdgo._internal.crypto.cipher.Cipher_aead.AEAD = (null : stdgo._internal.crypto.cipher.Cipher_aead.AEAD);
        if (false) {
            {
                var __tmp__ = stdgo._internal.crypto.internal.boring.Boring_newgcmtls.newGCMTLS(_aes);
                _aead = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        } else {
            stdgo._internal.crypto.internal.boring.Boring_unreachable.unreachable();
            {
                var __tmp__ = stdgo._internal.crypto.cipher.Cipher_newgcm.newGCM(_aes);
                _aead = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _ret = (stdgo.Go.setRef(({ _aead : _aead } : stdgo._internal.crypto.tls.Tls_t_prefixnonceaead.T_prefixNonceAEAD)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_prefixnonceaead.T_prefixNonceAEAD>);
        ((@:checkr _ret ?? throw "null pointer dereference")._nonce.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_noncePrefix);
        return stdgo.Go.asInterface(_ret);
    }
