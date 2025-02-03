package stdgo.io;
class Reader_static_extension {
    static public function read(t:stdgo._internal.io.Io_Reader.Reader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_Reader_static_extension.Reader_static_extension.read(t, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
