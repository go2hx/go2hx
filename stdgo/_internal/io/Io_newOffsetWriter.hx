package stdgo._internal.io;
function newOffsetWriter(_w:stdgo._internal.io.Io_WriterAt.WriterAt, _off:stdgo.GoInt64):stdgo.Ref<stdgo._internal.io.Io_OffsetWriter.OffsetWriter> {
        return (stdgo.Go.setRef((new stdgo._internal.io.Io_OffsetWriter.OffsetWriter(_w, _off, _off) : stdgo._internal.io.Io_OffsetWriter.OffsetWriter)) : stdgo.Ref<stdgo._internal.io.Io_OffsetWriter.OffsetWriter>);
    }
