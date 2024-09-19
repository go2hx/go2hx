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
function testNoShrinkStackWhileParking(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            stdgo._internal.internal.testenv.Testenv_skipFlaky.skipFlaky(stdgo.Go.asInterface(_t), (49382 : stdgo.GoInt));
        };
        if (false) {
            stdgo._internal.internal.testenv.Testenv_skipFlaky.skipFlaky(stdgo.Go.asInterface(_t), (51482 : stdgo.GoInt));
        };
        {};
        var _send = function(_c:stdgo.Chan<stdgo.GoInt>, _done:stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    _c.__send__(_i);
                    _internal.runtime_test.Runtime_test__stackGrowthRecursive._stackGrowthRecursive((20 : stdgo.GoInt));
                });
            };
            _done.__send__((new _internal.runtime_test.Runtime_test_T_struct0.T_struct0() : _internal.runtime_test.Runtime_test_T_struct0.T_struct0));
        };
        var _recv = function(_c:stdgo.Chan<stdgo.GoInt>, _done:stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    stdgo._internal.time.Time_sleep.sleep((10000i64 : stdgo._internal.time.Time_Duration.Duration));
                    _c.__get__();
                });
            };
            _done.__send__((new _internal.runtime_test.Runtime_test_T_struct0.T_struct0() : _internal.runtime_test.Runtime_test_T_struct0.T_struct0));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (200 : stdgo.GoInt) : Bool), _i++, {
                var _c = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
                var _done = (new stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>(0, () -> ({} : _internal.runtime_test.Runtime_test_T_struct0.T_struct0)) : stdgo.Chan<_internal.runtime_test.Runtime_test_T_struct0.T_struct0>);
                stdgo.Go.routine(() -> _recv(_c, _done));
                stdgo.Go.routine(() -> _send(_c, _done));
                stdgo._internal.time.Time_sleep.sleep((50000i64 : stdgo._internal.time.Time_Duration.Duration));
                stdgo._internal.runtime.Runtime_gc.gc();
                _done.__get__();
                _done.__get__();
            });
        };
    }
