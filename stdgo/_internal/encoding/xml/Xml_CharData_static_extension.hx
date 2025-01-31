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
@:keep @:allow(stdgo._internal.encoding.xml.Xml.CharData_asInterface) class CharData_static_extension {
    @:keep
    @:tdfield
    static public function copy( _c:stdgo._internal.encoding.xml.Xml_CharData.CharData):stdgo._internal.encoding.xml.Xml_CharData.CharData {
        @:recv var _c:stdgo._internal.encoding.xml.Xml_CharData.CharData = _c;
        return (stdgo._internal.bytes.Bytes_clone.clone(_c) : stdgo._internal.encoding.xml.Xml_CharData.CharData);
    }
}
