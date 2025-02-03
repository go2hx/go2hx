package stdgo.io;
class T_multiReader_static_extension {
    static public function _writeToWithBuffer(_mr:T_multiReader, _w:Writer, _buf:Array<std.UInt>):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _mr = (_mr : stdgo.Ref<stdgo._internal.io.Io_T_multiReader.T_multiReader>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_multiReader_static_extension.T_multiReader_static_extension._writeToWithBuffer(_mr, _w, _buf);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeTo(_mr:T_multiReader, _w:Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _mr = (_mr : stdgo.Ref<stdgo._internal.io.Io_T_multiReader.T_multiReader>);
        return {
            final obj = stdgo._internal.io.Io_T_multiReader_static_extension.T_multiReader_static_extension.writeTo(_mr, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_mr:T_multiReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _mr = (_mr : stdgo.Ref<stdgo._internal.io.Io_T_multiReader.T_multiReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_multiReader_static_extension.T_multiReader_static_extension.read(_mr, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
