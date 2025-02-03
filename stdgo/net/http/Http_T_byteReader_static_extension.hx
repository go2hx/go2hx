package stdgo.net.http;
class T_byteReader_static_extension {
    static public function read(_br:T_byteReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _br = (_br : stdgo.Ref<stdgo._internal.net.http.Http_T_byteReader.T_byteReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_byteReader_static_extension.T_byteReader_static_extension.read(_br, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
