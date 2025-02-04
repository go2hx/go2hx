package stdgo._internal.html.template;
class T_context_asInterface {
    @:keep
    @:tdfield
    public dynamic function _mangle(_templateName:stdgo.GoString):stdgo.GoString return @:_0 __self__.value._mangle(_templateName);
    @:keep
    @:tdfield
    public dynamic function _eq(_d:stdgo._internal.html.template.Template_t_context.T_context):Bool return @:_0 __self__.value._eq(_d);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.html.template.Template_t_contextpointer.T_contextPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
