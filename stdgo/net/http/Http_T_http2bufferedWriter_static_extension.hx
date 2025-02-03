package stdgo.net.http;
class T_http2bufferedWriter_static_extension {
    static public function flush(_w:T_http2bufferedWriter):stdgo.Error {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter>);
        return stdgo._internal.net.http.Http_T_http2bufferedWriter_static_extension.T_http2bufferedWriter_static_extension.flush(_w);
    }
    static public function write(_w:T_http2bufferedWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2bufferedWriter_static_extension.T_http2bufferedWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function available(_w:T_http2bufferedWriter):StdTypes.Int {
        final _w = (_w : stdgo.Ref<stdgo._internal.net.http.Http_T_http2bufferedWriter.T_http2bufferedWriter>);
        return stdgo._internal.net.http.Http_T_http2bufferedWriter_static_extension.T_http2bufferedWriter_static_extension.available(_w);
    }
}
