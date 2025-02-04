package stdgo._internal.crypto.cipher;
@:keep class AEAD_static_extension {
    @:interfacetypeffun
    static public function open(t:stdgo._internal.crypto.cipher.Cipher_aead.AEAD, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.open(_dst, _nonce, _ciphertext, _additionalData);
    @:interfacetypeffun
    static public function seal(t:stdgo._internal.crypto.cipher.Cipher_aead.AEAD, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return t.seal(_dst, _nonce, _plaintext, _additionalData);
    @:interfacetypeffun
    static public function overhead(t:stdgo._internal.crypto.cipher.Cipher_aead.AEAD):stdgo.GoInt return t.overhead();
    @:interfacetypeffun
    static public function nonceSize(t:stdgo._internal.crypto.cipher.Cipher_aead.AEAD):stdgo.GoInt return t.nonceSize();
}
