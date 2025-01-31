package stdgo._internal.encoding.csv;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
function newReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader> {
        return (stdgo.Go.setRef(({ comma : (44 : stdgo.GoInt32), _r : stdgo._internal.bufio.Bufio_newReader.newReader(_r) } : stdgo._internal.encoding.csv.Csv_Reader.Reader)) : stdgo.Ref<stdgo._internal.encoding.csv.Csv_Reader.Reader>);
    }
