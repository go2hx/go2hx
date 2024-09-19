package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function _testWaitGroup(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _wg1:stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>, _wg2:stdgo.Ref<stdgo._internal.sync.Sync_WaitGroup.WaitGroup>):Void {
        var _n = (16 : stdgo.GoInt);
        _wg1.add(_n);
        _wg2.add(_n);
        var _exited = (new stdgo.Chan<Bool>((_n : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i != (_n), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        _wg1.done();
                        _wg2.wait_();
                        _exited.__send__(true);
                    };
                    a();
                });
            });
        };
        _wg1.wait_();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i != (_n), _i++, {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_exited != null && _exited.__isGet__()) {
                            __select__ = false;
                            {
                                _exited.__get__();
                                {
                                    _t.fatal(stdgo.Go.toInterface(("WaitGroup released group too soon" : stdgo.GoString)));
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
                _wg2.done();
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i != (_n), _i++, {
                _exited.__get__();
            });
        };
    }
