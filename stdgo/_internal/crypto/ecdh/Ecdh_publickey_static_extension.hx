package stdgo._internal.crypto.ecdh;
@:keep @:allow(stdgo._internal.crypto.ecdh.Ecdh.PublicKey_asInterface) class PublicKey_static_extension {
    @:keep
    @:tdfield
    static public function curve( _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>):stdgo._internal.crypto.ecdh.Ecdh_curve.Curve {
        @:recv var _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> = _k;
        return (@:checkr _k ?? throw "null pointer dereference")._curve;
    }
    @:keep
    @:tdfield
    static public function equal( _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>, _x:stdgo._internal.crypto.Crypto_publickey.PublicKey):Bool {
        @:recv var _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> = _k;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_x : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        return ((stdgo.Go.toInterface((@:checkr _k ?? throw "null pointer dereference")._curve) == stdgo.Go.toInterface((@:checkr _xx ?? throw "null pointer dereference")._curve)) && (stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare((@:checkr _k ?? throw "null pointer dereference")._publicKey, (@:checkr _xx ?? throw "null pointer dereference")._publicKey) == (1 : stdgo.GoInt)) : Bool);
    }
    @:keep
    @:tdfield
    static public function bytes( _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _k:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> = _k;
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(133, 133).__setNumber32__();
        return ((_buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(...((@:checkr _k ?? throw "null pointer dereference")._publicKey : Array<stdgo.GoUInt8>)));
    }
}
