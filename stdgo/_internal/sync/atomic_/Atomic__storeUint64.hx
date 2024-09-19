package stdgo._internal.sync.atomic_;
function storeUint64(_addr:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.GoUInt64):Void {
        _addr.value = _val;
    }
