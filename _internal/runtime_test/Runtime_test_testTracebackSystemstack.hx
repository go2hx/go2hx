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
function testTracebackSystemstack(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (false) {
            _t.skip(stdgo.Go.toInterface(("systemstack tail call not implemented on ppc64x" : stdgo.GoString)));
        };
        var _pcs = (new stdgo.Slice<stdgo.GoUIntptr>((20 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
        _pcs = (_pcs.__slice__(0, stdgo._internal.runtime.Runtime_tracebackSystemstack.tracebackSystemstack(_pcs, (5 : stdgo.GoInt))) : stdgo.Slice<stdgo.GoUIntptr>);
        var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _countOut = __1, _countIn = __0;
        var _frames = stdgo._internal.runtime.Runtime_callersFrames.callersFrames(_pcs);
        var _tb:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        while (true) {
            var __tmp__ = _frames.next(), _frame:stdgo._internal.runtime.Runtime_Frame.Frame = __tmp__._0, _more:Bool = __tmp__._1;
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_tb) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("\n%s+0x%x %s:%d" : stdgo.GoString), stdgo.Go.toInterface(_frame.function_), stdgo.Go.toInterface((_frame.pc - _frame.entry : stdgo.GoUIntptr)), stdgo.Go.toInterface(_frame.file), stdgo.Go.toInterface(_frame.line));
            {
                final __value__ = _frame.function_;
                if (__value__ == (("runtime.TracebackSystemstack" : stdgo.GoString))) {
                    _countIn++;
                } else if (__value__ == (("runtime_test.TestTracebackSystemstack" : stdgo.GoString))) {
                    _countOut++;
                };
            };
            if (!_more) {
                break;
            };
        };
        if (((_countIn != (5 : stdgo.GoInt)) || (_countOut != (1 : stdgo.GoInt)) : Bool)) {
            _t.fatalf(("expected 5 calls to TracebackSystemstack and 1 call to TestTracebackSystemstack, got:%s" : stdgo.GoString), stdgo.Go.toInterface((_tb.string() : stdgo.GoString)));
        };
    }
