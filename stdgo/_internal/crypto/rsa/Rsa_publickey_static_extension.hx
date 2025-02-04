package stdgo._internal.crypto.rsa;
@:keep @:allow(stdgo._internal.crypto.rsa.Rsa.PublicKey_asInterface) class PublicKey_static_extension {
    @:keep
    @:tdfield
    static public function equal( _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>, _x:stdgo._internal.crypto.Crypto_publickey.PublicKey):Bool {
        @:recv var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey> = _pub;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_x : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>)) : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>), _1 : false };
        }, _xx = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            return false;
        };
        return (stdgo._internal.crypto.rsa.Rsa__bigintequal._bigIntEqual((@:checkr _pub ?? throw "null pointer dereference").n, (@:checkr _xx ?? throw "null pointer dereference").n) && ((@:checkr _pub ?? throw "null pointer dereference").e == (@:checkr _xx ?? throw "null pointer dereference").e) : Bool);
    }
    @:keep
    @:tdfield
    static public function size( _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey>):stdgo.GoInt {
        @:recv var _pub:stdgo.Ref<stdgo._internal.crypto.rsa.Rsa_publickey.PublicKey> = _pub;
        return (((@:check2r (@:checkr _pub ?? throw "null pointer dereference").n.bitLen() + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
    }
}
