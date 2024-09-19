package stdgo._internal.crypto.cipher;
@:keep class AEAD_static_extension {
    static public function open(t:AEAD, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _ciphertext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t.open(_dst, _nonce, _ciphertext, _additionalData);
    static public function seal(t:AEAD, _dst:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>, _plaintext:stdgo.Slice<stdgo.GoUInt8>, _additionalData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return t.seal(_dst, _nonce, _plaintext, _additionalData);
    static public function overhead(t:AEAD):stdgo.GoInt return t.overhead();
    static public function nonceSize(t:AEAD):stdgo.GoInt return t.nonceSize();
}
