package stdgo._internal.compress.lzw;
function newReader(_r:stdgo._internal.io.Io_Reader.Reader, _order:stdgo._internal.compress.lzw.Lzw_Order.Order, _litWidth:stdgo.GoInt):stdgo._internal.io.Io_ReadCloser.ReadCloser {
        return stdgo.Go.asInterface(stdgo._internal.compress.lzw.Lzw__newReader._newReader(_r, _order, _litWidth));
    }
