package stdgo.image.gif;
class T_blockWriter_static_extension {
    static public function _close(_b:T_blockWriter):Void {
        stdgo._internal.image.gif.Gif_T_blockWriter_static_extension.T_blockWriter_static_extension._close(_b);
    }
    static public function write(_b:T_blockWriter, _data:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.image.gif.Gif_T_blockWriter_static_extension.T_blockWriter_static_extension.write(_b, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeByte(_b:T_blockWriter, _c:std.UInt):stdgo.Error {
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.image.gif.Gif_T_blockWriter_static_extension.T_blockWriter_static_extension.writeByte(_b, _c);
    }
    static public function flush(_b:T_blockWriter):stdgo.Error {
        return stdgo._internal.image.gif.Gif_T_blockWriter_static_extension.T_blockWriter_static_extension.flush(_b);
    }
    static public function _setup(_b:T_blockWriter):Void {
        stdgo._internal.image.gif.Gif_T_blockWriter_static_extension.T_blockWriter_static_extension._setup(_b);
    }
}
