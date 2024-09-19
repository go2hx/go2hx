package stdgo._internal.runtime;
class PageAlloc_asInterface {
    @:keep
    public dynamic function pallocData(_i:stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx):stdgo.Ref<stdgo._internal.runtime.Runtime_PallocData.PallocData> return __self__.value.pallocData(_i);
    @:keep
    public dynamic function inUse():stdgo.Slice<stdgo._internal.runtime.Runtime_AddrRange.AddrRange> return __self__.value.inUse();
    @:keep
    public dynamic function scavenge(_nbytes:stdgo.GoUIntptr):stdgo.GoUIntptr return __self__.value.scavenge(_nbytes);
    @:keep
    public dynamic function bounds():{ var _0 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx; var _1 : stdgo._internal.runtime.Runtime_ChunkIdx.ChunkIdx; } return __self__.value.bounds();
    @:keep
    public dynamic function free(_base:stdgo.GoUIntptr, _npages:stdgo.GoUIntptr):Void __self__.value.free(_base, _npages);
    @:keep
    public dynamic function allocToCache():stdgo._internal.runtime.Runtime_PageCache.PageCache return __self__.value.allocToCache();
    @:keep
    public dynamic function alloc(_npages:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; } return __self__.value.alloc(_npages);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.Runtime_PageAlloc.PageAlloc>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
