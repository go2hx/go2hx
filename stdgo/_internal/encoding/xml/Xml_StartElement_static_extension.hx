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
@:keep @:allow(stdgo._internal.encoding.xml.Xml.StartElement_asInterface) class StartElement_static_extension {
    @:keep
    @:tdfield
    static public function end( _e:stdgo._internal.encoding.xml.Xml_StartElement.StartElement):stdgo._internal.encoding.xml.Xml_EndElement.EndElement {
        @:recv var _e:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = _e?.__copy__();
        return (new stdgo._internal.encoding.xml.Xml_EndElement.EndElement(_e.name?.__copy__()) : stdgo._internal.encoding.xml.Xml_EndElement.EndElement);
    }
    @:keep
    @:tdfield
    static public function copy( _e:stdgo._internal.encoding.xml.Xml_StartElement.StartElement):stdgo._internal.encoding.xml.Xml_StartElement.StartElement {
        @:recv var _e:stdgo._internal.encoding.xml.Xml_StartElement.StartElement = _e?.__copy__();
        var _attrs = (new stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>((_e.attr.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_e.attr.length : stdgo.GoInt).toBasic() > 0 ? (_e.attr.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.xml.Xml_Attr.Attr)]) : stdgo.Slice<stdgo._internal.encoding.xml.Xml_Attr.Attr>);
        _attrs.__copyTo__(_e.attr);
        _e.attr = _attrs;
        return _e?.__copy__();
    }
}
