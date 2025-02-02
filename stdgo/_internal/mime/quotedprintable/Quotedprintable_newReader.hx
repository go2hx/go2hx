package stdgo._internal.mime.quotedprintable;
function newReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Reader.Reader> {
        return (stdgo.Go.setRef(({ _br : stdgo._internal.bufio.Bufio_newReader.newReader(_r) } : stdgo._internal.mime.quotedprintable.Quotedprintable_Reader.Reader)) : stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Reader.Reader>);
    }
