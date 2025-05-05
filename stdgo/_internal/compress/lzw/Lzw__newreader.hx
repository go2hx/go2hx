package stdgo._internal.compress.lzw;
function _newReader(_src:stdgo._internal.io.Io_reader.Reader, _order:stdgo._internal.compress.lzw.Lzw_order.Order, _litWidth:stdgo.GoInt):stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader> {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.compress.lzw.Lzw_reader.Reader)) : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader>);
        //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L260"
        _r._init(_src, _order, _litWidth);
        //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L261"
        return _r;
    }
