package stdgo.compress.lzw;
class Reader_static_extension {
    static public function _init(_r:Reader, _src:stdgo._internal.io.Io_Reader.Reader, _order:Order, _litWidth:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader>);
        final _litWidth = (_litWidth : stdgo.GoInt);
        stdgo._internal.compress.lzw.Lzw_Reader_static_extension.Reader_static_extension._init(_r, _src, _order, _litWidth);
    }
    static public function reset(_r:Reader, _src:stdgo._internal.io.Io_Reader.Reader, _order:Order, _litWidth:StdTypes.Int):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader>);
        final _litWidth = (_litWidth : stdgo.GoInt);
        stdgo._internal.compress.lzw.Lzw_Reader_static_extension.Reader_static_extension.reset(_r, _src, _order, _litWidth);
    }
    static public function close(_r:Reader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader>);
        return stdgo._internal.compress.lzw.Lzw_Reader_static_extension.Reader_static_extension.close(_r);
    }
    static public function _decode(_r:Reader):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader>);
        stdgo._internal.compress.lzw.Lzw_Reader_static_extension.Reader_static_extension._decode(_r);
    }
    static public function read(_r:Reader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.compress.lzw.Lzw_Reader_static_extension.Reader_static_extension.read(_r, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readMSB(_r:Reader):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader>);
        return {
            final obj = stdgo._internal.compress.lzw.Lzw_Reader_static_extension.Reader_static_extension._readMSB(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readLSB(_r:Reader):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader>);
        return {
            final obj = stdgo._internal.compress.lzw.Lzw_Reader_static_extension.Reader_static_extension._readLSB(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
