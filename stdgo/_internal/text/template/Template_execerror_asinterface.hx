package stdgo._internal.text.template;
class ExecError_asInterface {
    @:keep
    @:tdfield
    public dynamic function unwrap():stdgo.Error return @:_0 __self__.value.unwrap();
    @:keep
    @:tdfield
    public dynamic function error():stdgo.GoString return @:_0 __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.text.template.Template_execerrorpointer.ExecErrorPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
