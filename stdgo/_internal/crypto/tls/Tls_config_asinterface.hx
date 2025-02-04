package stdgo._internal.crypto.tls;
class Config_asInterface {
    @:keep
    @:tdfield
    public dynamic function _decryptTicket(_encrypted:stdgo.Slice<stdgo.GoUInt8>, _ticketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._decryptTicket(_encrypted, _ticketKeys);
    @:keep
    @:tdfield
    public dynamic function decryptTicket(_identity:stdgo.Slice<stdgo.GoUInt8>, _cs:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>; var _1 : stdgo.Error; } return @:_0 __self__.value.decryptTicket(_identity, _cs);
    @:keep
    @:tdfield
    public dynamic function _encryptTicket(_state:stdgo.Slice<stdgo.GoUInt8>, _ticketKeys:stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._encryptTicket(_state, _ticketKeys);
    @:keep
    @:tdfield
    public dynamic function encryptTicket(_cs:stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState, _ss:stdgo.Ref<stdgo._internal.crypto.tls.Tls_sessionstate.SessionState>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.encryptTicket(_cs, _ss);
    @:keep
    @:tdfield
    public dynamic function _writeKeyLog(_label:stdgo.GoString, _clientRandom:stdgo.Slice<stdgo.GoUInt8>, _secret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._writeKeyLog(_label, _clientRandom, _secret);
    @:keep
    @:tdfield
    public dynamic function buildNameToCertificate():Void @:_0 __self__.value.buildNameToCertificate();
    @:keep
    @:tdfield
    public dynamic function _getCertificate(_clientHello:stdgo.Ref<stdgo._internal.crypto.tls.Tls_clienthelloinfo.ClientHelloInfo>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_certificate.Certificate>; var _1 : stdgo.Error; } return @:_0 __self__.value._getCertificate(_clientHello);
    @:keep
    @:tdfield
    public dynamic function _mutualVersion(_isClient:Bool, _peerVersions:stdgo.Slice<stdgo.GoUInt16>):{ var _0 : stdgo.GoUInt16; var _1 : Bool; } return @:_0 __self__.value._mutualVersion(_isClient, _peerVersions);
    @:keep
    @:tdfield
    public dynamic function _supportsCurve(_curve:stdgo._internal.crypto.tls.Tls_curveid.CurveID):Bool return @:_0 __self__.value._supportsCurve(_curve);
    @:keep
    @:tdfield
    public dynamic function _curvePreferences():stdgo.Slice<stdgo._internal.crypto.tls.Tls_curveid.CurveID> return @:_0 __self__.value._curvePreferences();
    @:keep
    @:tdfield
    public dynamic function _maxSupportedVersion(_isClient:Bool):stdgo.GoUInt16 return @:_0 __self__.value._maxSupportedVersion(_isClient);
    @:keep
    @:tdfield
    public dynamic function _supportedVersions(_isClient:Bool):stdgo.Slice<stdgo.GoUInt16> return @:_0 __self__.value._supportedVersions(_isClient);
    @:keep
    @:tdfield
    public dynamic function _cipherSuites():stdgo.Slice<stdgo.GoUInt16> return @:_0 __self__.value._cipherSuites();
    @:keep
    @:tdfield
    public dynamic function _time():stdgo._internal.time.Time_time.Time return @:_0 __self__.value._time();
    @:keep
    @:tdfield
    public dynamic function _rand():stdgo._internal.io.Io_reader.Reader return @:_0 __self__.value._rand();
    @:keep
    @:tdfield
    public dynamic function setSessionTicketKeys(_keys:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt8>>):Void @:_0 __self__.value.setSessionTicketKeys(_keys);
    @:keep
    @:tdfield
    public dynamic function _ticketKeys(_configForClient:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):stdgo.Slice<stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey> return @:_0 __self__.value._ticketKeys(_configForClient);
    @:keep
    @:tdfield
    public dynamic function _initLegacySessionTicketKeyRLocked():Void @:_0 __self__.value._initLegacySessionTicketKeyRLocked();
    @:keep
    @:tdfield
    public dynamic function clone():stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> return @:_0 __self__.value.clone();
    @:keep
    @:tdfield
    public dynamic function _ticketKeyFromBytes(_b:stdgo.GoArray<stdgo.GoUInt8>):stdgo._internal.crypto.tls.Tls_t_ticketkey.T_ticketKey return @:_0 __self__.value._ticketKeyFromBytes(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_configpointer.ConfigPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
