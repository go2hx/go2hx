package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
class T_byteFormatter_asInterface {
    @:keep
    public dynamic function format(_f:stdgo._internal.fmt.Fmt_State.State, __3:stdgo.GoInt32):Void __self__.value.format(_f, __3);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.fmt_test.Fmt_test_T_byteFormatter.T_byteFormatter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
