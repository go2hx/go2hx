package stdgo._internal.mime.quotedprintable;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
function newWriter(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer> {
        return (stdgo.Go.setRef(({ _w : _w } : stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer)) : stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer>);
    }
