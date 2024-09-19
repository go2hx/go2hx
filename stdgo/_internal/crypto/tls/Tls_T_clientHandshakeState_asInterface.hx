package stdgo._internal.crypto.tls;
class T_clientHandshakeState_asInterface {
    @:keep
    public dynamic function _sendFinished(_out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value._sendFinished(_out);
    @:keep
    public dynamic function _saveSessionTicket():stdgo.Error return __self__.value._saveSessionTicket();
    @:keep
    public dynamic function _readSessionTicket():stdgo.Error return __self__.value._readSessionTicket();
    @:keep
    public dynamic function _readFinished(_out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value._readFinished(_out);
    @:keep
    public dynamic function _processServerHello():{ var _0 : Bool; var _1 : stdgo.Error; } return __self__.value._processServerHello();
    @:keep
    public dynamic function _serverResumedSession():Bool return __self__.value._serverResumedSession();
    @:keep
    public dynamic function _establishKeys():stdgo.Error return __self__.value._establishKeys();
    @:keep
    public dynamic function _doFullHandshake():stdgo.Error return __self__.value._doFullHandshake();
    @:keep
    public dynamic function _pickCipherSuite():stdgo.Error return __self__.value._pickCipherSuite();
    @:keep
    public dynamic function _handshake():stdgo.Error return __self__.value._handshake();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.tls.Tls_T_clientHandshakeState.T_clientHandshakeState>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
