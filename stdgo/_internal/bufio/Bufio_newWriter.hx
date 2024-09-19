package stdgo._internal.bufio;
function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> {
        return stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(_w, (4096 : stdgo.GoInt));
    }
