package stdgo._internal.math.big;
class T_matrix_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function _eql(_b:stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix>):Bool return @:_0 __self__.value._eql(_b);
    @:keep
    @:tdfield
    public dynamic function _mul(_b:stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix>):stdgo.Ref<stdgo._internal.math.big.Big_t_matrix.T_matrix> return @:_0 __self__.value._mul(_b);
    @:keep
    @:tdfield
    public dynamic function _set(_i:stdgo.GoInt, _j:stdgo.GoInt, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):Void @:_0 __self__.value._set(_i, _j, _x);
    @:keep
    @:tdfield
    public dynamic function _at(_i:stdgo.GoInt, _j:stdgo.GoInt):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return @:_0 __self__.value._at(_i, _j);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.math.big.Big_t_matrixpointer.T_matrixPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
