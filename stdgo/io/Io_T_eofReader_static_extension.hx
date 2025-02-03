package stdgo.io;
class T_eofReader_static_extension {
    static public function read(_:T_eofReader, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.io.Io_T_eofReader_static_extension.T_eofReader_static_extension.read(_, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
