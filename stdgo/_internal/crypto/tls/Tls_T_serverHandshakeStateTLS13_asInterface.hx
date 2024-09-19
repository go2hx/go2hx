package stdgo._internal.crypto.tls;
class T_serverHandshakeStateTLS13_asInterface {
    @:keep
    public dynamic function _readClientFinished():stdgo.Error return __self__.value._readClientFinished();
    @:keep
    public dynamic function _readClientCertificate():stdgo.Error return __self__.value._readClientCertificate();
    @:keep
    public dynamic function _sendSessionTickets():stdgo.Error return __self__.value._sendSessionTickets();
    @:keep
    public dynamic function _shouldSendSessionTickets():Bool return __self__.value._shouldSendSessionTickets();
    @:keep
    public dynamic function _sendServerFinished():stdgo.Error return __self__.value._sendServerFinished();
    @:keep
    public dynamic function _sendServerCertificate():stdgo.Error return __self__.value._sendServerCertificate();
    @:keep
    public dynamic function _requestClientCert():Bool return __self__.value._requestClientCert();
    @:keep
    public dynamic function _sendServerParameters():stdgo.Error return __self__.value._sendServerParameters();
    @:keep
    public dynamic function _doHelloRetryRequest(_selectedGroup:stdgo._internal.crypto.tls.Tls_CurveID.CurveID):stdgo.Error return __self__.value._doHelloRetryRequest(_selectedGroup);
    @:keep
    public dynamic function _sendDummyChangeCipherSpec():stdgo.Error return __self__.value._sendDummyChangeCipherSpec();
    @:keep
    public dynamic function _pickCertificate():stdgo.Error return __self__.value._pickCertificate();
    @:keep
    public dynamic function _checkForResumption():stdgo.Error return __self__.value._checkForResumption();
    @:keep
    public dynamic function _processClientHello():stdgo.Error return __self__.value._processClientHello();
    @:keep
    public dynamic function _handshake():stdgo.Error return __self__.value._handshake();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.tls.Tls_T_serverHandshakeStateTLS13.T_serverHandshakeStateTLS13>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
