package stdgo._internal.strconv;
class T_decimal_asInterface {
    @:keep
    public dynamic function roundedInteger():stdgo.GoUInt64 return __self__.value.roundedInteger();
    @:keep
    public dynamic function roundUp(_nd:stdgo.GoInt):Void __self__.value.roundUp(_nd);
    @:keep
    public dynamic function roundDown(_nd:stdgo.GoInt):Void __self__.value.roundDown(_nd);
    @:keep
    public dynamic function round(_nd:stdgo.GoInt):Void __self__.value.round(_nd);
    @:keep
    public dynamic function shift(_k:stdgo.GoInt):Void __self__.value.shift(_k);
    @:keep
    public dynamic function assign(_v:stdgo.GoUInt64):Void __self__.value.assign(_v);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function _floatBits(_flt:stdgo.Ref<stdgo._internal.strconv.Strconv_T_floatInfo.T_floatInfo>):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } return __self__.value._floatBits(_flt);
    @:keep
    public dynamic function _set(_s:stdgo.GoString):Bool return __self__.value._set(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.strconv.Strconv_T_decimal.T_decimal>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
