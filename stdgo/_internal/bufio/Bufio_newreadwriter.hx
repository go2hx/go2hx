package stdgo._internal.bufio;
function newReadWriter(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _w:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>):stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter> {
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L841"
        return (stdgo.Go.setRef((new stdgo._internal.bufio.Bufio_readwriter.ReadWriter(_r, _w) : stdgo._internal.bufio.Bufio_readwriter.ReadWriter)) : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>);
    }
