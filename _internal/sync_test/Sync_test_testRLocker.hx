package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testRLocker(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _wl:stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
        var _rl:stdgo._internal.sync.Sync_Locker.Locker = (null : stdgo._internal.sync.Sync_Locker.Locker);
        var _wlocked = (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        var _rlocked = (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        _rl = _wl.rlocker();
        var _n = (10 : stdgo.GoInt);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
                        _rl.lock();
                        _rl.lock();
                        _rlocked.__send__(true);
                        _wl.lock();
                        _wlocked.__send__(true);
                    });
                };
            };
            a();
        });
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _rlocked.__get__();
                _rl.unlock();
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_wlocked != null && _wlocked.__isGet__()) {
                            __select__ = false;
                            {
                                _wlocked.__get__();
                                {
                                    _t.fatal(stdgo.Go.toInterface(("RLocker() didn\'t read-lock it" : stdgo.GoString)));
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
                _rl.unlock();
                _wlocked.__get__();
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_rlocked != null && _rlocked.__isGet__()) {
                            __select__ = false;
                            {
                                _rlocked.__get__();
                                {
                                    _t.fatal(stdgo.Go.toInterface(("RLocker() didn\'t respect the write lock" : stdgo.GoString)));
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
                _wl.unlock();
            });
        };
    }
