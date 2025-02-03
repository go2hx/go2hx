package stdgo.compress.lzw;
class Writer_static_extension {
    static public function _init(_w:Writer, _dst:stdgo._internal.io.Io_Writer.Writer, _order:Order, _litWidth:StdTypes.Int):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>);
        final _litWidth = (_litWidth : stdgo.GoInt);
        stdgo._internal.compress.lzw.Lzw_Writer_static_extension.Writer_static_extension._init(_w, _dst, _order, _litWidth);
    }
    static public function reset(_w:Writer, _dst:stdgo._internal.io.Io_Writer.Writer, _order:Order, _litWidth:StdTypes.Int):Void {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>);
        final _litWidth = (_litWidth : stdgo.GoInt);
        stdgo._internal.compress.lzw.Lzw_Writer_static_extension.Writer_static_extension.reset(_w, _dst, _order, _litWidth);
    }
    static public function close(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>);
        return stdgo._internal.compress.lzw.Lzw_Writer_static_extension.Writer_static_extension.close(_w);
    }
    static public function write(_w:Writer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.lzw.Lzw_Writer_static_extension.Writer_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _incHi(_w:Writer):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>);
        return stdgo._internal.compress.lzw.Lzw_Writer_static_extension.Writer_static_extension._incHi(_w);
    }
    static public function _writeMSB(_w:Writer, _c:std.UInt):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>);
        final _c = (_c : stdgo.GoUInt32);
        return stdgo._internal.compress.lzw.Lzw_Writer_static_extension.Writer_static_extension._writeMSB(_w, _c);
    }
    static public function _writeLSB(_w:Writer, _c:std.UInt):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>);
        final _c = (_c : stdgo.GoUInt32);
        return stdgo._internal.compress.lzw.Lzw_Writer_static_extension.Writer_static_extension._writeLSB(_w, _c);
    }
}
