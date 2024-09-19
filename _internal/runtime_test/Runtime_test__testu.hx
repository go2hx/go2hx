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
function _testu(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _op:stdgo.GoString, _hw:stdgo.GoFloat64 -> stdgo.GoFloat64, _sw:stdgo.GoFloat64 -> stdgo.GoFloat64, _v:stdgo.GoFloat64):Void {
        var _h = (_hw(_v) : stdgo.GoFloat64);
        var _s = (_sw(_v) : stdgo.GoFloat64);
        if (!_internal.runtime_test.Runtime_test__same._same(_h, _s)) {
            _internal.runtime_test.Runtime_test__err._err(_t, ("%s %g = sw %g, hw %g\n" : stdgo.GoString), stdgo.Go.toInterface(_op), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_h));
        };
    }
