package stdgo._internal.compress.lzw;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
function _newWriter(_dst:stdgo._internal.io.Io_Writer.Writer, _order:stdgo._internal.compress.lzw.Lzw_Order.Order, _litWidth:stdgo.GoInt):stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer> {
        var _w = (stdgo.Go.setRef(({} : stdgo._internal.compress.lzw.Lzw_Writer.Writer)) : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>);
        @:check2r _w._init(_dst, _order, _litWidth);
        return _w;
    }
