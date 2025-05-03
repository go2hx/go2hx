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
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L47"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L48"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L50"
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_pub, _xx) == ((1 : stdgo.GoInt));
    }
}
