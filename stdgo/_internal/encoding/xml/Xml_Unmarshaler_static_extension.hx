package stdgo._internal.encoding.xml;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
@:keep class Unmarshaler_static_extension {
    @:interfacetypeffun
    static public function unmarshalXML(t:stdgo._internal.encoding.xml.Xml_Unmarshaler.Unmarshaler, _d:stdgo.Ref<stdgo._internal.encoding.xml.Xml_Decoder.Decoder>, _start:stdgo._internal.encoding.xml.Xml_StartElement.StartElement):stdgo.Error return t.unmarshalXML(_d, _start);
}
