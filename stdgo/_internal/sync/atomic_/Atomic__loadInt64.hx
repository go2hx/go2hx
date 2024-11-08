package stdgo._internal.sync.atomic_;
function loadInt64(_addr:stdgo.Pointer<stdgo.GoInt64>):stdgo.GoInt64 {
        return @:privateAccess _addr.value;
    }
