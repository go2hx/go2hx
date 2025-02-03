package stdgo.mime.multipart;
class T_partReader_static_extension {
    static public function read(_pr:T_partReader, _d:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _d = ([for (i in _d) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_T_partReader_static_extension.T_partReader_static_extension.read(_pr, _d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
