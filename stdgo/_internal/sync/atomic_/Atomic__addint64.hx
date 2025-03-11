package stdgo._internal.sync.atomic_;
function addInt64(_addr:stdgo.Pointer<stdgo.GoInt64>, _delta:stdgo.GoInt64):stdgo.GoInt64 {
        return @:privateAccess _addr.value = _delta;
    }
