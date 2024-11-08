package stdgo._internal.sync.atomic_;
function storeInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _val:stdgo.GoInt64):Void {
        _addr.value = _val;
    }
