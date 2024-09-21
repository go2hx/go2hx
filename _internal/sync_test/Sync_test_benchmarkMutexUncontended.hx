package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function benchmarkMutexUncontended(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _mu:_internal.sync_test.Sync_test_T_benchmarkMutexUncontended___localname___PaddedMutex_3777.T_benchmarkMutexUncontended___localname___PaddedMutex_3777 = ({} : _internal.sync_test.Sync_test_T_benchmarkMutexUncontended___localname___PaddedMutex_3777.T_benchmarkMutexUncontended___localname___PaddedMutex_3777);
            while (_pb.next()) {
                _mu.lock();
                _mu.unlock();
            };
        });
    }
