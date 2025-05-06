package stdgo._internal.go.types;
class T_instanceLookup_asInterface {
    @:keep
    @:tdfield
    public dynamic function _add(_inst:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):Void @:_0 __self__.value._add(_inst);
    @:keep
    @:tdfield
    public dynamic function _lookup(_inst:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo.Ref<stdgo._internal.go.types.Types_named.Named> return @:_0 __self__.value._lookup(_inst);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_instancelookuppointer.T_instanceLookupPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
