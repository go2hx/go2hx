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
function benchmarkGoroutineBlocking(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _read = function(_ch:stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>):Void {
            while (true) {
                {
                    var __tmp__ = _ch.__smartGet__(), __6 = __tmp__._0, _ok = __tmp__._1;
                    if (!_ok) {
                        return;
                    };
                };
            };
        };
        _internal.runtime_test.Runtime_test__benchHelper._benchHelper(_b, _internal.runtime_test.Runtime_test__n._n.value, _read);
    }
