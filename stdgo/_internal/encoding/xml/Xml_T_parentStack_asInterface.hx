package stdgo._internal.encoding.xml;
class T_parentStack_asInterface {
    @:keep
    public dynamic function _push(_parents:stdgo.Slice<stdgo.GoString>):stdgo.Error return __self__.value._push(_parents);
    @:keep
    public dynamic function _trim(_parents:stdgo.Slice<stdgo.GoString>):stdgo.Error return __self__.value._trim(_parents);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}