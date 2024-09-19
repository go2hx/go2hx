package _internal.internal.poll_test;
import stdgo._internal.internal.poll.Poll;
function testMutexCloseUnblock(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _c = (new stdgo.Chan<Bool>((4 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        var _mu:stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex = ({} : stdgo._internal.internal.poll.Poll_XFDMutex.XFDMutex);
        _mu.rwlock(true);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        if (_mu.rwlock(true)) {
                            _t.error(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
                            return;
                        };
                        _c.__send__(true);
                    };
                    a();
                });
            });
        };
        stdgo._internal.time.Time_sleep.sleep((1000000i64 : stdgo._internal.time.Time_Duration.Duration));
        {
            var __select__ = true;
            while (__select__) {
                if (_c != null && _c.__isGet__()) {
                    __select__ = false;
                    {
                        _c.__get__();
                        {
                            _t.fatal(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
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
        _mu.increfAndClose();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (4 : stdgo.GoInt) : Bool), _i++, {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_c != null && _c.__isGet__()) {
                            __select__ = false;
                            {
                                _c.__get__();
                                {};
                            };
                        } else if (stdgo._internal.time.Time_after.after((10000000000i64 : stdgo._internal.time.Time_Duration.Duration)) != null && stdgo._internal.time.Time_after.after((10000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__isGet__()) {
                            __select__ = false;
                            {
                                stdgo._internal.time.Time_after.after((10000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__get__();
                                {
                                    _t.fatal(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
            });
        };
        if (_mu.decref()) {
            _t.fatal(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
        };
        if (!_mu.rwunlock(true)) {
            _t.fatal(stdgo.Go.toInterface(("broken" : stdgo.GoString)));
        };
    }
