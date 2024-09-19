package stdgo._internal.crypto.tls;
function _aeadAESGCMTLS13(_key:stdgo.Slice<stdgo.GoUInt8>, _nonceMask:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.crypto.tls.Tls_T_aead.T_aead {
        if ((_nonceMask.length) != ((12 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("tls: internal error: wrong nonce length" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.crypto.aes.Aes_newCipher.newCipher(_key), _aes:stdgo._internal.crypto.cipher.Cipher_Block.Block = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var __tmp__ = stdgo._internal.crypto.cipher.Cipher_newGCM.newGCM(_aes), _aead:stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            throw stdgo.Go.toInterface(_err);
        };
        var _ret = (stdgo.Go.setRef(({ _aead : _aead } : stdgo._internal.crypto.tls.Tls_T_xorNonceAEAD.T_xorNonceAEAD)) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_xorNonceAEAD.T_xorNonceAEAD>);
        stdgo.Go.copySlice((_ret._nonceMask.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _nonceMask);
        return stdgo.Go.asInterface(_ret);
    }
