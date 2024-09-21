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
function _doTestParallelReaders(_numReaders:stdgo.GoInt):Void {
        stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((_numReaders + (1 : stdgo.GoInt) : stdgo.GoInt));
        var _m:stdgo._internal.runtime.Runtime_RWMutex.RWMutex = ({} : stdgo._internal.runtime.Runtime_RWMutex.RWMutex);
        var _clocked = (new stdgo.Chan<Bool>((_numReaders : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        var _cunlock:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_);
        var _cdone = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _numReaders : Bool), _i++, {
                stdgo.Go.routine(() -> _internal.runtime_test.Runtime_test__parallelReader._parallelReader((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.runtime.Runtime_RWMutex.RWMutex>), _clocked, (stdgo.Go.setRef(_cunlock) : stdgo.Ref<stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_>), _cdone));
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _numReaders : Bool), _i++, {
                _clocked.__get__();
            });
        };
        _cunlock.store(true);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _numReaders : Bool), _i++, {
                _cdone.__get__();
            });
        };
    }
