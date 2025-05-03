package stdgo._internal.bufio;
function newReader(_rd:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> {
        //"file:///home/runner/.go/go1.21.3/src/bufio/bufio.go#L63"
        return stdgo._internal.bufio.Bufio_newreadersize.newReaderSize(_rd, (4096 : stdgo.GoInt));
    }
