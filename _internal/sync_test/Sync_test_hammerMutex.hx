package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function hammerMutex(_m:stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>, _loops:stdgo.GoInt, _cdone:stdgo.Chan<Bool>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _loops : Bool), _i++, {
                if ((_i % (3 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    if (_m.tryLock()) {
                        _m.unlock();
                    };
                    continue;
                };
                _m.lock();
                _m.unlock();
            });
        };
        _cdone.__send__(true);
    }
