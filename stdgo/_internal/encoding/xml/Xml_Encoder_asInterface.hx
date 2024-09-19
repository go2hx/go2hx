package stdgo._internal.encoding.xml;
class Encoder_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    @:keep
    public dynamic function flush():stdgo.Error return __self__.value.flush();
    @:keep
    public dynamic function encodeToken(_t:stdgo._internal.encoding.xml.Xml_Token.Token):stdgo.Error return __self__.value.encodeToken(_t);
    @:keep
    public dynamic function encodeElement(_v:stdgo.AnyInterface, _start:stdgo._internal.encoding.xml.Xml_StartElement.StartElement):stdgo.Error return __self__.value.encodeElement(_v, _start);
    @:keep
    public dynamic function encode(_v:stdgo.AnyInterface):stdgo.Error return __self__.value.encode(_v);
    @:keep
    public dynamic function indent(_prefix:stdgo.GoString, _indent:stdgo.GoString):Void __self__.value.indent(_prefix, _indent);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
