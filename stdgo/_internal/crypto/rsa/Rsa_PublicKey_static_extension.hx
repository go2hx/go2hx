package stdgo._internal.crypto.rsa;
@:keep @:allow(stdgo._internal.crypto.rsa.Rsa.PublicKey_asInterface) class PublicKey_static_extension {
    @:keep
    static public function equal( _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>, _x:stdgo._internal.crypto.Crypto_PublicKey.PublicKey):Bool {
        @:recv var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey> = _pub;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_x : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        return (stdgo._internal.crypto.rsa.Rsa__bigIntEqual._bigIntEqual(_pub.n, _xx.n) && (_pub.e == _xx.e) : Bool);
    }
    @:keep
    static public function size( _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey>):stdgo.GoInt {
        @:recv var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_PublicKey.PublicKey> = _pub;
        return (((_pub.n.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
    }
}
