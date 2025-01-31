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
@:keep @:allow(stdgo._internal.encoding.xml.Xml.Directive_asInterface) class Directive_static_extension {
    @:keep
    @:tdfield
    static public function copy( _d:stdgo._internal.encoding.xml.Xml_Directive.Directive):stdgo._internal.encoding.xml.Xml_Directive.Directive {
        @:recv var _d:stdgo._internal.encoding.xml.Xml_Directive.Directive = _d;
        return (stdgo._internal.bytes.Bytes_clone.clone(_d) : stdgo._internal.encoding.xml.Xml_Directive.Directive);
    }
}
