package stdgo._internal.crypto.tls;
class Config_asInterface {
    @:keep
    public dynamic function _decryptTicket(_encrypted:stdgo.Slice<stdgo.GoUInt8>, _ticketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>):stdgo.Slice<stdgo.GoUInt8> return __self__.value._decryptTicket(_encrypted, _ticketKeys);
    @:keep
    public dynamic function decryptTicket(_identity:stdgo.Slice<stdgo.GoUInt8>, _cs:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>; var _1 : stdgo.Error; } return __self__.value.decryptTicket(_identity, _cs);
    @:keep
    public dynamic function _encryptTicket(_state:stdgo.Slice<stdgo.GoUInt8>, _ticketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value._encryptTicket(_state, _ticketKeys);
    @:keep
    public dynamic function encryptTicket(_cs:stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState, _ss:stdgo.Ref<stdgo._internal.crypto.tls.Tls_SessionState.SessionState>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.encryptTicket(_cs, _ss);
    @:keep
    public dynamic function _writeKeyLog(_label:stdgo.GoString, _clientRandom:stdgo.Slice<stdgo.GoUInt8>, _secret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value._writeKeyLog(_label, _clientRandom, _secret);
    @:keep
    public dynamic function buildNameToCertificate():Void __self__.value.buildNameToCertificate();
    @:keep
    public dynamic function _getCertificate(_clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_ClientHelloInfo.ClientHelloInfo>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Certificate.Certificate>; var _1 : stdgo.Error; } return __self__.value._getCertificate(_clientHello);
    @:keep
    public dynamic function _mutualVersion(_isClient:Bool, _peerVersions:stdgo.Slice<stdgo.GoUInt16>):{ var _0 : stdgo.GoUInt16; var _1 : Bool; } return __self__.value._mutualVersion(_isClient, _peerVersions);
    @:keep
    public dynamic function _supportsCurve(_curve:stdgo._internal.crypto.tls.Tls_CurveID.CurveID):Bool return __self__.value._supportsCurve(_curve);
    @:keep
    public dynamic function _curvePreferences():stdgo.Slice<stdgo._internal.crypto.tls.Tls_CurveID.CurveID> return __self__.value._curvePreferences();
    @:keep
    public dynamic function _maxSupportedVersion(_isClient:Bool):stdgo.GoUInt16 return __self__.value._maxSupportedVersion(_isClient);
    @:keep
    public dynamic function _supportedVersions(_isClient:Bool):stdgo.Slice<stdgo.GoUInt16> return __self__.value._supportedVersions(_isClient);
    @:keep
    public dynamic function _cipherSuites():stdgo.Slice<stdgo.GoUInt16> return __self__.value._cipherSuites();
    @:keep
    public dynamic function _time():stdgo._internal.time.Time_Time.Time return __self__.value._time();
    @:keep
    public dynamic function _rand():stdgo._internal.io.Io_Reader.Reader return __self__.value._rand();
    @:keep
    public dynamic function setSessionTicketKeys(_keys:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt8>>):Void __self__.value.setSessionTicketKeys(_keys);
    @:keep
    public dynamic function _ticketKeys(_configForClient:stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>):stdgo.Slice<stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey> return __self__.value._ticketKeys(_configForClient);
    @:keep
    public dynamic function _initLegacySessionTicketKeyRLocked():Void __self__.value._initLegacySessionTicketKeyRLocked();
    @:keep
    public dynamic function clone():stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config> return __self__.value.clone();
    @:keep
    public dynamic function _ticketKeyFromBytes(_b:stdgo.GoArray<stdgo.GoUInt8>):stdgo._internal.crypto.tls.Tls_T_ticketKey.T_ticketKey return __self__.value._ticketKeyFromBytes(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.tls.Tls_Config.Config>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
