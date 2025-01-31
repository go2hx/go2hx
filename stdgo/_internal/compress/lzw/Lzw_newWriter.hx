package stdgo._internal.compress.lzw;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
function newWriter(_w:stdgo._internal.io.Io_Writer.Writer, _order:stdgo._internal.compress.lzw.Lzw_Order.Order, _litWidth:stdgo.GoInt):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        return stdgo.Go.asInterface(stdgo._internal.compress.lzw.Lzw__newWriter._newWriter(_w, _order, _litWidth));
    }
