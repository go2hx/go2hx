package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.PageAlloc_asInterface) class PageAlloc_static_extension {
    @:keep
    @:tdfield
    static public function pallocData( _p:stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>, _i:stdgo._internal.runtime.Runtime_chunkidx.ChunkIdx):stdgo.Ref<stdgo._internal.runtime.Runtime_pallocdata.PallocData> throw "PageAlloc:runtime.pallocData is not yet implemented";
    @:keep
    @:tdfield
    static public function inUse( _p:stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>):stdgo.Slice<stdgo._internal.runtime.Runtime_addrrange.AddrRange> throw "PageAlloc:runtime.inUse is not yet implemented";
    @:keep
    @:tdfield
    static public function scavenge( _p:stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>, _nbytes:stdgo.GoUIntptr):stdgo.GoUIntptr throw "PageAlloc:runtime.scavenge is not yet implemented";
    @:keep
    @:tdfield
    static public function bounds( _p:stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>):{ var _0 : stdgo._internal.runtime.Runtime_chunkidx.ChunkIdx; var _1 : stdgo._internal.runtime.Runtime_chunkidx.ChunkIdx; } throw "PageAlloc:runtime.bounds is not yet implemented";
    @:keep
    @:tdfield
    static public function free( _p:stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>, _base:stdgo.GoUIntptr, _npages:stdgo.GoUIntptr):Void throw "PageAlloc:runtime.free is not yet implemented";
    @:keep
    @:tdfield
    static public function allocToCache( _p:stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>):stdgo._internal.runtime.Runtime_pagecache.PageCache throw "PageAlloc:runtime.allocToCache is not yet implemented";
    @:keep
    @:tdfield
    static public function alloc( _p:stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>, _npages:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; } throw "PageAlloc:runtime.alloc is not yet implemented";
}
