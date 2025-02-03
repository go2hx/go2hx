package stdgo.runtime;
class PageCache_static_extension {
    static public function flush(_c:PageCache, _s:PageAlloc):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_PageCache.PageCache>);
        final _s = (_s : stdgo.Ref<stdgo._internal.runtime.Runtime_PageAlloc.PageAlloc>);
        stdgo._internal.runtime.Runtime_PageCache_static_extension.PageCache_static_extension.flush(_c, _s);
    }
    static public function alloc(_c:PageCache, _npages:stdgo.GoUIntptr):stdgo.Tuple<stdgo.GoUIntptr, stdgo.GoUIntptr> {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_PageCache.PageCache>);
        final _npages = (_npages : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.runtime.Runtime_PageCache_static_extension.PageCache_static_extension.alloc(_c, _npages);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function scav(_c:PageCache):haxe.UInt64 {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_PageCache.PageCache>);
        return stdgo._internal.runtime.Runtime_PageCache_static_extension.PageCache_static_extension.scav(_c);
    }
    static public function cache(_c:PageCache):haxe.UInt64 {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_PageCache.PageCache>);
        return stdgo._internal.runtime.Runtime_PageCache_static_extension.PageCache_static_extension.cache(_c);
    }
    static public function base(_c:PageCache):stdgo.GoUIntptr {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_PageCache.PageCache>);
        return stdgo._internal.runtime.Runtime_PageCache_static_extension.PageCache_static_extension.base(_c);
    }
    static public function empty(_c:PageCache):Bool {
        final _c = (_c : stdgo.Ref<stdgo._internal.runtime.Runtime_PageCache.PageCache>);
        return stdgo._internal.runtime.Runtime_PageCache_static_extension.PageCache_static_extension.empty(_c);
    }
}
