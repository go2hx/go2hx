package stdgo._internal.sync.atomic_;
function storeUint32(_addr:stdgo.Pointer<stdgo.GoUInt32>, _val:stdgo.GoUInt32):Void {
        _addr.value = _val;
    }
