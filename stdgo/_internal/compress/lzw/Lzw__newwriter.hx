package stdgo._internal.compress.lzw;
function _newWriter(_dst:stdgo._internal.io.Io_writer.Writer, _order:stdgo._internal.compress.lzw.Lzw_order.Order, _litWidth:stdgo.GoInt):stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer> {
        var _w = (stdgo.Go.setRef(({} : stdgo._internal.compress.lzw.Lzw_writer.Writer)) : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer>);
        //"file:///home/runner/.go/go1.21.3/src/compress/lzw/writer.go#L263"
        _w._init(_dst, _order, _litWidth);
        //"file:///home/runner/.go/go1.21.3/src/compress/lzw/writer.go#L264"
        return _w;
    }
