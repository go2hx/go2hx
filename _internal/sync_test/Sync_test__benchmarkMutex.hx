package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function _benchmarkMutex(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _slack:Bool, _work:Bool):Void {
        var _mu:stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
        if (_slack) {
            _b.setParallelism((10 : stdgo.GoInt));
        };
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _foo = (0 : stdgo.GoInt);
            while (_pb.next()) {
                _mu.lock();
                _mu.unlock();
                if (_work) {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                            _foo = (_foo * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                            _foo = (_foo / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                        });
                    };
                };
            };
            var __blank__ = _foo;
        });
    }
