package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement_static_extension.T_ecdheKeyAgreement_static_extension) class T_ecdheKeyAgreement {
    public var _version : stdgo.GoUInt16 = 0;
    public var _isRSA : Bool = false;
    public var _key : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey> = (null : stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
    public var _ckx : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>);
    public var _preMasterSecret : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_version:stdgo.GoUInt16, ?_isRSA:Bool, ?_key:stdgo.Ref<_internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>, ?_ckx:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>, ?_preMasterSecret:stdgo.Slice<stdgo.GoUInt8>) {
        if (_version != null) this._version = _version;
        if (_isRSA != null) this._isRSA = _isRSA;
        if (_key != null) this._key = _key;
        if (_ckx != null) this._ckx = _ckx;
        if (_preMasterSecret != null) this._preMasterSecret = _preMasterSecret;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ecdheKeyAgreement(_version, _isRSA, _key, _ckx, _preMasterSecret);
    }
}
