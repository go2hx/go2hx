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
function _benchmarkChanSync(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _work:stdgo.GoInt):Void {
        {};
        var _procs = (2 : stdgo.GoInt);
        var n = ((((_b.n / (1000 : stdgo.GoInt) : stdgo.GoInt) / _procs : stdgo.GoInt) * _procs : stdgo.GoInt) : stdgo.GoInt32);
        var _c = (new stdgo.Chan<Bool>((_procs : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        var _myc = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        {
            var _p = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_p < _procs : Bool), _p++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        while (true) {
                            var _i = (stdgo._internal.sync.atomic_.Atomic__addInt32.addInt32(stdgo.Go.pointer(n), (-1 : stdgo.GoInt32)) : stdgo.GoInt32);
                            if ((_i < (0 : stdgo.GoInt32) : Bool)) {
                                break;
                            };
                            {
                                var _g = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_g < (1000 : stdgo.GoInt) : Bool), _g++, {
                                    if ((_i % (2 : stdgo.GoInt32) : stdgo.GoInt32) == ((0 : stdgo.GoInt32))) {
                                        _myc.__get__();
                                        _internal.runtime_test.Runtime_test__localWork._localWork(_work);
                                        _myc.__send__((0 : stdgo.GoInt));
                                        _internal.runtime_test.Runtime_test__localWork._localWork(_work);
                                    } else {
                                        _myc.__send__((0 : stdgo.GoInt));
                                        _internal.runtime_test.Runtime_test__localWork._localWork(_work);
                                        _myc.__get__();
                                        _internal.runtime_test.Runtime_test__localWork._localWork(_work);
                                    };
                                });
                            };
                        };
                        _c.__send__(true);
                    };
                    a();
                });
            });
        };
        {
            var _p = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_p < _procs : Bool), _p++, {
                _c.__get__();
            });
        };
    }
