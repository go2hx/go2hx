package stdgo._internal.go.types;
class StdSizes_asInterface {
    @:keep
    @:tdfield
    public dynamic function sizeof(t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt64 return @:_0 __self__.value.sizeof(t);
    @:keep
    @:tdfield
    public dynamic function offsetsof(_fields:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>):stdgo.Slice<stdgo.GoInt64> return @:_0 __self__.value.offsetsof(_fields);
    @:keep
    @:tdfield
    public dynamic function alignof_(t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt64 return @:_0 __self__.value.alignof_(t);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_stdsizespointer.StdSizesPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
