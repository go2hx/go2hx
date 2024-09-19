package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkRWMutexUncontended(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _rwm:_internal.sync_test.Sync_test_T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090.T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090 = ({} : _internal.sync_test.Sync_test_T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090.T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090);
            while (_pb.next()) {
                _rwm.rlock();
                _rwm.rlock();
                _rwm.runlock();
                _rwm.runlock();
                _rwm.lock();
                _rwm.unlock();
            };
        });
    }
