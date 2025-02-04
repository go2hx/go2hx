package stdgo._internal.compress.lzw;
function newReader(_r:stdgo._internal.io.Io_reader.Reader, _order:stdgo._internal.compress.lzw.Lzw_order.Order, _litWidth:stdgo.GoInt):stdgo._internal.io.Io_readcloser.ReadCloser {
        return stdgo.Go.asInterface(stdgo._internal.compress.lzw.Lzw__newreader._newReader(_r, _order, _litWidth));
    }
