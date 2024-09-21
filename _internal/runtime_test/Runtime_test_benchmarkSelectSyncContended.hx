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
function benchmarkSelectSyncContended(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _myc1 = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _myc2 = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _myc3 = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _done = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    while (true) {
                        {
                            var __select__ = true;
                            while (__select__) {
                                if (_myc1 != null && _myc1.__isSend__()) {
                                    __select__ = false;
                                    {
                                        _myc1.__send__((0 : stdgo.GoInt));
                                        {};
                                    };
                                } else if (_myc2 != null && _myc2.__isSend__()) {
                                    __select__ = false;
                                    {
                                        _myc2.__send__((0 : stdgo.GoInt));
                                        {};
                                    };
                                } else if (_myc3 != null && _myc3.__isSend__()) {
                                    __select__ = false;
                                    {
                                        _myc3.__send__((0 : stdgo.GoInt));
                                        {};
                                    };
                                } else if (_done != null && _done.__isGet__()) {
                                    __select__ = false;
                                    {
                                        _done.__get__();
                                        {
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
            while (_pb.next()) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_myc1 != null && _myc1.__isGet__()) {
                            __select__ = false;
                            {
                                _myc1.__get__();
                                {};
                            };
                        } else if (_myc2 != null && _myc2.__isGet__()) {
                            __select__ = false;
                            {
                                _myc2.__get__();
                                {};
                            };
                        } else if (_myc3 != null && _myc3.__isGet__()) {
                            __select__ = false;
                            {
                                _myc3.__get__();
                                {};
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
            };
        });
        if (_done != null) _done.__close__();
    }
