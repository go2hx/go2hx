package stdgo._internal.math.bits;
class T_errorString_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    @:keep
    public dynamic function runtimeError():Void __self__.value.runtimeError();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.math.bits.Bits_T_errorString.T_errorString>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
