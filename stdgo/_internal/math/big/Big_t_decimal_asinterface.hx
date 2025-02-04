package stdgo._internal.math.big;
class T_decimal_asInterface {
    @:keep
    @:tdfield
    public dynamic function _roundDown(_n:stdgo.GoInt):Void @:_0 __self__.value._roundDown(_n);
    @:keep
    @:tdfield
    public dynamic function _roundUp(_n:stdgo.GoInt):Void @:_0 __self__.value._roundUp(_n);
    @:keep
    @:tdfield
    public dynamic function _round(_n:stdgo.GoInt):Void @:_0 __self__.value._round(_n);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function _init(_m:stdgo._internal.math.big.Big_t_nat.T_nat, _shift:stdgo.GoInt):Void @:_0 __self__.value._init(_m, _shift);
    @:keep
    @:tdfield
    public dynamic function _at(_i:stdgo.GoInt):stdgo.GoUInt8 return @:_0 __self__.value._at(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.math.big.Big_t_decimalpointer.T_decimalPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
