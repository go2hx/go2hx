package stdgo._internal.runtime;
class PageCache_asInterface {
    @:keep
    @:tdfield
    public dynamic function flush(_s:stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>):Void @:_0 __self__.value.flush(_s);
    @:keep
    @:tdfield
    public dynamic function alloc(_npages:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; } return @:_0 __self__.value.alloc(_npages);
    @:keep
    @:tdfield
    public dynamic function scav():stdgo.GoUInt64 return @:_0 __self__.value.scav();
    @:keep
    @:tdfield
    public dynamic function cache():stdgo.GoUInt64 return @:_0 __self__.value.cache();
    @:keep
    @:tdfield
    public dynamic function base():stdgo.GoUIntptr return @:_0 __self__.value.base();
    @:keep
    @:tdfield
    public dynamic function empty():Bool return @:_0 __self__.value.empty();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_pagecachepointer.PageCachePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
