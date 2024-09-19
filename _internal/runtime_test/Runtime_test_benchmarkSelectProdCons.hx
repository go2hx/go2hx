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
function benchmarkSelectProdCons(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        stdgo._internal.internal.Macro.controlFlow({
            {};
            var _procs = (stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((-1 : stdgo.GoInt)) : stdgo.GoInt);
            var n = ((_b.n / (1000 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
            var _c = (new stdgo.Chan<Bool>(((2 : stdgo.GoInt) * _procs : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            var _myc = (new stdgo.Chan<stdgo.GoInt>((128 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
            var _myclose = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            {
                var _p = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_p < _procs : Bool), _p++, {
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            var _foo = (0 : stdgo.GoInt);
                            var _mytimer = stdgo._internal.time.Time_after.after((3600000000000i64 : stdgo._internal.time.Time_Duration.Duration));
                            while ((stdgo._internal.sync.atomic_.Atomic__addInt32.addInt32(stdgo.Go.pointer(n), (-1 : stdgo.GoInt32)) >= (0 : stdgo.GoInt32) : Bool)) {
                                {
                                    var _g = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_g < (1000 : stdgo.GoInt) : Bool), _g++, {
                                        {
                                            var _i = (0 : stdgo.GoInt);
                                            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                                                _foo = (_foo * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                                _foo = (_foo / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                            });
                                        };
                                        {
                                            var __select__ = true;
                                            while (__select__) {
                                                if (_myc != null && _myc.__isSend__()) {
                                                    __select__ = false;
                                                    {
                                                        _myc.__send__((1 : stdgo.GoInt));
                                                        {};
                                                    };
                                                } else if (_mytimer != null && _mytimer.__isGet__()) {
                                                    __select__ = false;
                                                    {
                                                        _mytimer.__get__();
                                                        {};
                                                    };
                                                } else if (_myclose != null && _myclose.__isGet__()) {
                                                    __select__ = false;
                                                    {
                                                        _myclose.__get__();
                                                        {};
                                                    };
                                                };
                                                #if !js Sys.sleep(0.01) #else null #end;
                                                stdgo._internal.internal.Async.tick();
                                            };
                                        };
                                    });
                                };
                            };
                            _myc.__send__((0 : stdgo.GoInt));
                            _c.__send__(_foo == ((42 : stdgo.GoInt)));
                        };
                        a();
                    });
                    stdgo.Go.routine(() -> {
                        var a = function():Void {
                            stdgo._internal.internal.Macro.controlFlow({
                                var _foo = (0 : stdgo.GoInt);
                                var _mytimer = stdgo._internal.time.Time_after.after((3600000000000i64 : stdgo._internal.time.Time_Duration.Duration));
                                @:label("loop") while (true) {
                                    {
                                        var __select__ = true;
                                        while (__select__) {
                                            if (_myc != null && _myc.__isGet__()) {
                                                __select__ = false;
                                                {
                                                    var _v = _myc.__get__();
                                                    {
                                                        if (_v == ((0 : stdgo.GoInt))) {
                                                            @:jump("loop") break;
                                                        };
                                                    };
                                                };
                                            } else if (_mytimer != null && _mytimer.__isGet__()) {
                                                __select__ = false;
                                                {
                                                    _mytimer.__get__();
                                                    {};
                                                };
                                            } else if (_myclose != null && _myclose.__isGet__()) {
                                                __select__ = false;
                                                {
                                                    _myclose.__get__();
                                                    {};
                                                };
                                            };
                                            #if !js Sys.sleep(0.01) #else null #end;
                                            stdgo._internal.internal.Async.tick();
                                        };
                                    };
                                    {
                                        var _i = (0 : stdgo.GoInt);
                                        stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                                            _foo = (_foo * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                            _foo = (_foo / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                        });
                                    };
                                };
                                _c.__send__(_foo == ((42 : stdgo.GoInt)));
                            });
                        };
                        a();
                    });
                });
            };
            {
                var _p = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_p < _procs : Bool), _p++, {
                    _c.__get__();
                    _c.__get__();
                });
            };
        });
    }
