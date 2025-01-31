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
@:keep @:allow(stdgo._internal.encoding.xml.Xml.UnmarshalError_asInterface) class UnmarshalError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.encoding.xml.Xml_UnmarshalError.UnmarshalError):stdgo.GoString {
        @:recv var _e:stdgo._internal.encoding.xml.Xml_UnmarshalError.UnmarshalError = _e;
        return (_e : stdgo.GoString)?.__copy__();
    }
}
