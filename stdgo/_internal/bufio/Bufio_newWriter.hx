package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> {
        return stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(_w, (4096 : stdgo.GoInt));
    }
