package stdgo._internal.go.types;
class TypeAndValue_asInterface {
    @:keep
    @:tdfield
    public dynamic function hasOk():Bool return @:_0 __self__.value.hasOk();
    @:keep
    @:tdfield
    public dynamic function assignable():Bool return @:_0 __self__.value.assignable();
    @:keep
    @:tdfield
    public dynamic function addressable():Bool return @:_0 __self__.value.addressable();
    @:keep
    @:tdfield
    public dynamic function isNil():Bool return @:_0 __self__.value.isNil();
    @:keep
    @:tdfield
    public dynamic function isValue():Bool return @:_0 __self__.value.isValue();
    @:keep
    @:tdfield
    public dynamic function isBuiltin():Bool return @:_0 __self__.value.isBuiltin();
    @:keep
    @:tdfield
    public dynamic function isType():Bool return @:_0 __self__.value.isType();
    @:keep
    @:tdfield
    public dynamic function isVoid():Bool return @:_0 __self__.value.isVoid();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_typeandvaluepointer.TypeAndValuePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
