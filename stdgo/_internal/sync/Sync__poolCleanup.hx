package stdgo._internal.sync;
function _poolCleanup():Void {
        for (__16 => _p in stdgo._internal.sync.Sync__oldPools._oldPools) {
            _p._victim = @:default_value null;
            _p._victimSize = (0 : stdgo.GoUIntptr);
        };
        for (__17 => _p in stdgo._internal.sync.Sync__allPools._allPools) {
            _p._victim = _p._local;
            _p._victimSize = _p._localSize;
            _p._local = @:default_value null;
            _p._localSize = (0 : stdgo.GoUIntptr);
        };
        {
            final __tmp__0 = stdgo._internal.sync.Sync__allPools._allPools;
            final __tmp__1 = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>>);
            stdgo._internal.sync.Sync__oldPools._oldPools = __tmp__0;
            stdgo._internal.sync.Sync__allPools._allPools = __tmp__1;
        };
    }
