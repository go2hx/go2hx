package stdgo._internal.runtime;
class PallocSum_asInterface {
    @:keep
    public dynamic function end():stdgo.GoUInt return __self__.value.end();
    @:keep
    public dynamic function max():stdgo.GoUInt return __self__.value.max();
    @:keep
    public dynamic function start():stdgo.GoUInt return __self__.value.start();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.Runtime_PallocSum.PallocSum>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
