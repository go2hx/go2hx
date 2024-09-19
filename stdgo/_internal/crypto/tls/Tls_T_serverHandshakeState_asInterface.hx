package stdgo._internal.crypto.tls;
class T_serverHandshakeState_asInterface {
    @:keep
    public dynamic function _sendFinished(_out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value._sendFinished(_out);
    @:keep
    public dynamic function _sendSessionTicket():stdgo.Error return __self__.value._sendSessionTicket();
    @:keep
    public dynamic function _readFinished(_out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value._readFinished(_out);
    @:keep
    public dynamic function _establishKeys():stdgo.Error return __self__.value._establishKeys();
    @:keep
    public dynamic function _doFullHandshake():stdgo.Error return __self__.value._doFullHandshake();
    @:keep
    public dynamic function _doResumeHandshake():stdgo.Error return __self__.value._doResumeHandshake();
    @:keep
    public dynamic function _checkForResumption():stdgo.Error return __self__.value._checkForResumption();
    @:keep
    public dynamic function _cipherSuiteOk(_c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_T_cipherSuite.T_cipherSuite>):Bool return __self__.value._cipherSuiteOk(_c);
    @:keep
    public dynamic function _pickCipherSuite():stdgo.Error return __self__.value._pickCipherSuite();
    @:keep
    public dynamic function _processClientHello():stdgo.Error return __self__.value._processClientHello();
    @:keep
    public dynamic function _handshake():stdgo.Error return __self__.value._handshake();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.tls.Tls_T_serverHandshakeState.T_serverHandshakeState>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
