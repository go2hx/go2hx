package stdgo._internal.sync.atomic_;
function addUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _delta:stdgo.GoUInt64):stdgo.GoUInt64 {
        stdgo.Go.globalMutex.acquire();
        final value = @:privateAccess _addr.value += _delta;
        stdgo.Go.globalMutex.release();
        return value;
    }
