package stdgo._internal.sync.atomic_;
function loadUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>):stdgo.GoUInt64 {
        stdgo.Go.globalMutex.acquire();
        final value = @:privateAccess _addr.value;
        stdgo.Go.globalMutex.release();
        return value;
    }
