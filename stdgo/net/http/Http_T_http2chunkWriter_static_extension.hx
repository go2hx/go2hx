package stdgo.net.http;
class T_http2chunkWriter_static_extension {
    static public function write(_cw:T_http2chunkWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2chunkWriter_static_extension.T_http2chunkWriter_static_extension.write(_cw, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
