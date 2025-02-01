package stdgo._internal.crypto.ecdh;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.internal.nistec.Nistec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.io.Io;
@:keep class Curve_static_extension {
    @:interfacetypeffun
    static public function _privateKeyToPublicKey(t:stdgo._internal.crypto.ecdh.Ecdh_Curve.Curve, _0:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>):stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> return t._privateKeyToPublicKey(_0);
    @:interfacetypeffun
    static public function _ecdh(t:stdgo._internal.crypto.ecdh.Ecdh_Curve.Curve, _local:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>, _remote:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t._ecdh(_local, _remote);
    @:interfacetypeffun
    static public function newPublicKey(t:stdgo._internal.crypto.ecdh.Ecdh_Curve.Curve, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>; var _1 : stdgo.Error; } return t.newPublicKey(_key);
    @:interfacetypeffun
    static public function newPrivateKey(t:stdgo._internal.crypto.ecdh.Ecdh_Curve.Curve, _key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } return t.newPrivateKey(_key);
    @:interfacetypeffun
    static public function generateKey(t:stdgo._internal.crypto.ecdh.Ecdh_Curve.Curve, _rand:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>; var _1 : stdgo.Error; } return t.generateKey(_rand);
}
