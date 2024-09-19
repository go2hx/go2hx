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
function benchmarkAssertE2T2(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _internal.runtime_test.Runtime_test__e._e = stdgo.Go.toInterface(stdgo.Go.asInterface(_internal.runtime_test.Runtime_test__tm._tm));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_internal.runtime_test.Runtime_test__e._e : _internal.runtime_test.Runtime_test_TM.TM)) : _internal.runtime_test.Runtime_test_TM.TM), _1 : true };
                    } catch(_) {
                        { _0 : ((0 : stdgo.GoUIntptr) : _internal.runtime_test.Runtime_test_TM.TM), _1 : false };
                    };
                    _internal.runtime_test.Runtime_test__tm._tm = __tmp__._0;
                    _internal.runtime_test.Runtime_test__ok._ok = __tmp__._1;
                };
            });
        };
    }
