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
function testDeferHeapAndStack(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var p = (4 : stdgo.GoInt);
        var n = (10000 : stdgo.GoInt);
        var d = (200 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            p = (p / ((2 : stdgo.GoInt)) : stdgo.GoInt);
            n = (n / ((10 : stdgo.GoInt)) : stdgo.GoInt);
            d = (d / ((10 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {
            var _p = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_p < p : Bool), _p++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < n : Bool), _i++, {
                                if (_internal.runtime_test.Runtime_test__deferHeapAndStack._deferHeapAndStack(d) != (((2 : stdgo.GoInt) * d : stdgo.GoInt))) {
                                    throw stdgo.Go.toInterface(("bad result" : stdgo.GoString));
                                };
                            });
                        };
                        _c.__send__(true);
                    };
                    a();
                });
            });
        };
        {
            var _p = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_p < p : Bool), _p++, {
                _c.__get__();
            });
        };
    }
