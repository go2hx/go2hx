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
function benchmarkPinnerPinUnpinBatch(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        var _data:stdgo.GoArray<stdgo.Ref<_internal.runtime_test.Runtime_test_T_obj.T_obj>> = new stdgo.GoArray<stdgo.Ref<_internal.runtime_test.Runtime_test_T_obj.T_obj>>(1000, 1000, ...[for (i in 0 ... 1000) (null : stdgo.Ref<_internal.runtime_test.Runtime_test_T_obj.T_obj>)]);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                _data[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({} : _internal.runtime_test.Runtime_test_T_obj.T_obj)) : stdgo.Ref<_internal.runtime_test.Runtime_test_T_obj.T_obj>);
            });
        };
        _b.resetTimer();
        {
            var _n = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_n < _b.n : Bool), _n++, {
                var _pinner:stdgo._internal.runtime.Runtime_Pinner.Pinner = ({} : stdgo._internal.runtime.Runtime_Pinner.Pinner);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                        _pinner.pin(stdgo.Go.toInterface(_data[(_i : stdgo.GoInt)]));
                    });
                };
                _pinner.unpin();
            });
        };
    }
