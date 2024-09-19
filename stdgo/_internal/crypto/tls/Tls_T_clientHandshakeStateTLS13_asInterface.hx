package stdgo._internal.crypto.tls;
class T_clientHandshakeStateTLS13_asInterface {
    @:keep
    public dynamic function _sendClientFinished():stdgo.Error return __self__.value._sendClientFinished();
    @:keep
    public dynamic function _sendClientCertificate():stdgo.Error return __self__.value._sendClientCertificate();
    @:keep
    public dynamic function _readServerFinished():stdgo.Error return __self__.value._readServerFinished();
    @:keep
    public dynamic function _readServerCertificate():stdgo.Error return __self__.value._readServerCertificate();
    @:keep
    public dynamic function _readServerParameters():stdgo.Error return __self__.value._readServerParameters();
    @:keep
    public dynamic function _establishHandshakeKeys():stdgo.Error return __self__.value._establishHandshakeKeys();
    @:keep
    public dynamic function _processServerHello():stdgo.Error return __self__.value._processServerHello();
    @:keep
    public dynamic function _processHelloRetryRequest():stdgo.Error return __self__.value._processHelloRetryRequest();
    @:keep
    public dynamic function _sendDummyChangeCipherSpec():stdgo.Error return __self__.value._sendDummyChangeCipherSpec();
    @:keep
    public dynamic function _checkServerHelloOrHRR():stdgo.Error return __self__.value._checkServerHelloOrHRR();
    @:keep
    public dynamic function _handshake():stdgo.Error return __self__.value._handshake();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.tls.Tls_T_clientHandshakeStateTLS13.T_clientHandshakeStateTLS13>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
