package stdgo._internal.debug.gosym;
class Sym_asInterface {
    @:keep
    @:tdfield
    public dynamic function baseName():stdgo.GoString return @:_0 __self__.value.baseName();
    @:keep
    @:tdfield
    public dynamic function receiverName():stdgo.GoString return @:_0 __self__.value.receiverName();
    @:keep
    @:tdfield
    public dynamic function packageName():stdgo.GoString return @:_0 __self__.value.packageName();
    @:keep
    @:tdfield
    public dynamic function _nameWithoutInst():stdgo.GoString return @:_0 __self__.value._nameWithoutInst();
    @:keep
    @:tdfield
    public dynamic function static_():Bool return @:_0 __self__.value.static_();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.gosym.Gosym_sympointer.SymPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
