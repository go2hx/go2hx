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
function _testCallersEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _pcs:stdgo.Slice<stdgo.GoUIntptr>, _want:stdgo.Slice<stdgo.GoString>):Void {
        _t.helper();
        var _got = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_want.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _frames = stdgo._internal.runtime.Runtime_callersFrames.callersFrames(_pcs);
        while (true) {
            var __tmp__ = _frames.next(), _frame:stdgo._internal.runtime.Runtime_Frame.Frame = __tmp__._0, _more:Bool = __tmp__._1;
            if ((!_more || ((_got.length) >= (_want.length) : Bool) : Bool)) {
                break;
            };
            _got = (_got.__append__(_frame.function_?.__copy__()));
        };
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got))) {
            _t.fatalf(("wanted %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
    }
