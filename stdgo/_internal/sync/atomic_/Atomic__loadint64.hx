package stdgo._internal.sync.atomic_;
function loadInt64(_addr:stdgo.Pointer<stdgo.GoInt64>):stdgo.GoInt64 {
        stdgo.Go.globalMutex.acquire();
        final value = @:privateAccess _addr.value;
        stdgo.Go.globalMutex.release();
        return value;
    }
