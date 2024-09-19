package _internal.runtime.debug_test;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
@:keep @:allow(_internal.runtime.debug_test.Debug_test.T__asInterface) class T__static_extension {
    @:keep
    static public function _method( _t:_internal.runtime.debug_test.Debug_test_T_.T_):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _t:_internal.runtime.debug_test.Debug_test_T_.T_ = _t;
        return _t._ptrmethod(stdgo.Go.pointer(_t));
    }
    @:keep
    @:pointer
    static public function _ptrmethod(____:_internal.runtime.debug_test.Debug_test_T_.T_,  _t:stdgo.Pointer<_internal.runtime.debug_test.Debug_test_T_.T_>):stdgo.Slice<stdgo.GoUInt8> {
        return stdgo._internal.runtime.debug.Debug_stack.stack();
    }
}
