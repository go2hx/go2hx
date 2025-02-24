package stdgo._internal.sync;
function _poolCleanup():Void {
        for (__16 => _p in stdgo._internal.sync.Sync__oldpools._oldPools) {
            (@:checkr _p ?? throw "null pointer dereference")._victim = @:default_value null;
            (@:checkr _p ?? throw "null pointer dereference")._victimSize = (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr);
        };
        for (__17 => _p in stdgo._internal.sync.Sync__allpools._allPools) {
            (@:checkr _p ?? throw "null pointer dereference")._victim = (@:checkr _p ?? throw "null pointer dereference")._local;
            (@:checkr _p ?? throw "null pointer dereference")._victimSize = (@:checkr _p ?? throw "null pointer dereference")._localSize;
            (@:checkr _p ?? throw "null pointer dereference")._local = @:default_value null;
            (@:checkr _p ?? throw "null pointer dereference")._localSize = (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr);
        };
        {
            final __tmp__0 = stdgo._internal.sync.Sync__allpools._allPools;
            final __tmp__1 = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.sync.Sync_pool.Pool>>);
            stdgo._internal.sync.Sync__oldpools._oldPools = __tmp__0;
            stdgo._internal.sync.Sync__allpools._allPools = __tmp__1;
        };
    }
