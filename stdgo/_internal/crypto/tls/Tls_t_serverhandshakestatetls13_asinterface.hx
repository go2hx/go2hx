package stdgo._internal.crypto.tls;
class T_serverHandshakeStateTLS13_asInterface {
    @:keep
    @:tdfield
    public dynamic function _readClientFinished():stdgo.Error return @:_0 __self__.value._readClientFinished();
    @:keep
    @:tdfield
    public dynamic function _readClientCertificate():stdgo.Error return @:_0 __self__.value._readClientCertificate();
    @:keep
    @:tdfield
    public dynamic function _sendSessionTickets():stdgo.Error return @:_0 __self__.value._sendSessionTickets();
    @:keep
    @:tdfield
    public dynamic function _shouldSendSessionTickets():Bool return @:_0 __self__.value._shouldSendSessionTickets();
    @:keep
    @:tdfield
    public dynamic function _sendServerFinished():stdgo.Error return @:_0 __self__.value._sendServerFinished();
    @:keep
    @:tdfield
    public dynamic function _sendServerCertificate():stdgo.Error return @:_0 __self__.value._sendServerCertificate();
    @:keep
    @:tdfield
    public dynamic function _requestClientCert():Bool return @:_0 __self__.value._requestClientCert();
    @:keep
    @:tdfield
    public dynamic function _sendServerParameters():stdgo.Error return @:_0 __self__.value._sendServerParameters();
    @:keep
    @:tdfield
    public dynamic function _doHelloRetryRequest(_selectedGroup:stdgo._internal.crypto.tls.Tls_curveid.CurveID):stdgo.Error return @:_0 __self__.value._doHelloRetryRequest(_selectedGroup);
    @:keep
    @:tdfield
    public dynamic function _sendDummyChangeCipherSpec():stdgo.Error return @:_0 __self__.value._sendDummyChangeCipherSpec();
    @:keep
    @:tdfield
    public dynamic function _pickCertificate():stdgo.Error return @:_0 __self__.value._pickCertificate();
    @:keep
    @:tdfield
    public dynamic function _checkForResumption():stdgo.Error return @:_0 __self__.value._checkForResumption();
    @:keep
    @:tdfield
    public dynamic function _processClientHello():stdgo.Error return @:_0 __self__.value._processClientHello();
    @:keep
    @:tdfield
    public dynamic function _handshake():stdgo.Error return @:_0 __self__.value._handshake();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_t_serverhandshakestatetls13pointer.T_serverHandshakeStateTLS13Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
