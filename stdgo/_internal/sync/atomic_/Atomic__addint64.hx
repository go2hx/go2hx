package stdgo._internal.sync.atomic_;
function addInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _delta:stdgo.GoInt64):stdgo.GoInt64 {
        stdgo.Go.globalMutex.acquire();
        final value = @:privateAccess _addr.value += _delta;
        stdgo.Go.globalMutex.release();
        return value;
    }
