package stdgo._internal.compress.flate;
class T_hcode_asInterface {
    @:keep
    public dynamic function _set(_code:stdgo.GoUInt16, _length:stdgo.GoUInt16):Void __self__.value._set(_code, _length);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
