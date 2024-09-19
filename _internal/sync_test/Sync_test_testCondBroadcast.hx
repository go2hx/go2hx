package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testCondBroadcast(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m:stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
        var _c = stdgo._internal.sync.Sync_newCond.newCond(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.sync.Sync_Mutex.Mutex>)));
        var _n = (200 : stdgo.GoInt);
        var _running = (new stdgo.Chan<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _awake = (new stdgo.Chan<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _exit = (false : Bool);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function(_g:stdgo.GoInt):Void {
                        _m.lock();
                        while (!_exit) {
                            _running.__send__(_g);
                            _c.wait_();
                            _awake.__send__(_g);
                        };
                        _m.unlock();
                    };
                    a(_i);
                });
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
                        _running.__get__();
                    });
                };
                if (_i == ((_n - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _m.lock();
                    _exit = true;
                    _m.unlock();
                };
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
                _c.broadcast();
                _m.unlock();
                var _seen = (new stdgo.Slice<Bool>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
                        var _g = (_awake.__get__() : stdgo.GoInt);
                        if (_seen[(_g : stdgo.GoInt)]) {
                            _t.fatal(stdgo.Go.toInterface(("goroutine woke up twice" : stdgo.GoString)));
                        };
                        _seen[(_g : stdgo.GoInt)] = true;
                    });
                };
            });
        };
        {
            var __select__ = true;
            while (__select__) {
                if (_running != null && _running.__isGet__()) {
                    __select__ = false;
                    {
                        _running.__get__();
                        {
                            _t.fatal(stdgo.Go.toInterface(("goroutine did not exit" : stdgo.GoString)));
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
        _c.broadcast();
    }
