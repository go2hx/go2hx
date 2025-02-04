package stdgo._internal.mime.quotedprintable;
function newReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_reader.Reader> {
        return (stdgo.Go.setRef(({ _br : stdgo._internal.bufio.Bufio_newreader.newReader(_r) } : stdgo._internal.mime.quotedprintable.Quotedprintable_reader.Reader)) : stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_reader.Reader>);
    }
