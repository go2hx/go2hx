package stdgo._internal.internal.coverage.calloc;
class BatchCounterAlloc_asInterface {
    @:keep
    @:tdfield
    public dynamic function allocateCounters(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt32> return @:_0 __self__.value.allocateCounters(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.coverage.calloc.Calloc_batchcounterallocpointer.BatchCounterAllocPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
