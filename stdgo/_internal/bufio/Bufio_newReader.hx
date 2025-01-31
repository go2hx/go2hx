package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
function newReader(_rd:stdgo._internal.io.Io_Reader.Reader):stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> {
        return stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(_rd, (4096 : stdgo.GoInt));
    }
