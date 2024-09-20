package _internal.crypto.ecdh;
@:keep class Curve_static_extension {
    static public function _privateKeyToPublicKey(t:_internal.crypto.ecdh.Ecdh_Curve.Curve, _0:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>):stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> return t._privateKeyToPublicKey(_0);
    static public function _ecdh(t:_internal.crypto.ecdh.Ecdh_Curve.Curve, _local:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>, _remote:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t._ecdh(_local, _remote);
    static public function newPublicKey(t:_internal.crypto.ecdh.Ecdh_Curve.Curve, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>; var _1 : stdgo.Error; } return t.newPublicKey(_key);
    static public function newPrivateKey(t:_internal.crypto.ecdh.Ecdh_Curve.Curve, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } return t.newPrivateKey(_key);
    static public function generateKey(t:_internal.crypto.ecdh.Ecdh_Curve.Curve, _rand:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } return t.generateKey(_rand);
}
