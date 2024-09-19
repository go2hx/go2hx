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
function benchmarkStackCopyWithStkobj(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var _s:_internal.runtime_test.Runtime_test_T_stkobjT.T_stkobjT = ({} : _internal.runtime_test.Runtime_test_T_stkobjT.T_stkobjT);
                        _internal.runtime_test.Runtime_test_sum.sum((100000i64 : stdgo.GoInt64), (stdgo.Go.setRef(_s) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_stkobjT.T_stkobjT>));
                        _c.__send__(true);
                    };
                    a();
                });
                _c.__get__();
            });
        };
    }
