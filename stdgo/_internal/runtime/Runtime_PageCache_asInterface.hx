package stdgo._internal.runtime;
class PageCache_asInterface {
    @:keep
    public dynamic function flush(_s:stdgo.Ref<stdgo._internal.runtime.Runtime_PageAlloc.PageAlloc>):Void __self__.value.flush(_s);
    @:keep
    public dynamic function alloc(_npages:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; } return __self__.value.alloc(_npages);
    @:keep
    public dynamic function scav():stdgo.GoUInt64 return __self__.value.scav();
    @:keep
    public dynamic function cache():stdgo.GoUInt64 return __self__.value.cache();
    @:keep
    public dynamic function base():stdgo.GoUIntptr return __self__.value.base();
    @:keep
    public dynamic function empty():Bool return __self__.value.empty();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.Runtime_PageCache.PageCache>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
