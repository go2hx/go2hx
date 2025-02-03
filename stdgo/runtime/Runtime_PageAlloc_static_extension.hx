package stdgo.runtime;
class PageAlloc_static_extension {
    static public function pallocData(_p:PageAlloc, _i:ChunkIdx):PallocData {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_PageAlloc.PageAlloc>);
        return stdgo._internal.runtime.Runtime_PageAlloc_static_extension.PageAlloc_static_extension.pallocData(_p, _i);
    }
    static public function inUse(_p:PageAlloc):Array<AddrRange> {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_PageAlloc.PageAlloc>);
        return [for (i in stdgo._internal.runtime.Runtime_PageAlloc_static_extension.PageAlloc_static_extension.inUse(_p)) i];
    }
    static public function scavenge(_p:PageAlloc, _nbytes:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_PageAlloc.PageAlloc>);
        final _nbytes = (_nbytes : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_PageAlloc_static_extension.PageAlloc_static_extension.scavenge(_p, _nbytes);
    }
    static public function bounds(_p:PageAlloc):stdgo.Tuple<ChunkIdx, ChunkIdx> {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_PageAlloc.PageAlloc>);
        return {
            final obj = stdgo._internal.runtime.Runtime_PageAlloc_static_extension.PageAlloc_static_extension.bounds(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function free(_p:PageAlloc, _base:stdgo.GoUIntptr, _npages:stdgo.GoUIntptr):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_PageAlloc.PageAlloc>);
        final _base = (_base : stdgo.GoUIntptr);
        final _npages = (_npages : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_PageAlloc_static_extension.PageAlloc_static_extension.free(_p, _base, _npages);
    }
    static public function allocToCache(_p:PageAlloc):PageCache {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_PageAlloc.PageAlloc>);
        return stdgo._internal.runtime.Runtime_PageAlloc_static_extension.PageAlloc_static_extension.allocToCache(_p);
    }
    static public function alloc(_p:PageAlloc, _npages:stdgo.GoUIntptr):stdgo.Tuple<stdgo.GoUIntptr, stdgo.GoUIntptr> {
        final _p = (_p : stdgo.Ref<stdgo._internal.runtime.Runtime_PageAlloc.PageAlloc>);
        final _npages = (_npages : stdgo.GoUIntptr);
        return {
            final obj = stdgo._internal.runtime.Runtime_PageAlloc_static_extension.PageAlloc_static_extension.alloc(_p, _npages);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
