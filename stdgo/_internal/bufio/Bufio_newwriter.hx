package stdgo._internal.bufio;
function newWriter(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> {
        return stdgo._internal.bufio.Bufio_newwritersize.newWriterSize(_w, (4096 : stdgo.GoInt));
    }
