package stdgo.crypto.ecdh;
class Curve_static_extension {
    static public function _privateKeyToPublicKey(t:stdgo._internal.crypto.ecdh.Ecdh_Curve.Curve, _0:PrivateKey):PublicKey {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
        return stdgo._internal.crypto.ecdh.Ecdh_Curve_static_extension.Curve_static_extension._privateKeyToPublicKey(t, _0);
    }
    static public function _ecdh(t:stdgo._internal.crypto.ecdh.Ecdh_Curve.Curve, _local:PrivateKey, _remote:PublicKey):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _local = (_local : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
        final _remote = (_remote : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_Curve_static_extension.Curve_static_extension._ecdh(t, _local, _remote);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function newPublicKey(t:stdgo._internal.crypto.ecdh.Ecdh_Curve.Curve, _key:Array<std.UInt>):stdgo.Tuple<PublicKey, stdgo.Error> {
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_Curve_static_extension.Curve_static_extension.newPublicKey(t, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function newPrivateKey(t:stdgo._internal.crypto.ecdh.Ecdh_Curve.Curve, _key:Array<std.UInt>):stdgo.Tuple<PrivateKey, stdgo.Error> {
        final _key = ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_Curve_static_extension.Curve_static_extension.newPrivateKey(t, _key);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function generateKey(t:stdgo._internal.crypto.ecdh.Ecdh_Curve.Curve, _rand:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<PrivateKey, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.ecdh.Ecdh_Curve_static_extension.Curve_static_extension.generateKey(t, _rand);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
