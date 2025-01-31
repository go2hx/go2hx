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
function escape(_w:stdgo._internal.io.Io_Writer.Writer, _s:stdgo.Slice<stdgo.GoUInt8>):Void {
        stdgo._internal.encoding.xml.Xml_escapeText.escapeText(_w, _s);
    }
