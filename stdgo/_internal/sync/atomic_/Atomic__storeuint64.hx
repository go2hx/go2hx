package stdgo._internal.sync.atomic_;
function storeUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.GoUInt64):Void {
        stdgo.Go.globalMutex.acquire();
        _addr.value = _val;
        stdgo.Go.globalMutex.release();
    }
