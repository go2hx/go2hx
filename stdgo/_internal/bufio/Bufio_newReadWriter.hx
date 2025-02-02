package stdgo._internal.bufio;
function newReadWriter(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>, _w:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>):stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter> {
        return (stdgo.Go.setRef((new stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter(_r, _w) : stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter)) : stdgo.Ref<stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter>);
    }
