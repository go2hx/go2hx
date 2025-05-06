package stdgo._internal.go.types;
class MethodSet_asInterface {
    @:keep
    @:tdfield
    public dynamic function lookup(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> return @:_0 __self__.value.lookup(_pkg, _name);
    @:keep
    @:tdfield
    public dynamic function at(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_selection.Selection> return @:_0 __self__.value.at(_i);
    @:keep
    @:tdfield
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_methodsetpointer.MethodSetPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
