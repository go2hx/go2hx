package stdgo._internal.go.constant;
class T_complexVal_asInterface {
    @:keep
    @:tdfield
    public dynamic function _implementsValue():Void @:_0 __self__.value._implementsValue();
    @:keep
    @:tdfield
    public dynamic function exactString():stdgo.GoString return @:_0 __self__.value.exactString();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function kind():stdgo._internal.go.constant.Constant_kind.Kind return @:_0 __self__.value.kind();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.constant.Constant_t_complexvalpointer.T_complexValPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
