package stdgo._internal.net.rpc;
class Call_asInterface {
    @:keep
    public dynamic function _done():Void __self__.value._done();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.rpc.Rpc_Call.Call>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}