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
function benchmarkAssertI2E2Blank(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _internal.runtime_test.Runtime_test__i1._i1 = stdgo.Go.asInterface(_internal.runtime_test.Runtime_test__tm._tm);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_internal.runtime_test.Runtime_test__i1._i1) : stdgo.AnyInterface)) : stdgo.AnyInterface), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.AnyInterface), _1 : false };
                    };
                    _internal.runtime_test.Runtime_test__ok._ok = __tmp__._1;
                };
            });
        };
    }
