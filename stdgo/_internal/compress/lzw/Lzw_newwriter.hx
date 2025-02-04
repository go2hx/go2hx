package stdgo._internal.compress.lzw;
function newWriter(_w:stdgo._internal.io.Io_writer.Writer, _order:stdgo._internal.compress.lzw.Lzw_order.Order, _litWidth:stdgo.GoInt):stdgo._internal.io.Io_writecloser.WriteCloser {
        return stdgo.Go.asInterface(stdgo._internal.compress.lzw.Lzw__newwriter._newWriter(_w, _order, _litWidth));
    }
