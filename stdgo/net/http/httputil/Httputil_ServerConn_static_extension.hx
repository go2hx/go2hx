package stdgo.net.http.httputil;
class ServerConn_static_extension {
    static public function write(_sc:ServerConn, _req:stdgo._internal.net.http.Http_Request.Request, _resp:stdgo._internal.net.http.Http_Response.Response):stdgo.Error {
        final _sc = (_sc : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        final _resp = (_resp : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
        return stdgo._internal.net.http.httputil.Httputil_ServerConn_static_extension.ServerConn_static_extension.write(_sc, _req, _resp);
    }
    static public function pending(_sc:ServerConn):StdTypes.Int {
        final _sc = (_sc : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn>);
        return stdgo._internal.net.http.httputil.Httputil_ServerConn_static_extension.ServerConn_static_extension.pending(_sc);
    }
    static public function read(_sc:ServerConn):stdgo.Tuple<stdgo._internal.net.http.Http_Request.Request, stdgo.Error> {
        final _sc = (_sc : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_ServerConn_static_extension.ServerConn_static_extension.read(_sc);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function close(_sc:ServerConn):stdgo.Error {
        final _sc = (_sc : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn>);
        return stdgo._internal.net.http.httputil.Httputil_ServerConn_static_extension.ServerConn_static_extension.close(_sc);
    }
    static public function hijack(_sc:ServerConn):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.bufio.Bufio_Reader.Reader> {
        final _sc = (_sc : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_ServerConn_static_extension.ServerConn_static_extension.hijack(_sc);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
