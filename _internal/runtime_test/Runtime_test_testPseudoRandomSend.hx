package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testPseudoRandomSend(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _n = (100 : stdgo.GoInt);
        for (__6 => _chanCap in (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(0 : stdgo.GoInt), _n]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _c = (new stdgo.Chan<stdgo.GoInt>((_chanCap : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
            var _l = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _m:stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
            _m.lock();
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _n : Bool), _i++, {
                            stdgo._internal.runtime.Runtime_gosched.gosched();
                            _l[(_i : stdgo.GoInt)] = _c.__get__();
                        });
                    };
                    _m.unlock();
                };
                a();
            });
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _n : Bool), _i++, {
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_c != null && _c.__isSend__()) {
                                __select__ = false;
                                {
                                    _c.__send__((1 : stdgo.GoInt));
                                    {};
                                };
                            } else if (_c != null && _c.__isSend__()) {
                                __select__ = false;
                                {
                                    _c.__send__((0 : stdgo.GoInt));
                                    {};
                                };
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                });
            };
            _m.lock();
            var _n0 = (0 : stdgo.GoInt);
            var _n1 = (0 : stdgo.GoInt);
            for (__7 => _i in _l) {
                _n0 = (_n0 + ((((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) % (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                _n1 = (_n1 + (_i) : stdgo.GoInt);
            };
            if (((_n0 <= (_n / (10 : stdgo.GoInt) : stdgo.GoInt) : Bool) || (_n1 <= (_n / (10 : stdgo.GoInt) : stdgo.GoInt) : Bool) : Bool)) {
                _t.errorf(("Want pseudorandom, got %d zeros and %d ones (chan cap %d)" : stdgo.GoString), stdgo.Go.toInterface(_n0), stdgo.Go.toInterface(_n1), stdgo.Go.toInterface(_chanCap));
            };
        };
    }
