package stdgo._internal.bufio;
function newReader(_rd:stdgo._internal.io.Io_Reader.Reader):stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader> {
        return stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(_rd, (4096 : stdgo.GoInt));
    }
