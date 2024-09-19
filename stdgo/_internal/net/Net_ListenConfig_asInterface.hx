package stdgo._internal.net;
class ListenConfig_asInterface {
    @:keep
    public dynamic function listenPacket(_ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_PacketConn.PacketConn; var _1 : stdgo.Error; } return __self__.value.listenPacket(_ctx, _network, _address);
    @:keep
    public dynamic function listen(_ctx:stdgo._internal.context.Context_Context.Context, _network:stdgo.GoString, _address:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_Listener.Listener; var _1 : stdgo.Error; } return __self__.value.listen(_ctx, _network, _address);
    @:keep
    public dynamic function setMultipathTCP(_use:Bool):Void __self__.value.setMultipathTCP(_use);
    @:keep
    public dynamic function multipathTCP():Bool return __self__.value.multipathTCP();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.Net_ListenConfig.ListenConfig>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
