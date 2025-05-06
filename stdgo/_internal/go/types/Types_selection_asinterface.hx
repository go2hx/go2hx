package stdgo._internal.go.types;
class Selection_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function indirect():Bool return @:_0 __self__.value.indirect();
    @:keep
    @:tdfield
    public dynamic function index():stdgo.Slice<stdgo.GoInt> return @:_0 __self__.value.index();
    @:keep
    @:tdfield
    public dynamic function type():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value.type();
    @:keep
    @:tdfield
    public dynamic function obj():stdgo._internal.go.types.Types_object.Object return @:_0 __self__.value.obj();
    @:keep
    @:tdfield
    public dynamic function recv():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value.recv();
    @:keep
    @:tdfield
    public dynamic function kind():stdgo._internal.go.types.Types_selectionkind.SelectionKind return @:_0 __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_selectionpointer.SelectionPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
