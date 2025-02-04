package stdgo._internal.crypto.tls;
class QUICConn_asInterface {
    @:keep
    @:tdfield
    public dynamic function setTransportParameters(_params:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.setTransportParameters(_params);
    @:keep
    @:tdfield
    public dynamic function connectionState():stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState return @:_0 __self__.value.connectionState();
    @:keep
    @:tdfield
    public dynamic function sendSessionTicket(_opts:stdgo._internal.crypto.tls.Tls_quicsessionticketoptions.QUICSessionTicketOptions):stdgo.Error return @:_0 __self__.value.sendSessionTicket(_opts);
    @:keep
    @:tdfield
    public dynamic function handleData(_level:stdgo._internal.crypto.tls.Tls_quicencryptionlevel.QUICEncryptionLevel, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.handleData(_level, _data);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function nextEvent():stdgo._internal.crypto.tls.Tls_quicevent.QUICEvent return @:_0 __self__.value.nextEvent();
    @:keep
    @:tdfield
    public dynamic function start(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Error return @:_0 __self__.value.start(_ctx);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_quicconnpointer.QUICConnPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
