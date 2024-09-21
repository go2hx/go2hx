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
function testTimerFairness2(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (true) {
            _t.skip(stdgo.Go.toInterface(("no preemption on wasm yet" : stdgo.GoString)));
        };
        var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var _timer = stdgo._internal.time.Time_after.after((20000000i64 : stdgo._internal.time.Time_Duration.Duration));
                        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1, ...[for (i in 0 ... 1) (0 : stdgo.GoUInt8)]);
                        while (true) {
                            stdgo._internal.syscall.Syscall_read.read((0 : stdgo.GoInt), (_buf.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            {
                                var __select__ = true;
                                while (__select__) {
                                    if (_c != null && _c.__isSend__()) {
                                        __select__ = false;
                                        {
                                            _c.__send__(true);
                                            {};
                                        };
                                    } else if (_c != null && _c.__isGet__()) {
                                        __select__ = false;
                                        {
                                            _c.__get__();
                                            {};
                                        };
                                    } else if (_timer != null && _timer.__isGet__()) {
                                        __select__ = false;
                                        {
                                            _timer.__get__();
                                            {
                                                _done.__send__(true);
                                                return;
                                            };
                                        };
                                    };
                                    #if !js Sys.sleep(0.01) #else null #end;
                                    stdgo._internal.internal.Async.tick();
                                };
                            };
                        };
                    };
                    a();
                });
            });
        };
        _done.__get__();
        _done.__get__();
    }
