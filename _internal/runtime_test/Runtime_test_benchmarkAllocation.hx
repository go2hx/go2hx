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
function benchmarkAllocation(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        var _ngo = (stdgo._internal.runtime.Runtime_gomaxprocs.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt);
        var _work = (new stdgo.Chan<Bool>((_b.n + _ngo : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        var _result = (new stdgo.Chan<stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkAllocation___localname___T_10215.T_benchmarkAllocation___localname___T_10215>>(0, () -> (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkAllocation___localname___T_10215.T_benchmarkAllocation___localname___T_10215>)) : stdgo.Chan<stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkAllocation___localname___T_10215.T_benchmarkAllocation___localname___T_10215>>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                _work.__send__(true);
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _ngo : Bool), _i++, {
                _work.__send__(false);
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _ngo : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var _x:stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkAllocation___localname___T_10215.T_benchmarkAllocation___localname___T_10215> = (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkAllocation___localname___T_10215.T_benchmarkAllocation___localname___T_10215>);
                        while (_work.__get__()) {
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                                    _x = (stdgo.Go.setRef((new _internal.runtime_test.Runtime_test_T_benchmarkAllocation___localname___T_10215.T_benchmarkAllocation___localname___T_10215() : _internal.runtime_test.Runtime_test_T_benchmarkAllocation___localname___T_10215.T_benchmarkAllocation___localname___T_10215)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_benchmarkAllocation___localname___T_10215.T_benchmarkAllocation___localname___T_10215>);
                                });
                            };
                        };
                        _result.__send__(_x);
                    };
                    a();
                });
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _ngo : Bool), _i++, {
                _result.__get__();
            });
        };
    }
