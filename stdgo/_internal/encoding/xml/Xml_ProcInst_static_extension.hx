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
@:keep @:allow(stdgo._internal.encoding.xml.Xml.ProcInst_asInterface) class ProcInst_static_extension {
    @:keep
    @:tdfield
    static public function copy( _p:stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst):stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst {
        @:recv var _p:stdgo._internal.encoding.xml.Xml_ProcInst.ProcInst = _p?.__copy__();
        _p.inst = stdgo._internal.bytes.Bytes_clone.clone(_p.inst);
        return _p?.__copy__();
    }
}
