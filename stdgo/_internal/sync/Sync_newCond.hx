package stdgo._internal.sync;
function newCond(_l:stdgo._internal.sync.Sync_Locker.Locker):stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond> {
        return (stdgo.Go.setRef(({ l : _l } : stdgo._internal.sync.Sync_Cond.Cond)) : stdgo.Ref<stdgo._internal.sync.Sync_Cond.Cond>);
    }
