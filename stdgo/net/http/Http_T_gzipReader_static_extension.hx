package stdgo.net.http;
class T_gzipReader_static_extension {
    static public function close(_gz:T_gzipReader):stdgo.Error {
        final _gz = (_gz : stdgo.Ref<stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader>);
        return stdgo._internal.net.http.Http_T_gzipReader_static_extension.T_gzipReader_static_extension.close(_gz);
    }
    static public function read(_gz:T_gzipReader, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _gz = (_gz : stdgo.Ref<stdgo._internal.net.http.Http_T_gzipReader.T_gzipReader>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_gzipReader_static_extension.T_gzipReader_static_extension.read(_gz, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
