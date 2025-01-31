package stdgo._internal.crypto.aes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
@:keep class T_gcmAble_static_extension {
    @:interfacetypeffun
    static public function newGCM(t:stdgo._internal.crypto.aes.Aes_T_gcmAble.T_gcmAble, _nonceSize:stdgo.GoInt, _tagSize:stdgo.GoInt):{ var _0 : stdgo._internal.crypto.cipher.Cipher_AEAD.AEAD; var _1 : stdgo.Error; } return t.newGCM(_nonceSize, _tagSize);
}
