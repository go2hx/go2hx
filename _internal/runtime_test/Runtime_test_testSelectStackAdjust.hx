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
function testSelectStackAdjust(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _c = (new stdgo.Chan<stdgo.Pointer<stdgo.GoInt>>(0, () -> (null : stdgo.Pointer<stdgo.GoInt>)) : stdgo.Chan<stdgo.Pointer<stdgo.GoInt>>);
        var _d = (new stdgo.Chan<stdgo.Pointer<stdgo.GoInt>>(0, () -> (null : stdgo.Pointer<stdgo.GoInt>)) : stdgo.Chan<stdgo.Pointer<stdgo.GoInt>>);
        var _ready1 = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _ready2 = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _f = function(_ready:stdgo.Chan<Bool>, _dup:Bool):Void {
            _internal.runtime_test.Runtime_test__stackGrowthRecursive._stackGrowthRecursive((10 : stdgo.GoInt));
            _ready.__send__(true);
            var _val = (42 : stdgo.GoInt);
            var _cx:stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
            _cx = stdgo.Go.pointer(_val);
            var _c2:stdgo.Chan<stdgo.Pointer<stdgo.GoInt>> = (null : stdgo.Chan<stdgo.Pointer<stdgo.GoInt>>);
            var _d2:stdgo.Chan<stdgo.Pointer<stdgo.GoInt>> = (null : stdgo.Chan<stdgo.Pointer<stdgo.GoInt>>);
            if (_dup) {
                _c2 = _c;
                _d2 = _d;
            };
            {
                var __select__ = true;
                while (__select__) {
                    if (_c != null && _c.__isGet__()) {
                        __select__ = false;
                        {
                            var _cx = _c.__get__();
                            {};
                        };
                    } else if (_c2 != null && _c2.__isGet__()) {
                        __select__ = false;
                        {
                            _c2.__get__();
                            {};
                        };
                    } else if (_d != null && _d.__isGet__()) {
                        __select__ = false;
                        {
                            _d.__get__();
                            {};
                        };
                    } else if (_d2 != null && _d2.__isGet__()) {
                        __select__ = false;
                        {
                            _d2.__get__();
                            {};
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            if (_cx != (stdgo.Go.pointer(_val))) {
                _t.error(stdgo.Go.toInterface(("cx no longer points to val" : stdgo.GoString)));
            } else if (_val != ((42 : stdgo.GoInt))) {
                _t.error(stdgo.Go.toInterface(("val changed" : stdgo.GoString)));
            } else {
                _cx.value = (43 : stdgo.GoInt);
                if (_val != ((43 : stdgo.GoInt))) {
                    _t.error(stdgo.Go.toInterface(("changing *cx failed to change val" : stdgo.GoString)));
                };
            };
            _ready.__send__(true);
        };
        stdgo.Go.routine(() -> _f(_ready1, false));
        stdgo.Go.routine(() -> _f(_ready2, true));
        _ready1.__get__();
        _ready2.__get__();
        stdgo._internal.time.Time_sleep.sleep((10000000i64 : stdgo._internal.time.Time_Duration.Duration));
        stdgo._internal.runtime.Runtime_gc.gc();
        if (_d != null) _d.__close__();
        _ready1.__get__();
        _ready2.__get__();
    }
