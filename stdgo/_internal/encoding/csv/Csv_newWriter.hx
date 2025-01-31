package stdgo._internal.encoding.csv;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer> {
        return (stdgo.Go.setRef(({ comma : (44 : stdgo.GoInt32), _w : stdgo._internal.bufio.Bufio_newWriter.newWriter(_w) } : stdgo._internal.encoding.csv.Csv_Writer.Writer)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_Writer.Writer>);
    }
