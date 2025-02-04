package stdgo._internal.internal.lazytemplate;
class Template_asInterface {
    @:keep
    @:tdfield
    public dynamic function execute(_w:stdgo._internal.io.Io_writer.Writer, _data:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.execute(_w, _data);
    @:keep
    @:tdfield
    public dynamic function _build():Void @:_0 __self__.value._build();
    @:keep
    @:tdfield
    public dynamic function _tp():stdgo.Ref<stdgo._internal.text.template.Template_template.Template> return @:_0 __self__.value._tp();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.lazytemplate.Lazytemplate_templatepointer.TemplatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
