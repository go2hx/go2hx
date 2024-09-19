package _internal.runtime.debug_test;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
import stdgo._internal.runtime.debug.Debug;
class T__asInterface {
    @:keep
    public dynamic function _method():stdgo.Slice<stdgo.GoUInt8> return __self__.value._method();
    @:keep
    @:pointer
    public dynamic function _ptrmethod():stdgo.Slice<stdgo.GoUInt8> return __self__.value._ptrmethod(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.runtime.debug_test.Debug_test_T_.T_>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
