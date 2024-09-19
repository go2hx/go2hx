package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_prefixNonceAEAD_asInterface) class T_prefixNonceAEAD_static_extension {
    @:keep
    static public function open( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD>, _out:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD> = _f;
        stdgo.Go.copySlice((_f._nonce.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _nonce);
        return _f._aead.open(_out, (_f._nonce.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _ciphertext, _additionalData);
    }
    @:keep
    static public function seal( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD>, _out:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD> = _f;
        stdgo.Go.copySlice((_f._nonce.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _nonce);
        return _f._aead.seal(_out, (_f._nonce.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _plaintext, _additionalData);
    }
    @:keep
    static public function _explicitNonceLen( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD> = _f;
        return _f.nonceSize();
    }
    @:keep
    static public function overhead( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD> = _f;
        return _f._aead.overhead();
    }
    @:keep
    static public function nonceSize( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_prefixNonceAEAD.T_prefixNonceAEAD> = _f;
        return (8 : stdgo.GoInt);
    }
}
