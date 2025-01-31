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
@:keep @:allow(stdgo._internal.encoding.xml.Xml.TagPathError_asInterface) class TagPathError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.xml.Xml_TagPathError.TagPathError> = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s field %q with tag %q conflicts with field %q with tag %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").struct_), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").field1), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").tag1), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").field2), stdgo.Go.toInterface((@:checkr _e ?? throw "null pointer dereference").tag2))?.__copy__();
    }
}
