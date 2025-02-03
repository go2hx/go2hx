package stdgo.io;
class T_nopCloserWriterTo_static_extension {
    static public function writeTo(_c:T_nopCloserWriterTo, _w:Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.Io_T_nopCloserWriterTo_static_extension.T_nopCloserWriterTo_static_extension.writeTo(_c, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_:T_nopCloserWriterTo):stdgo.Error {
        return stdgo._internal.io.Io_T_nopCloserWriterTo_static_extension.T_nopCloserWriterTo_static_extension.close(_);
    }
    public static function read(__self__:stdgo._internal.io.Io_T_nopCloserWriterTo.T_nopCloserWriterTo, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_nopCloserWriterTo_static_extension.T_nopCloserWriterTo_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
