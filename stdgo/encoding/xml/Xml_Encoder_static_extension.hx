package stdgo.encoding.xml;
class Encoder_static_extension {
    static public function close(_enc:Encoder):stdgo.Error {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>);
        return stdgo._internal.encoding.xml.Xml_Encoder_static_extension.Encoder_static_extension.close(_enc);
    }
    static public function flush(_enc:Encoder):stdgo.Error {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>);
        return stdgo._internal.encoding.xml.Xml_Encoder_static_extension.Encoder_static_extension.flush(_enc);
    }
    static public function encodeToken(_enc:Encoder, _t:Token):stdgo.Error {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>);
        return stdgo._internal.encoding.xml.Xml_Encoder_static_extension.Encoder_static_extension.encodeToken(_enc, _t);
    }
    static public function encodeElement(_enc:Encoder, _v:stdgo.AnyInterface, _start:StartElement):stdgo.Error {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>);
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.encoding.xml.Xml_Encoder_static_extension.Encoder_static_extension.encodeElement(_enc, _v, _start);
    }
    static public function encode(_enc:Encoder, _v:stdgo.AnyInterface):stdgo.Error {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>);
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.encoding.xml.Xml_Encoder_static_extension.Encoder_static_extension.encode(_enc, _v);
    }
    static public function indent(_enc:Encoder, _prefix:String, _indent:String):Void {
        final _enc = (_enc : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>);
        final _prefix = (_prefix : stdgo.GoString);
        final _indent = (_indent : stdgo.GoString);
        stdgo._internal.encoding.xml.Xml_Encoder_static_extension.Encoder_static_extension.indent(_enc, _prefix, _indent);
    }
}
