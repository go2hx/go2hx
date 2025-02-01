package stdgo._internal.sync;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.internal.race.Race;
import stdgo._internal.runtime.Runtime;
function newPoolChain():stdgo._internal.sync.Sync_PoolDequeue.PoolDequeue {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.sync.Sync_T_poolChain.T_poolChain)) : stdgo.Ref<stdgo._internal.sync.Sync_T_poolChain.T_poolChain>));
    }
