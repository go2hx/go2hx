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
@:keep @:allow(_internal.runtime_test.Runtime_test.T_structWithMethod_asInterface) class T_structWithMethod_static_extension {
    @:keep
    static public function _inlinablePanic( _s:_internal.runtime_test.Runtime_test_T_structWithMethod.T_structWithMethod):Void {
        @:recv var _s:_internal.runtime_test.Runtime_test_T_structWithMethod.T_structWithMethod = _s?.__copy__();
        throw stdgo.Go.toInterface(("panic" : stdgo.GoString));
    }
    @:keep
    static public function _nop( _s:_internal.runtime_test.Runtime_test_T_structWithMethod.T_structWithMethod):Void {
        @:recv var _s:_internal.runtime_test.Runtime_test_T_structWithMethod.T_structWithMethod = _s?.__copy__();
    }
    @:keep
    static public function _stack( _s:_internal.runtime_test.Runtime_test_T_structWithMethod.T_structWithMethod):stdgo.GoString {
        @:recv var _s:_internal.runtime_test.Runtime_test_T_structWithMethod.T_structWithMethod = _s?.__copy__();
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((4096 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        return ((_buf.__slice__(0, stdgo._internal.runtime.Runtime_stack.stack(_buf, false)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _callers( _s:_internal.runtime_test.Runtime_test_T_structWithMethod.T_structWithMethod):stdgo.Slice<stdgo.GoUIntptr> {
        @:recv var _s:_internal.runtime_test.Runtime_test_T_structWithMethod.T_structWithMethod = _s?.__copy__();
        var _pc = (new stdgo.Slice<stdgo.GoUIntptr>((16 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
        return (_pc.__slice__(0, stdgo._internal.runtime.Runtime_callers.callers((0 : stdgo.GoInt), _pc)) : stdgo.Slice<stdgo.GoUIntptr>);
    }
    @:keep
    static public function _caller( _s:_internal.runtime_test.Runtime_test_T_structWithMethod.T_structWithMethod):stdgo.GoString {
        @:recv var _s:_internal.runtime_test.Runtime_test_T_structWithMethod.T_structWithMethod = _s?.__copy__();
        var __tmp__ = stdgo._internal.runtime.Runtime_caller.caller((1 : stdgo.GoInt)), __6:stdgo.GoUIntptr = __tmp__._0, _file:stdgo.GoString = __tmp__._1, _line:stdgo.GoInt = __tmp__._2, _ok:Bool = __tmp__._3;
        if (!_ok) {
            throw stdgo.Go.toInterface(("Caller failed" : stdgo.GoString));
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s:%d" : stdgo.GoString), stdgo.Go.toInterface(_file), stdgo.Go.toInterface(_line))?.__copy__();
    }
}
