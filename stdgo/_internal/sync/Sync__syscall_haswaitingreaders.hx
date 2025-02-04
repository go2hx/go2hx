package stdgo._internal.sync;
function _syscall_hasWaitingReaders(_rw:stdgo.Ref<stdgo._internal.sync.Sync_rwmutex.RWMutex>):Bool {
        var _r = (@:check2 (@:checkr _rw ?? throw "null pointer dereference")._readerCount.load() : stdgo.GoInt32);
        return ((_r < (0 : stdgo.GoInt32) : Bool) && ((_r + (1073741824 : stdgo.GoInt32) : stdgo.GoInt32) > (0 : stdgo.GoInt32) : Bool) : Bool);
    }
