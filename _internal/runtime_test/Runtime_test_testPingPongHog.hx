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
function testPingPongHog(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (true) {
                _t.skip(stdgo.Go.toInterface(("no preemption on wasm yet" : stdgo.GoString)));
            };
            if (stdgo._internal.testing.Testing_short.short()) {
                _t.skip(stdgo.Go.toInterface(("skipping in -short mode" : stdgo.GoString)));
            };
            if (false) {
                _t.skip(stdgo.Go.toInterface(("skipping in -race mode" : stdgo.GoString)));
            };
            {
                var _a0 = stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs(_a0));
            };
            var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            var __0 = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>), __1 = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
var _lightChan = __1, _hogChan = __0;
            var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _lightCount = __1, _hogCount = __0;
            var _run = function(_limit:stdgo.GoInt, _counter:stdgo.Pointer<stdgo.GoInt>, _wake:stdgo.Chan<Bool>):Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    while (true) {
                        {
                            var __select__ = true;
                            while (__select__) {
                                if (_done != null && _done.__isGet__()) {
                                    __select__ = false;
                                    {
                                        _done.__get__();
                                        {
                                            {
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return;
                                            };
                                        };
                                    };
                                } else if (_wake != null && _wake.__isGet__()) {
                                    __select__ = false;
                                    {
                                        _wake.__get__();
                                        {
                                            {
                                                var _i = (0 : stdgo.GoInt);
                                                stdgo.Go.cfor((_i < _limit : Bool), _i++, {
                                                    _counter.value++;
                                                });
                                            };
                                            _wake.__send__(true);
                                        };
                                    };
                                };
                                #if !js Sys.sleep(0.01) #else null #end;
                                stdgo._internal.internal.Async.tick();
                            };
                        };
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                    stdgo.Go.routine(() -> _run((1000000 : stdgo.GoInt), stdgo.Go.pointer(_hogCount), _hogChan));
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                    stdgo.Go.routine(() -> _run((1000 : stdgo.GoInt), stdgo.Go.pointer(_lightCount), _lightChan));
                });
            };
            _hogChan.__send__(true);
            _lightChan.__send__(true);
            stdgo._internal.time.Time_sleep.sleep((100000000i64 : stdgo._internal.time.Time_Duration.Duration));
            if (_done != null) _done.__close__();
            _hogChan.__get__();
            _lightChan.__get__();
            {};
            if ((((_hogCount / (20 : stdgo.GoInt) : stdgo.GoInt) > _lightCount : Bool) || ((_lightCount / (20 : stdgo.GoInt) : stdgo.GoInt) > _hogCount : Bool) : Bool)) {
                _t.fatalf(("want hogCount/lightCount in [%v, %v]; got %d/%d = %g" : stdgo.GoString), stdgo.Go.toInterface((0.05 : stdgo.GoFloat64)), stdgo.Go.toInterface((20 : stdgo.GoInt)), stdgo.Go.toInterface(_hogCount), stdgo.Go.toInterface(_lightCount), stdgo.Go.toInterface(((_hogCount : stdgo.GoFloat64) / (_lightCount : stdgo.GoFloat64) : stdgo.GoFloat64)));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
