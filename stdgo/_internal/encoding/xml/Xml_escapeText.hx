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
function escapeText(_w:stdgo._internal.io.Io_Writer.Writer, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        return stdgo._internal.encoding.xml.Xml__escapeText._escapeText(_w, _s, true);
    }
