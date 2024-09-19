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
function testFunctionAlignmentTraceback(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _pc = (_internal.runtime_test.Runtime_test__tracebackFunc._tracebackFunc(_t) : stdgo.GoUIntptr);
        var _f = stdgo._internal.runtime.Runtime_funcForPC.funcForPC(_pc);
        if (!stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_f.name()?.__copy__(), ("tracebackFunc" : stdgo.GoString))) {
            _t.fatalf(("Caller(0) = %+v, want tracebackFunc" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        };
        while (stdgo._internal.runtime.Runtime_funcForPC.funcForPC(_pc) == (_f)) {
            _pc++;
        };
        _pc--;
        if (false) {
            var _code = (((stdgo.Go.toInterface(_pc) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.GoUInt8>).value : stdgo.GoUInt8);
            if (_code != ((204 : stdgo.GoUInt8))) {
                _t.errorf(("PC %v code got %#x want 0xcc" : stdgo.GoString), stdgo.Go.toInterface(_pc), stdgo.Go.toInterface(_code));
            };
        };
        var _frames = stdgo._internal.runtime.Runtime_callersFrames.callersFrames((new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[_pc]) : stdgo.Slice<stdgo.GoUIntptr>));
        var __tmp__ = _frames.next(), _frame:stdgo._internal.runtime.Runtime_Frame.Frame = __tmp__._0, __6:Bool = __tmp__._1;
        if (_frame.func != (_f)) {
            _t.errorf(("frames.Next() got %+v want %+v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_frame.func)), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        };
    }
