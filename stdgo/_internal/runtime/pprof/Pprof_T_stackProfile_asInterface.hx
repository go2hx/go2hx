package stdgo._internal.runtime.pprof;
class T_stackProfile_asInterface {
    @:keep
    public dynamic function label(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap> return __self__.value.label(_i);
    @:keep
    public dynamic function stack(_i:stdgo.GoInt):stdgo.Slice<stdgo.GoUIntptr> return __self__.value.stack(_i);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.pprof.Pprof_T_stackProfile.T_stackProfile>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}