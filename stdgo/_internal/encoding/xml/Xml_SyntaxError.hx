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
@:structInit @:using(stdgo._internal.encoding.xml.Xml_SyntaxError_static_extension.SyntaxError_static_extension) class SyntaxError {
    public var msg : stdgo.GoString = "";
    public var line : stdgo.GoInt = 0;
    public function new(?msg:stdgo.GoString, ?line:stdgo.GoInt) {
        if (msg != null) this.msg = msg;
        if (line != null) this.line = line;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SyntaxError(msg, line);
    }
}
