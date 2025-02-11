package stdgo._internal.crypto.ed25519;
@:keep @:allow(stdgo._internal.crypto.ed25519.Ed25519.PublicKey_asInterface) class PublicKey_static_extension {
    @:keep
    @:tdfield
    static public function equal( _pub:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey, _x:stdgo._internal.crypto.Crypto_publickey.PublicKey):Bool {
        @:recv var _pub:stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey = _pub;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_x : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey)) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey), _1 : true };
        } catch(_) {
            { _0 : (new stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey(0, 0) : stdgo._internal.crypto.ed25519.Ed25519_publickey.PublicKey), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_pub, _xx) == ((1 : stdgo.GoInt));
    }
}
