package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function _parallelReader(_m:stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>, _clocked:stdgo.Chan<Bool>, _cunlock:stdgo.Chan<Bool>, _cdone:stdgo.Chan<Bool>):Void {
        _m.rlock();
        _clocked.__send__(true);
        _cunlock.__get__();
        _m.runlock();
        _cdone.__send__(true);
    }
