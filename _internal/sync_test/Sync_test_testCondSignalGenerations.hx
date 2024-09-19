package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testCondSignalGenerations(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m:stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
        var _c = stdgo._internal.sync.Sync_newCond.newCond(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>)));
        var _n = (100 : stdgo.GoInt);
        var _running = (new stdgo.Chan<Bool>((_n : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        var _awake = (new stdgo.Chan<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function(_i:stdgo.GoInt):Void {
                        _m.lock();
                        _running.__send__(true);
                        _c.wait_();
                        _awake.__send__(_i);
                        _m.unlock();
                    };
                    a(_i);
                });
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    var _a = (_awake.__get__() : stdgo.GoInt);
                    if (_a != ((_i - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                        _t.fatalf(("wrong goroutine woke up: want %d, got %d" : stdgo.GoString), stdgo.Go.toInterface((_i - (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_a));
                    };
                };
                _running.__get__();
                _m.lock();
                _c.signal();
                _m.unlock();
            });
        };
    }
