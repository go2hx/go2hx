package stdgo._internal.debug.gosym;
class Func_asInterface {
    @:embedded
    public dynamic function _nameWithoutInst():stdgo.GoString return __self__.value._nameWithoutInst();
    @:embedded
    public dynamic function static_():Bool return __self__.value.static_();
    @:embedded
    public dynamic function receiverName():stdgo.GoString return __self__.value.receiverName();
    @:embedded
    public dynamic function packageName():stdgo.GoString return __self__.value.packageName();
    @:embedded
    public dynamic function baseName():stdgo.GoString return __self__.value.baseName();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.gosym.Gosym_Func.Func>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
