package stdgo._internal.sync;
function newCond(_l:stdgo._internal.sync.Sync_locker.Locker):stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond> {
        return (stdgo.Go.setRef(({ l : _l } : stdgo._internal.sync.Sync_cond.Cond)) : stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond>);
    }
