package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.PageCache_asInterface) class PageCache_static_extension {
    @:keep
    @:tdfield
    static public function flush( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_pagecache.PageCache>, _s:stdgo.Ref<stdgo._internal.runtime.Runtime_pagealloc.PageAlloc>):Void throw "PageCache:runtime.flush is not yet implemented";
    @:keep
    @:tdfield
    static public function alloc( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_pagecache.PageCache>, _npages:stdgo.GoUIntptr):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; } throw "PageCache:runtime.alloc is not yet implemented";
    @:keep
    @:tdfield
    static public function scav( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_pagecache.PageCache>):stdgo.GoUInt64 throw "PageCache:runtime.scav is not yet implemented";
    @:keep
    @:tdfield
    static public function cache( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_pagecache.PageCache>):stdgo.GoUInt64 throw "PageCache:runtime.cache is not yet implemented";
    @:keep
    @:tdfield
    static public function base( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_pagecache.PageCache>):stdgo.GoUIntptr throw "PageCache:runtime.base is not yet implemented";
    @:keep
    @:tdfield
    static public function empty( _c:stdgo.Ref<stdgo._internal.runtime.Runtime_pagecache.PageCache>):Bool throw "PageCache:runtime.empty is not yet implemented";
}
