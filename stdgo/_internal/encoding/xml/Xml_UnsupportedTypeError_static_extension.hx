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
@:keep @:allow(stdgo._internal.encoding.xml.Xml.UnsupportedTypeError_asInterface) class UnsupportedTypeError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_UnsupportedTypeError.UnsupportedTypeError> = _e;
        return (("xml: unsupported type: " : stdgo.GoString) + ((@:checkr _e ?? throw "null pointer dereference").type.string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
