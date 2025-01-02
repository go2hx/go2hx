package stdgo._internal.compress.lzw;
function _newReader(_src:stdgo._internal.io.Io_Reader.Reader, _order:stdgo._internal.compress.lzw.Lzw_Order.Order, _litWidth:stdgo.GoInt):stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader> {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.compress.lzw.Lzw_Reader.Reader)) : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader>);
        @:check2r _r._init(_src, _order, _litWidth);
        return _r;
    }
