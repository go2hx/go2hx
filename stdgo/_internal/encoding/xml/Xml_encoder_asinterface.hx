package stdgo._internal.encoding.xml;
class Encoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function flush():stdgo.Error return @:_0 __self__.value.flush();
    @:keep
    @:tdfield
    public dynamic function encodeToken(_t:stdgo._internal.encoding.xml.Xml_token.Token):stdgo.Error return @:_0 __self__.value.encodeToken(_t);
    @:keep
    @:tdfield
    public dynamic function encodeElement(_v:stdgo.AnyInterface, _start:stdgo._internal.encoding.xml.Xml_startelement.StartElement):stdgo.Error return @:_0 __self__.value.encodeElement(_v, _start);
    @:keep
    @:tdfield
    public dynamic function encode(_v:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.encode(_v);
    @:keep
    @:tdfield
    public dynamic function indent(_prefix:stdgo.GoString, _indent:stdgo.GoString):Void @:_0 __self__.value.indent(_prefix, _indent);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.xml.Xml_encoderpointer.EncoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
