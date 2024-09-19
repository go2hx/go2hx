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
function _callerLine(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _skip:stdgo.GoInt):stdgo.GoInt {
        var __tmp__ = stdgo._internal.runtime.Runtime_caller.caller((_skip + (1 : stdgo.GoInt) : stdgo.GoInt)), __6:stdgo.GoUIntptr = __tmp__._0, __7:stdgo.GoString = __tmp__._1, _line:stdgo.GoInt = __tmp__._2, _ok:Bool = __tmp__._3;
        if (!_ok) {
            _t.fatalf(("runtime.Caller(%d) failed" : stdgo.GoString), stdgo.Go.toInterface((_skip + (1 : stdgo.GoInt) : stdgo.GoInt)));
        };
        return _line;
    }
