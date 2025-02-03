package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_ecdheKeyAgreement_static_extension) abstract T_ecdheKeyAgreement(stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement.T_ecdheKeyAgreement) from stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement.T_ecdheKeyAgreement to stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement.T_ecdheKeyAgreement {
    public var _version(get, set) : std.UInt;
    function get__version():std.UInt return this._version;
    function set__version(v:std.UInt):std.UInt {
        this._version = (v : stdgo.GoUInt16);
        return v;
    }
    public var _isRSA(get, set) : Bool;
    function get__isRSA():Bool return this._isRSA;
    function set__isRSA(v:Bool):Bool {
        this._isRSA = v;
        return v;
    }
    public var _key(get, set) : stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey;
    function get__key():stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey return this._key;
    function set__key(v:stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey):stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey {
        this._key = (v : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>);
        return v;
    }
    public var _ckx(get, set) : T_clientKeyExchangeMsg;
    function get__ckx():T_clientKeyExchangeMsg return this._ckx;
    function set__ckx(v:T_clientKeyExchangeMsg):T_clientKeyExchangeMsg {
        this._ckx = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>);
        return v;
    }
    public var _preMasterSecret(get, set) : Array<std.UInt>;
    function get__preMasterSecret():Array<std.UInt> return [for (i in this._preMasterSecret) i];
    function set__preMasterSecret(v:Array<std.UInt>):Array<std.UInt> {
        this._preMasterSecret = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_version:std.UInt, ?_isRSA:Bool, ?_key:stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey, ?_ckx:T_clientKeyExchangeMsg, ?_preMasterSecret:Array<std.UInt>) this = new stdgo._internal.crypto.tls.Tls_T_ecdheKeyAgreement.T_ecdheKeyAgreement((_version : stdgo.GoUInt16), _isRSA, (_key : stdgo.Ref<stdgo._internal.crypto.ecdh.Ecdh_PrivateKey.PrivateKey>), (_ckx : stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg>), ([for (i in _preMasterSecret) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
