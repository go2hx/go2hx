package stdgo._internal.net;
class T_sysListener_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setMultipathTCP(_0:Bool):Void @:_0 __self__.value.setMultipathTCP(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function multipathTCP():Bool return @:_0 __self__.value.multipathTCP();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function listenPacket(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_packetconn.PacketConn; var _1 : stdgo.Error; } return @:_0 __self__.value.listenPacket(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function listen(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_listener.Listener; var _1 : stdgo.Error; } return @:_0 __self__.value.listen(_0, _1, _2);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_t_syslistenerpointer.T_sysListenerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
