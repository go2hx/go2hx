package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function _doTestParallelReaders(_numReaders:stdgo.GoInt, _gomaxprocs:stdgo.GoInt):Void {
        stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_gomaxprocs);
        var _m:stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
        var _clocked = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _cunlock = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _cdone = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _numReaders : Bool), _i++, {
                stdgo.Go.routine(() -> _internal.sync_test.Sync_test__parallelReader._parallelReader((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.sync.Sync_RWMutex.RWMutex>), _clocked, _cunlock, _cdone));
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _numReaders : Bool), _i++, {
                _clocked.__get__();
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _numReaders : Bool), _i++, {
                _cunlock.__send__(true);
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _numReaders : Bool), _i++, {
                _cdone.__get__();
            });
        };
    }
