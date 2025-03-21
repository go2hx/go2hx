package stdgo._internal.sync.atomic_;
function storeInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _val:stdgo.GoInt64):Void {
        stdgo.Go.globalMutex.acquire();
        _addr.value = _val;
        stdgo.Go.globalMutex.release();
    }
