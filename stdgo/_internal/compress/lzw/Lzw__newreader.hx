package stdgo._internal.compress.lzw;
function _newReader(_src:stdgo._internal.io.Io_reader.Reader, _order:stdgo._internal.compress.lzw.Lzw_order.Order, _litWidth:stdgo.GoInt):stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader> {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.compress.lzw.Lzw_reader.Reader)) : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader>);
        @:check2r _r._init(_src, _order, _litWidth);
        return _r;
    }
