package stdgo._internal.container.list;
class Element_asInterface {
    @:keep
    public dynamic function prev():stdgo.Ref<stdgo._internal.container.list.List_Element.Element> return __self__.value.prev();
    @:keep
    public dynamic function next():stdgo.Ref<stdgo._internal.container.list.List_Element.Element> return __self__.value.next();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.container.list.List_Element.Element>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
