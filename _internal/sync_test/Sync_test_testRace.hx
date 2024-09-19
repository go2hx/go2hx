package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testRace(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x = (0 : stdgo.GoInt);
        var _c = stdgo._internal.sync.Sync_newCond.newCond(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.sync.Sync_Mutex.Mutex() : stdgo._internal.sync.Sync_Mutex.Mutex)) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>)));
        var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                _c.l.lock();
                _x = (1 : stdgo.GoInt);
                _c.wait_();
                if (_x != ((2 : stdgo.GoInt))) {
                    _t.error(stdgo.Go.toInterface(("want 2" : stdgo.GoString)));
                };
                _x = (3 : stdgo.GoInt);
                _c.signal();
                _c.l.unlock();
                _done.__send__(true);
            };
            a();
        });
        stdgo.Go.routine(() -> {
            var a = function():Void {
                _c.l.lock();
                while (true) {
                    if (_x == ((1 : stdgo.GoInt))) {
                        _x = (2 : stdgo.GoInt);
                        _c.signal();
                        break;
                    };
                    _c.l.unlock();
                    stdgo._internal.runtime.Runtime_gosched.gosched();
                    _c.l.lock();
                };
                _c.l.unlock();
                _done.__send__(true);
            };
            a();
        });
        stdgo.Go.routine(() -> {
            var a = function():Void {
                _c.l.lock();
                while (true) {
                    if (_x == ((2 : stdgo.GoInt))) {
                        _c.wait_();
                        if (_x != ((3 : stdgo.GoInt))) {
                            _t.error(stdgo.Go.toInterface(("want 3" : stdgo.GoString)));
                        };
                        break;
                    };
                    if (_x == ((3 : stdgo.GoInt))) {
                        break;
                    };
                    _c.l.unlock();
                    stdgo._internal.runtime.Runtime_gosched.gosched();
                    _c.l.lock();
                };
                _c.l.unlock();
                _done.__send__(true);
            };
            a();
        });
        _done.__get__();
        _done.__get__();
        _done.__get__();
    }
