package _internal.crypto.ecdh;
@:structInit @:using(_internal.crypto.ecdh.Ecdh_PrivateKey_static_extension.PrivateKey_static_extension) class PrivateKey {
    public var _curve : _internal.crypto.ecdh.Ecdh_Curve.Curve = (null : _internal.crypto.ecdh.Ecdh_Curve.Curve);
    public var _privateKey : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _boring : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH> = (null : stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH>);
    public var _publicKey : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey> = (null : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>);
    public var _publicKeyOnce : stdgo._internal.sync.Sync_Once.Once = ({} : stdgo._internal.sync.Sync_Once.Once);
    public function new(?_curve:_internal.crypto.ecdh.Ecdh_Curve.Curve, ?_privateKey:stdgo.Slice<stdgo.GoUInt8>, ?_boring:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_PrivateKeyECDH.PrivateKeyECDH>, ?_publicKey:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PublicKey.PublicKey>, ?_publicKeyOnce:stdgo._internal.sync.Sync_Once.Once) {
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