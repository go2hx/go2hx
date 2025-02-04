package stdgo._internal.runtime.pprof;
class T_profMap_asInterface {
    @:keep
    @:tdfield
    public dynamic function _lookup(_stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> return @:_0 __self__.value._lookup(_stk, _tag);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.pprof.Pprof_t_profmappointer.T_profMapPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
