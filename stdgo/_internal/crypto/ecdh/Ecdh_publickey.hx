package stdgo._internal.crypto.ecdh;
@:structInit @:using(stdgo._internal.crypto.ecdh.Ecdh_publickey_static_extension.PublicKey_static_extension) class PublicKey {
    public var _curve : stdgo._internal.crypto.ecdh.Ecdh_curve.Curve = (null : stdgo._internal.crypto.ecdh.Ecdh_curve.Curve);
    public var _publicKey : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _boring : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH> = (null : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH>);
    public function new(?_curve:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve, ?_publicKey:stdgo.Slice<stdgo.GoUInt8>, ?_boring:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyecdh.PublicKeyECDH>) {
        if (_curve != null) this._curve = _curve;
        if (_publicKey != null) this._publicKey = _publicKey;
        if (_boring != null) this._boring = _boring;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PublicKey(_curve, _publicKey, _boring);
    }
}
