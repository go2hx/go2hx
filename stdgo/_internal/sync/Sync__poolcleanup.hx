package stdgo._internal.sync;
function _poolCleanup():Void {
        //"file:///home/runner/.go/go1.21.3/src/sync/pool.go#L244"
        for (__16 => _p in stdgo._internal.sync.Sync__oldpools._oldPools) {
            (@:checkr _p ?? throw "null pointer dereference")._victim = @:default_value null;
            (@:checkr _p ?? throw "null pointer dereference")._victimSize = (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr);
        };
        //"file:///home/runner/.go/go1.21.3/src/sync/pool.go#L250"
        for (__17 => _p in stdgo._internal.sync.Sync__allpools._allPools) {
            (@:checkr _p ?? throw "null pointer dereference")._victim = (@:checkr _p ?? throw "null pointer dereference")._local;
            (@:checkr _p ?? throw "null pointer dereference")._victimSize = (@:checkr _p ?? throw "null pointer dereference")._localSize;
            (@:checkr _p ?? throw "null pointer dereference")._local = @:default_value null;
            (@:checkr _p ?? throw "null pointer dereference")._localSize = (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr);
        };
        {
            final __tmp__0 = stdgo._internal.sync.Sync__allpools._allPools;
            final __tmp__1 = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.sync.Sync_pool.Pool>>);
            stdgo._internal.sync.Sync__oldpools._oldPools = @:binopAssign __tmp__0;
            stdgo._internal.sync.Sync__allpools._allPools = @:binopAssign __tmp__1;
        };
    }
