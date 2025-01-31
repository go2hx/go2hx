package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
function newReadWriter(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _w:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>):stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter> {
        return (stdgo.Go.setRef((new stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter(_r, _w) : stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter)) : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>);
    }
