package stdgo._internal.crypto.internal.boring.bcache;
@:keep @:allow(stdgo._internal.crypto.internal.boring.bcache.Bcache.Cache_asInterface) class Cache_static_extension {
    @:keep
    @:tdfield
    static public function put( _c:stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache<Dynamic, Dynamic>>, _k:stdgo.Ref<Dynamic>, _v:stdgo.Ref<Dynamic>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache<Dynamic, Dynamic>> = _c;
        var _head = (stdgo.Go.setRef(_c._table()[(((new stdgo.GoUIntptr((stdgo.Go.toInterface(_k) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr) % (new stdgo.GoUIntptr(1021) : stdgo.GoUIntptr) : stdgo.GoUIntptr) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry<Dynamic, Dynamic>>>);
        var _add:stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry<Dynamic, Dynamic>> = (null : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry<Dynamic, Dynamic>>), _noK:stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry<Dynamic, Dynamic>> = (null : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry<Dynamic, Dynamic>>);
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L115"
        while (true) {
            var _e = _head.load();
            var _start = _e;
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L118"
            while ((({
                final value = _e;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (_e != _noK) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L119"
                if ((@:checkr _e ?? throw "null pointer dereference")._k == (_k)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L120"
                    (@:checkr _e ?? throw "null pointer dereference")._v.store(_v);
                    //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L121"
                    return;
                };
//"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L123"
                _n++;
                _e = (@:checkr _e ?? throw "null pointer dereference")._next;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L125"
            if (({
                final value = _add;
                (value == null || (value : Dynamic).__nil__);
            })) {
                _add = (stdgo.Go.setRef(({ _k : _k } : stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry<Dynamic, Dynamic>)) : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry<Dynamic, Dynamic>>);
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L127"
                (@:checkr _add ?? throw "null pointer dereference")._v.store(_v);
            };
            (@:checkr _add ?? throw "null pointer dereference")._next = _start;
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L130"
            if ((_n >= (1000 : stdgo.GoInt) : Bool)) {
                (@:checkr _add ?? throw "null pointer dereference")._next = null;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L135"
            if (_head.compareAndSwap(_start, _add)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L136"
                return;
            };
            _noK = _start;
        };
    }
    @:keep
    @:tdfield
    static public function get( _c:stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache<Dynamic, Dynamic>>, _k:stdgo.Ref<Dynamic>):stdgo.Ref<Dynamic> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache<Dynamic, Dynamic>> = _c;
        var _head = (stdgo.Go.setRef(_c._table()[(((new stdgo.GoUIntptr((stdgo.Go.toInterface(_k) : stdgo._internal.unsafe.Unsafe.UnsafePointer)) : stdgo.GoUIntptr) % (new stdgo.GoUIntptr(1021) : stdgo.GoUIntptr) : stdgo.GoUIntptr) : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry<Dynamic, Dynamic>>>);
        var _e = _head.load();
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L83"
        while (({
            final value = _e;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L84"
            if ((@:checkr _e ?? throw "null pointer dereference")._k == (_k)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L85"
                return (@:checkr _e ?? throw "null pointer dereference")._v.load();
            };
            _e = (@:checkr _e ?? throw "null pointer dereference")._next;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L88"
        return (null : stdgo.Ref<Dynamic>);
    }
    @:keep
    @:tdfield
    static public function clear( _c:stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache<Dynamic, Dynamic>>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache<Dynamic, Dynamic>> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L74"
        (@:checkr _c ?? throw "null pointer dereference")._ptable.store(null);
    }
    @:keep
    @:tdfield
    static public function _table( _c:stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache<Dynamic, Dynamic>>):stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cachetable.T_cacheTable<Dynamic, Dynamic>> {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache<Dynamic, Dynamic>> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L56"
        while (true) {
            var _p = (@:checkr _c ?? throw "null pointer dereference")._ptable.load();
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L58"
            if (({
                final value = _p;
                (value == null || (value : Dynamic).__nil__);
            })) {
                _p = (stdgo.Go.setRef(new stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cachetable.T_cacheTable(1021, 1021, ...[for (i in 0 ... 1021) ({} : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cacheentry.T_cacheEntry<Dynamic, Dynamic>>)])) : stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cachetable.T_cacheTable<Dynamic, Dynamic>>);
                //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L60"
                if (!(@:checkr _c ?? throw "null pointer dereference")._ptable.compareAndSwap(null, _p)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L61"
                    continue;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L64"
            return _p;
        };
    }
    @:keep
    @:tdfield
    static public function register( _c:stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache<Dynamic, Dynamic>>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.internal.boring.bcache.Bcache_cache.Cache<Dynamic, Dynamic>> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/internal/boring/bcache/cache.go#L45"
        stdgo._internal.crypto.internal.boring.bcache.Bcache__registercache._registerCache((stdgo.Go.toInterface((stdgo.Go.setRef((@:checkr _c ?? throw "null pointer dereference")._ptable) : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.crypto.internal.boring.bcache.Bcache_t_cachetable.T_cacheTable<Dynamic, Dynamic>>>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer));
    }
}
