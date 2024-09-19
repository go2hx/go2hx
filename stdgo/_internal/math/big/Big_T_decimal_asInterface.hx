package stdgo._internal.math.big;
class T_decimal_asInterface {
    @:keep
    public dynamic function _roundDown(_n:stdgo.GoInt):Void __self__.value._roundDown(_n);
    @:keep
    public dynamic function _roundUp(_n:stdgo.GoInt):Void __self__.value._roundUp(_n);
    @:keep
    public dynamic function _round(_n:stdgo.GoInt):Void __self__.value._round(_n);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function _init(_m:stdgo._internal.math.big.Big_T_nat.T_nat, _shift:stdgo.GoInt):Void __self__.value._init(_m, _shift);
    @:keep
    public dynamic function _at(_i:stdgo.GoInt):stdgo.GoUInt8 return __self__.value._at(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.math.big.Big_T_decimal.T_decimal>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
