package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function benchmarkRWMutexUncontended(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _rwm:_internal.runtime_test.Runtime_test_T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_3347.T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_3347 = ({} : _internal.runtime_test.Runtime_test_T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_3347.T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_3347);
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
