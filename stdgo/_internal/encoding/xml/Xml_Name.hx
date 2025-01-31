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
@:structInit @:using(stdgo._internal.encoding.xml.Xml_Name_static_extension.Name_static_extension) class Name {
    public var space : stdgo.GoString = "";
    public var local : stdgo.GoString = "";
    public function new(?space:stdgo.GoString, ?local:stdgo.GoString) {
        if (space != null) this.space = space;
        if (local != null) this.local = local;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Name(space, local);
    }
}
