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
@:structInit @:using(stdgo._internal.encoding.xml.Xml_Encoder_static_extension.Encoder_static_extension) class Encoder {
    public var _p : stdgo._internal.encoding.xml.Xml_T_printer.T_printer = ({} : stdgo._internal.encoding.xml.Xml_T_printer.T_printer);
    public function new(?_p:stdgo._internal.encoding.xml.Xml_T_printer.T_printer) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Encoder(_p);
    }
}
