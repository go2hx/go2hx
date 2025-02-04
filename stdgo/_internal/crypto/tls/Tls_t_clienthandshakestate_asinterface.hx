package stdgo._internal.crypto.tls;
class T_clientHandshakeState_asInterface {
    @:keep
    @:tdfield
    public dynamic function _sendFinished(_out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._sendFinished(_out);
    @:keep
    @:tdfield
    public dynamic function _saveSessionTicket():stdgo.Error return @:_0 __self__.value._saveSessionTicket();
    @:keep
    @:tdfield
    public dynamic function _readSessionTicket():stdgo.Error return @:_0 __self__.value._readSessionTicket();
    @:keep
    @:tdfield
    public dynamic function _readFinished(_out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._readFinished(_out);
    @:keep
    @:tdfield
    public dynamic function _processServerHello():{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value._processServerHello();
    @:keep
    @:tdfield
    public dynamic function _serverResumedSession():Bool return @:_0 __self__.value._serverResumedSession();
    @:keep
    @:tdfield
    public dynamic function _establishKeys():stdgo.Error return @:_0 __self__.value._establishKeys();
    @:keep
    @:tdfield
    public dynamic function _doFullHandshake():stdgo.Error return @:_0 __self__.value._doFullHandshake();
    @:keep
    @:tdfield
    public dynamic function _pickCipherSuite():stdgo.Error return @:_0 __self__.value._pickCipherSuite();
    @:keep
    @:tdfield
    public dynamic function _handshake():stdgo.Error return @:_0 __self__.value._handshake();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_t_clienthandshakestatepointer.T_clientHandshakeStatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
