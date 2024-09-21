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
function _benchmarkChanProdCons(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _chanSize:stdgo.GoInt, _localWork:stdgo.GoInt):Void {
        {};
        var _procs = (stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((-1 : stdgo.GoInt)) : stdgo.GoInt);
        var n = ((_b.n / (1000 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
        var _c = (new stdgo.Chan<Bool>(((2 : stdgo.GoInt) * _procs : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        var _myc = (new stdgo.Chan<stdgo.GoInt>((_chanSize : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        {
            var _p = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_p < _procs : Bool), _p++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var _foo = (0 : stdgo.GoInt);
                        while ((stdgo._internal.sync.atomic_.Atomic__addInt32.addInt32(stdgo.Go.pointer(n), (-1 : stdgo.GoInt32)) >= (0 : stdgo.GoInt32) : Bool)) {
                            {
                                var _g = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_g < (1000 : stdgo.GoInt) : Bool), _g++, {
                                    {
                                        var _i = (0 : stdgo.GoInt);
                                        stdgo.Go.cfor((_i < _localWork : Bool), _i++, {
                                            _foo = (_foo * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                            _foo = (_foo / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                        });
                                    };
                                    _myc.__send__((1 : stdgo.GoInt));
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
                        var _foo = (0 : stdgo.GoInt);
                        while (true) {
                            var _v = (_myc.__get__() : stdgo.GoInt);
                            if (_v == ((0 : stdgo.GoInt))) {
                                break;
                            };
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _localWork : Bool), _i++, {
                                    _foo = (_foo * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                    _foo = (_foo / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                });
                            };
                        };
                        _c.__send__(_foo == ((42 : stdgo.GoInt)));
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
    }
