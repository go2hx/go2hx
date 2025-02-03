package stdgo.net.http;
class T_streamReader_static_extension {
    static public function close(_r:T_streamReader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_T_streamReader.T_streamReader>);
        return stdgo._internal.net.http.Http_T_streamReader_static_extension.T_streamReader_static_extension.close(_r);
    }
    static public function read(_r:T_streamReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_T_streamReader.T_streamReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_streamReader_static_extension.T_streamReader_static_extension.read(_r, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
