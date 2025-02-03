package stdgo.crypto.ecdh;
class T_x25519Curve_static_extension {
    static public function _ecdh(_c:T_x25519Curve, _local:PrivateKey, _remote:PublicKey):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve>);
        final _local = (_local : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
        final _remote = (_remote : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_T_x25519Curve_static_extension.T_x25519Curve_static_extension._ecdh(_c, _local, _remote);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function newPublicKey(_c:T_x25519Curve, _key:Array<std.UInt>):stdgo.Tuple<PublicKey, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve>);
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_T_x25519Curve_static_extension.T_x25519Curve_static_extension.newPublicKey(_c, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _privateKeyToPublicKey(_c:T_x25519Curve, _key:PrivateKey):PublicKey {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve>);
        final _key = (_key : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
        return stdgo._internal.crypto.ecdh.Ecdh_T_x25519Curve_static_extension.T_x25519Curve_static_extension._privateKeyToPublicKey(_c, _key);
    }
    static public function newPrivateKey(_c:T_x25519Curve, _key:Array<std.UInt>):stdgo.Tuple<PrivateKey, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve>);
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_T_x25519Curve_static_extension.T_x25519Curve_static_extension.newPrivateKey(_c, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function generateKey(_c:T_x25519Curve, _rand:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<PrivateKey, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_T_x25519Curve_static_extension.T_x25519Curve_static_extension.generateKey(_c, _rand);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function string(_c:T_x25519Curve):String {
        final _c = (_c : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_T_x25519Curve.T_x25519Curve>);
        return stdgo._internal.crypto.ecdh.Ecdh_T_x25519Curve_static_extension.T_x25519Curve_static_extension.string(_c);
    }
}
