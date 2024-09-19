package stdgo._internal.internal.buildcfg;
class ExperimentFlags_asInterface {
    @:keep
    public dynamic function all():stdgo.Slice<stdgo.GoString> return __self__.value.all();
    @:keep
    public dynamic function enabled():stdgo.Slice<stdgo.GoString> return __self__.value.enabled();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.buildcfg.Buildcfg_ExperimentFlags.ExperimentFlags>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
