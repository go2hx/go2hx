package stdgo._internal.go.types;
class Interface_asInterface {
    @:keep
    @:tdfield
    public dynamic function _cleanup():Void @:_0 __self__.value._cleanup();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function underlying():stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value.underlying();
    @:keep
    @:tdfield
    public dynamic function complete():stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface> return @:_0 __self__.value.complete();
    @:keep
    @:tdfield
    public dynamic function isImplicit():Bool return @:_0 __self__.value.isImplicit();
    @:keep
    @:tdfield
    public dynamic function isMethodSet():Bool return @:_0 __self__.value.isMethodSet();
    @:keep
    @:tdfield
    public dynamic function isComparable():Bool return @:_0 __self__.value.isComparable();
    @:keep
    @:tdfield
    public dynamic function empty():Bool return @:_0 __self__.value.empty();
    @:keep
    @:tdfield
    public dynamic function method(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> return @:_0 __self__.value.method(_i);
    @:keep
    @:tdfield
    public dynamic function numMethods():stdgo.GoInt return @:_0 __self__.value.numMethods();
    @:keep
    @:tdfield
    public dynamic function embeddedType(_i:stdgo.GoInt):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value.embeddedType(_i);
    @:keep
    @:tdfield
    public dynamic function embedded(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_named.Named> return @:_0 __self__.value.embedded(_i);
    @:keep
    @:tdfield
    public dynamic function numEmbeddeds():stdgo.GoInt return @:_0 __self__.value.numEmbeddeds();
    @:keep
    @:tdfield
    public dynamic function explicitMethod(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> return @:_0 __self__.value.explicitMethod(_i);
    @:keep
    @:tdfield
    public dynamic function numExplicitMethods():stdgo.GoInt return @:_0 __self__.value.numExplicitMethods();
    @:keep
    @:tdfield
    public dynamic function markImplicit():Void @:_0 __self__.value.markImplicit();
    @:keep
    @:tdfield
    public dynamic function _typeSet():stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet> return @:_0 __self__.value._typeSet();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_interfacepointer.InterfacePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
