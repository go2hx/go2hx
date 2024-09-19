package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function _benchmarkCond(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _waiters:stdgo.GoInt):Void {
        var _c = stdgo._internal.sync.Sync_newCond.newCond(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.sync.Sync_Mutex.Mutex() : stdgo._internal.sync.Sync_Mutex.Mutex)) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>)));
        var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _id = (0 : stdgo.GoInt);
        {
            var _routine = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_routine < (_waiters + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _routine++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                _c.l.lock();
                                if (_id == ((-1 : stdgo.GoInt))) {
                                    _c.l.unlock();
                                    break;
                                };
                                _id++;
                                if (_id == ((_waiters + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                                    _id = (0 : stdgo.GoInt);
                                    _c.broadcast();
                                } else {
                                    _c.wait_();
                                };
                                _c.l.unlock();
                            });
                        };
                        _c.l.lock();
                        _id = (-1 : stdgo.GoInt);
                        _c.broadcast();
                        _c.l.unlock();
                        _done.__send__(true);
                    };
                    a();
                });
            });
        };
        {
            var _routine = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_routine < (_waiters + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _routine++, {
                _done.__get__();
            });
        };
    }
