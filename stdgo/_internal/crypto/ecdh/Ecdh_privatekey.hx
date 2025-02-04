package stdgo._internal.crypto.ecdh;
@:structInit @:using(stdgo._internal.crypto.ecdh.Ecdh_privatekey_static_extension.PrivateKey_static_extension) class PrivateKey {
    public var _curve : stdgo._internal.crypto.ecdh.Ecdh_curve.Curve = (null : stdgo._internal.crypto.ecdh.Ecdh_curve.Curve);
    public var _privateKey : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _boring : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH> = (null : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH>);
    public var _publicKey : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey> = (null : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>);
    public var _publicKeyOnce : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public function new(?_curve:stdgo._internal.crypto.ecdh.Ecdh_curve.Curve, ?_privateKey:stdgo.Slice<stdgo.GoUInt8>, ?_boring:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_privatekeyecdh.PrivateKeyECDH>, ?_publicKey:stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_publickey.PublicKey>, ?_publicKeyOnce:stdgo._internal.sync.Sync_once.Once) {
        if (_curve != null) this._curve = _curve;
        if (_privateKey != null) this._privateKey = _privateKey;
        if (_boring != null) this._boring = _boring;
        if (_publicKey != null) this._publicKey = _publicKey;
        if (_publicKeyOnce != null) this._publicKeyOnce = _publicKeyOnce;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PrivateKey(_curve, _privateKey, _boring, _publicKey, _publicKeyOnce);
    }
}
