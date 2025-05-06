package stdgo._internal.go.types;
class TypeList_asInterface {
    @:keep
    @:tdfield
    public dynamic function _list():stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> return @:_0 __self__.value._list();
    @:keep
    @:tdfield
    public dynamic function at(_i:stdgo.GoInt):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value.at(_i);
    @:keep
    @:tdfield
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_typelistpointer.TypeListPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
