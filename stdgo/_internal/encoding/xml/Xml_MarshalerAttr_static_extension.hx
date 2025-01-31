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
@:keep class MarshalerAttr_static_extension {
    @:interfacetypeffun
    static public function marshalXMLAttr(t:stdgo._internal.encoding.xml.Xml_MarshalerAttr.MarshalerAttr, _name:stdgo._internal.encoding.xml.Xml_Name.Name):{ var _0 : stdgo._internal.encoding.xml.Xml_Attr.Attr; var _1 : stdgo.Error; } return t.marshalXMLAttr(_name);
}
