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
@:structInit @:using(stdgo._internal.encoding.xml.Xml_Attr_static_extension.Attr_static_extension) class Attr {
    public var name : stdgo._internal.encoding.xml.Xml_Name.Name = ({} : stdgo._internal.encoding.xml.Xml_Name.Name);
    public var value : stdgo.GoString = "";
    public function new(?name:stdgo._internal.encoding.xml.Xml_Name.Name, ?value:stdgo.GoString) {
        if (name != null) this.name = name;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Attr(name, value);
    }
}
