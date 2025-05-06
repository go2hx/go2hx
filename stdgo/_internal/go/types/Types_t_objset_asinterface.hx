package stdgo._internal.go.types;
class T_objset_asInterface {
    @:keep
    @:tdfield
    public dynamic function _insert(_obj:stdgo._internal.go.types.Types_object.Object):stdgo._internal.go.types.Types_object.Object return @:_0 __self__.value._insert(_obj);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_objsetpointer.T_objsetPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
