package stdgo._internal.math.big;
class T_matrix_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function _eql(_b:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>):Bool return __self__.value._eql(_b);
    @:keep
    public dynamic function _mul(_b:stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix>):stdgo.Ref<stdgo._internal.math.big.Big_T_matrix.T_matrix> return __self__.value._mul(_b);
    @:keep
    public dynamic function _set(_i:stdgo.GoInt, _j:stdgo.GoInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>):Void __self__.value._set(_i, _j, _x);
    @:keep
    public dynamic function _at(_i:stdgo.GoInt, _j:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat> return __self__.value._at(_i, _j);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.math.big.Big_T_matrix.T_matrix>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
