package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testCondSignal(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m:stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
        var _c = stdgo._internal.sync.Sync_newCond.newCond(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>)));
        var _n = (2 : stdgo.GoInt);
        var _running = (new stdgo.Chan<Bool>((_n : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        var _awake = (new stdgo.Chan<Bool>((_n : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        _m.lock();
                        _running.__send__(true);
                        _c.wait_();
                        _awake.__send__(true);
                        _m.unlock();
                    };
                    a();
                });
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _running.__get__();
            });
        };
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            {
                var __select__ = true;
                while (__select__) {
                    if (_awake != null && _awake.__isGet__()) {
                        __select__ = false;
                        {
                            _awake.__get__();
                            {
                                _t.fatal(stdgo.Go.toInterface(("goroutine not asleep" : stdgo.GoString)));
                            };
                        };
                    } else {
                        __select__ = false;
                        {};
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            _m.lock();
            _c.signal();
            _m.unlock();
            _awake.__get__();
            {
                var __select__ = true;
                while (__select__) {
                    if (_awake != null && _awake.__isGet__()) {
                        __select__ = false;
                        {
                            _awake.__get__();
                            {
                                _t.fatal(stdgo.Go.toInterface(("too many goroutines awake" : stdgo.GoString)));
                            };
                        };
                    } else {
                        __select__ = false;
                        {};
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            _n--;
        };
        _c.signal();
    }
