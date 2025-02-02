package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
function newCond(_l:stdgo._internal.sync.Sync_Locker.Locker):stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond> {
        return (stdgo.Go.setRef(({ l : _l } : stdgo._internal.sync.Sync_Cond.Cond)) : stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>);
    }
