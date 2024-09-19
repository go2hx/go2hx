package stdgo._internal.crypto.tls;
class QUICConn_asInterface {
    @:keep
    public dynamic function setTransportParameters(_params:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value.setTransportParameters(_params);
    @:keep
    public dynamic function connectionState():stdgo._internal.crypto.tls.Tls_ConnectionState.ConnectionState return __self__.value.connectionState();
    @:keep
    public dynamic function sendSessionTicket(_opts:stdgo._internal.crypto.tls.Tls_QUICSessionTicketOptions.QUICSessionTicketOptions):stdgo.Error return __self__.value.sendSessionTicket(_opts);
    @:keep
    public dynamic function handleData(_level:stdgo._internal.crypto.tls.Tls_QUICEncryptionLevel.QUICEncryptionLevel, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return __self__.value.handleData(_level, _data);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function nextEvent():stdgo._internal.crypto.tls.Tls_QUICEvent.QUICEvent return __self__.value.nextEvent();
    @:keep
    public dynamic function start(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Error return __self__.value.start(_ctx);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
