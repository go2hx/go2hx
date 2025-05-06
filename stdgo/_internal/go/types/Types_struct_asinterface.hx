package stdgo._internal.go.types;
class Struct_asInterface {
    @:keep
    @:tdfield
    public dynamic function _markComplete():Void @:_0 __self__.value._markComplete();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function underlying():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value.underlying();
    @:keep
    @:tdfield
    public dynamic function tag(_i:stdgo.GoInt):stdgo.GoString return @:_0 __self__.value.tag(_i);
    @:keep
    @:tdfield
    public dynamic function field(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_var.Var> return @:_0 __self__.value.field(_i);
    @:keep
    @:tdfield
    public dynamic function numFields():stdgo.GoInt return @:_0 __self__.value.numFields();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_structpointer.StructPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
