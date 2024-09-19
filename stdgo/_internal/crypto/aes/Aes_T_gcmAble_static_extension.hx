package stdgo._internal.crypto.aes;
@:keep class T_gcmAble_static_extension {
    static public function newGCM(t:T_gcmAble, _nonceSize:stdgo.GoInt, _tagSize:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD; var _1 : stdgo.Error; } return t.newGCM(_nonceSize, _tagSize);
}
