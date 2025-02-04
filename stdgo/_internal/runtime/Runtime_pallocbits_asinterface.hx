package stdgo._internal.runtime;
class PallocBits_asInterface {
    @:keep
    @:tdfield
    public dynamic function popcntRange(_i:stdgo.GoUInt, _n:stdgo.GoUInt):stdgo.GoUInt return @:_0 __self__.value.popcntRange(_i, _n);
    @:keep
    @:tdfield
    public dynamic function summarize():stdgo._internal.runtime.Runtime_pallocsum.PallocSum return @:_0 __self__.value.summarize();
    @:keep
    @:tdfield
    public dynamic function free(_i:stdgo.GoUInt, _n:stdgo.GoUInt):Void @:_0 __self__.value.free(_i, _n);
    @:keep
    @:tdfield
    public dynamic function allocRange(_i:stdgo.GoUInt, _n:stdgo.GoUInt):Void @:_0 __self__.value.allocRange(_i, _n);
    @:keep
    @:tdfield
    public dynamic function find(_npages:stdgo.GoUIntptr, _searchIdx:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return @:_0 __self__.value.find(_npages, _searchIdx);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_pallocbitspointer.PallocBitsPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
