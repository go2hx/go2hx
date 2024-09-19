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
function exampleFrames():Void {
        var _c = (function():Void {
            var _pc = (new stdgo.Slice<stdgo.GoUIntptr>((10 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
            var _n = (stdgo._internal.runtime.Runtime_callers.callers((0 : stdgo.GoInt), _pc) : stdgo.GoInt);
            if (_n == ((0 : stdgo.GoInt))) {
                return;
            };
            _pc = (_pc.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>);
            var _frames = stdgo._internal.runtime.Runtime_callersFrames.callersFrames(_pc);
            while (true) {
                var __tmp__ = _frames.next(), _frame:stdgo._internal.runtime.Runtime_Frame.Frame = __tmp__._0, _more:Bool = __tmp__._1;
                if (!stdgo._internal.strings.Strings_contains.contains(_frame.file?.__copy__(), ("runtime/" : stdgo.GoString))) {
                    break;
                };
                stdgo._internal.fmt.Fmt_printf.printf(("- more:%v | %s\n" : stdgo.GoString), stdgo.Go.toInterface(_more), stdgo.Go.toInterface(_frame.function_));
                if (!_more) {
                    break;
                };
            };
        } : () -> Void);
        var _b = (function():Void {
            _c();
        } : () -> Void);
        var _a = (function():Void {
            _b();
        } : () -> Void);
        _a();
    }
