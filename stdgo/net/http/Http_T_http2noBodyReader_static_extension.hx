package stdgo.net.http;
class T_http2noBodyReader_static_extension {
    static public function read(_:T_http2noBodyReader, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2noBodyReader_static_extension.T_http2noBodyReader_static_extension.read(_, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_:T_http2noBodyReader):stdgo.Error {
        return stdgo._internal.net.http.Http_T_http2noBodyReader_static_extension.T_http2noBodyReader_static_extension.close(_);
    }
}
