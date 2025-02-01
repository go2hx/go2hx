package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import _internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
function _poolCleanup():Void {
        for (__16 => _p in stdgo._internal.sync.Sync__oldPools._oldPools) {
            (@:checkr _p ?? throw "null pointer dereference")._victim = @:default_value null;
            (@:checkr _p ?? throw "null pointer dereference")._victimSize = (0 : stdgo.GoUIntptr);
        };
        for (__17 => _p in stdgo._internal.sync.Sync__allPools._allPools) {
            (@:checkr _p ?? throw "null pointer dereference")._victim = (@:checkr _p ?? throw "null pointer dereference")._local;
            (@:checkr _p ?? throw "null pointer dereference")._victimSize = (@:checkr _p ?? throw "null pointer dereference")._localSize;
            (@:checkr _p ?? throw "null pointer dereference")._local = @:default_value null;
            (@:checkr _p ?? throw "null pointer dereference")._localSize = (0 : stdgo.GoUIntptr);
        };
        {
            final __tmp__0 = stdgo._internal.sync.Sync__allPools._allPools;
            final __tmp__1 = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.sync.Sync_Pool.Pool>>);
            stdgo._internal.sync.Sync__oldPools._oldPools = __tmp__0;
            stdgo._internal.sync.Sync__allPools._allPools = __tmp__1;
        };
    }
