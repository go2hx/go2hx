package stdgo._internal.index.suffixarray;
class T_ints_asInterface {
    @:keep
    @:tdfield
    public dynamic function _slice(_i:stdgo.GoInt, _j:stdgo.GoInt):stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints return @:_0 __self__.value._slice(_i, _j);
    @:keep
    @:tdfield
    public dynamic function _set(_i:stdgo.GoInt, _v:stdgo.GoInt64):Void @:_0 __self__.value._set(_i, _v);
    @:keep
    @:tdfield
    public dynamic function _get(_i:stdgo.GoInt):stdgo.GoInt64 return @:_0 __self__.value._get(_i);
    @:keep
    @:tdfield
    public dynamic function _len():stdgo.GoInt return @:_0 __self__.value._len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.index.suffixarray.Suffixarray_t_intspointer.T_intsPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
