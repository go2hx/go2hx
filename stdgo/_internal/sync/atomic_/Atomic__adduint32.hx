package stdgo._internal.sync.atomic_;
function addUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _delta:stdgo.GoUInt32):stdgo.GoUInt32 {
        stdgo.Go.globalMutex.acquire();
        final value = @:privateAccess _addr.value += _delta;
        stdgo.Go.globalMutex.release();
        return value;
    }
