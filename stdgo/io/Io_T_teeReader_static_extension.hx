package stdgo.io;
class T_teeReader_static_extension {
    static public function read(_t:T_teeReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _t = (_t : stdgo.Ref<stdgo._internal.io.Io_T_teeReader.T_teeReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_teeReader_static_extension.T_teeReader_static_extension.read(_t, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
