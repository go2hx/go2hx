package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_xorNonceAEAD_asInterface) class T_xorNonceAEAD_static_extension {
    @:keep
    @:tdfield
    static public function open( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD>, _out:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } throw "T_xorNonceAEAD:crypto.tls.open is not yet implemented";
    @:keep
    @:tdfield
    static public function seal( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD>, _out:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> throw "T_xorNonceAEAD:crypto.tls.seal is not yet implemented";
    @:keep
    @:tdfield
    static public function overhead( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD>):stdgo.GoInt throw "T_xorNonceAEAD:crypto.tls.overhead is not yet implemented";
    @:keep
    @:tdfield
    static public function nonceSize( _f:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_xornonceaead.T_xorNonceAEAD>):stdgo.GoInt throw "T_xorNonceAEAD:crypto.tls.nonceSize is not yet implemented";
}
