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
@:keep class UnmarshalerAttr_static_extension {
    @:interfacetypeffun
    static public function unmarshalXMLAttr(t:stdgo._internal.encoding.xml.Xml_UnmarshalerAttr.UnmarshalerAttr, _attr:stdgo._internal.encoding.xml.Xml_Attr.Attr):stdgo.Error return t.unmarshalXMLAttr(_attr);
}
