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
function newEncoder(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder> {
        var _e = (stdgo.Go.setRef((new stdgo._internal.encoding.xml.Xml_Encoder.Encoder(({ _w : stdgo._internal.bufio.Bufio_newWriter.newWriter(_w) } : stdgo._internal.encoding.xml.Xml_T_printer.T_printer)) : stdgo._internal.encoding.xml.Xml_Encoder.Encoder)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_Encoder.Encoder>);
        (@:checkr _e ?? throw "null pointer dereference")._p._encoder = _e;
        return _e;
    }
