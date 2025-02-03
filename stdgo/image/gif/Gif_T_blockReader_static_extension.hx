package stdgo.image.gif;
class T_blockReader_static_extension {
    static public function _close(_b:T_blockReader):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader>);
        return stdgo._internal.image.gif.Gif_T_blockReader_static_extension.T_blockReader_static_extension._close(_b);
    }
    static public function read(_b:T_blockReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.image.gif.Gif_T_blockReader_static_extension.T_blockReader_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readByte(_b:T_blockReader):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader>);
        return {
            final obj = stdgo._internal.image.gif.Gif_T_blockReader_static_extension.T_blockReader_static_extension.readByte(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _fill(_b:T_blockReader):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.image.gif.Gif_T_blockReader.T_blockReader>);
        stdgo._internal.image.gif.Gif_T_blockReader_static_extension.T_blockReader_static_extension._fill(_b);
    }
}
