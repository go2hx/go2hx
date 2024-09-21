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
function testCallersFromWrapper(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _pc = (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_internal.runtime_test.Runtime_test_I_static_extension.I_static_extension.m)).pointer() : stdgo.GoUIntptr);
        var _frames = stdgo._internal.runtime.Runtime_callersFrames.callersFrames((new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[_pc]) : stdgo.Slice<stdgo.GoUIntptr>));
        var __tmp__ = _frames.next(), _frame:stdgo._internal.runtime.Runtime_Frame.Frame = __tmp__._0, _more:Bool = __tmp__._1;
        if (_frame.function_ != (("runtime_test.I.M" : stdgo.GoString))) {
            _t.fatalf(("want function %s, got %s" : stdgo.GoString), stdgo.Go.toInterface(("runtime_test.I.M" : stdgo.GoString)), stdgo.Go.toInterface(_frame.function_));
        };
        if (_more) {
            _t.fatalf(("want 1 frame, got > 1" : stdgo.GoString));
        };
    }
