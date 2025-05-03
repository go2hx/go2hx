package stdgo._internal.sync.atomic_;
function loadUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>):stdgo.GoUInt32 {
        stdgo.Go.globalMutex.acquire();
        final value = @:privateAccess _addr.value;
        stdgo.Go.globalMutex.release();
        return value;
    }
