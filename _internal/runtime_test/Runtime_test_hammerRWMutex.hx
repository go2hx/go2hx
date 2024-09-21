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
function hammerRWMutex(_gomaxprocs:stdgo.GoInt, _numReaders:stdgo.GoInt, _num_iterations:stdgo.GoInt):Void {
        stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_gomaxprocs);
        var _activity:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _rwm:stdgo._internal.runtime.Runtime_RWMutex.RWMutex = ({} : stdgo._internal.runtime.Runtime_RWMutex.RWMutex);
        var _cdone = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        stdgo.Go.routine(() -> _internal.runtime_test.Runtime_test__writer._writer((stdgo.Go.setRef(_rwm) : stdgo.Ref<stdgo._internal.runtime.Runtime_RWMutex.RWMutex>), _num_iterations, stdgo.Go.pointer(_activity), _cdone));
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_numReaders / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> _internal.runtime_test.Runtime_test__reader._reader((stdgo.Go.setRef(_rwm) : stdgo.Ref<stdgo._internal.runtime.Runtime_RWMutex.RWMutex>), _num_iterations, stdgo.Go.pointer(_activity), _cdone));
            });
        };
        stdgo.Go.routine(() -> _internal.runtime_test.Runtime_test__writer._writer((stdgo.Go.setRef(_rwm) : stdgo.Ref<stdgo._internal.runtime.Runtime_RWMutex.RWMutex>), _num_iterations, stdgo.Go.pointer(_activity), _cdone));
        stdgo.Go.cfor((_i < _numReaders : Bool), _i++, {
            stdgo.Go.routine(() -> _internal.runtime_test.Runtime_test__reader._reader((stdgo.Go.setRef(_rwm) : stdgo.Ref<stdgo._internal.runtime.Runtime_RWMutex.RWMutex>), _num_iterations, stdgo.Go.pointer(_activity), _cdone));
        });
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < ((2 : stdgo.GoInt) + _numReaders : stdgo.GoInt) : Bool), _i++, {
                _cdone.__get__();
            });
        };
    }
