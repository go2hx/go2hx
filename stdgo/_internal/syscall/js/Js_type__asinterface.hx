package stdgo._internal.syscall.js;
class Type__asInterface {
    @:keep
    @:tdfield
    public dynamic function _isObject():Bool return @:_0 __self__.value._isObject();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.syscall.js.Js_type_pointer.Type_Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
