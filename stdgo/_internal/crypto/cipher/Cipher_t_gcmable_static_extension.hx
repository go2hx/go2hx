package stdgo._internal.crypto.cipher;
@:keep class T_gcmAble_static_extension {
    @:interfacetypeffun
    static public function newGCM(t:stdgo._internal.crypto.cipher.Cipher_t_gcmable.T_gcmAble, _nonceSize:stdgo.GoInt, _tagSize:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_aead.AEAD; var _1 : stdgo.Error; } return t.newGCM(_nonceSize, _tagSize);
}
