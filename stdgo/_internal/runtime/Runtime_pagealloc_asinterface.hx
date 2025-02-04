package stdgo._internal.runtime;
class PageAlloc_asInterface {
    @:keep
    @:tdfield
    public dynamic function pallocData(_i:stdgo._internal.runtime.Runtime_chunkidx.ChunkIdx):stdgo.Ref<stdgo._internal.runtime.Runtime_pallocdata.PallocData> return @:_0 __self__.value.pallocData(_i);
    @:keep
    @:tdfield
    public dynamic function inUse():stdgo.Slice<stdgo._internal.runtime.Runtime_addrrange.AddrRange> return @:_0 __self__.value.inUse();
    @:keep
    @:tdfield
    public dynamic function scavenge(_nbytes:stdgo.GoUIntptr):stdgo.GoUIntptr return @:_0 __self__.value.scavenge(_nbytes);
    @:keep
    @:tdfield
    public dynamic function bounds():{ var _0 : stdgo._internal.runtime.Runtime_chunkidx.ChunkIdx; var _1 : stdgo._internal.runtime.Runtime_chunkidx.ChunkIdx; } return @:_0 __self__.value.bounds();
    @:keep
    @:tdfield
    public dynamic function free(_base:stdgo.GoUIntptr, _npages:stdgo.GoUIntptr):Void @:_0 __self__.value.free(_base, _npages);
    @:keep
    @:tdfield
    public dynamic function allocToCache():stdgo._internal.runtime.Runtime_pagecache.PageCache return @:_0 __self__.value.allocToCache();
    @:keep
    @:tdfield
    public dynamic function alloc(_npages:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; } return @:_0 __self__.value.alloc(_npages);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_pageallocpointer.PageAllocPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
