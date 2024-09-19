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
function _callerStartLine(_wantInlined:Bool):stdgo.GoInt {
        var _pcs:stdgo.GoArray<stdgo.GoUIntptr> = new stdgo.GoArray<stdgo.GoUIntptr>(1, 1, ...[for (i in 0 ... 1) (0 : stdgo.GoUIntptr)]);
        var _n = (stdgo._internal.runtime.Runtime_callers.callers((2 : stdgo.GoInt), (_pcs.__slice__(0) : stdgo.Slice<stdgo.GoUIntptr>)) : stdgo.GoInt);
        if (_n != ((1 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("no caller of callerStartLine? n = %d" : stdgo.GoString), stdgo.Go.toInterface(_n)));
        };
        var _frames = stdgo._internal.runtime.Runtime_callersFrames.callersFrames((_pcs.__slice__(0) : stdgo.Slice<stdgo.GoUIntptr>));
        var __tmp__ = _frames.next(), _frame:stdgo._internal.runtime.Runtime_Frame.Frame = __tmp__._0, __6:Bool = __tmp__._1;
        var _inlined = (_frame.func == null || (_frame.func : Dynamic).__nil__ : Bool);
        if (_wantInlined != (_inlined)) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("caller %s inlined got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_frame.function_), stdgo.Go.toInterface(_inlined), stdgo.Go.toInterface(_wantInlined)));
        };
        return stdgo._internal.runtime.Runtime_frameStartLine.frameStartLine((stdgo.Go.setRef(_frame) : stdgo.Ref<stdgo._internal.runtime.Runtime_Frame.Frame>));
    }
