package stdgo.net.http.httputil;
class ClientConn_static_extension {
    static public function do_(_cc:ClientConn, _req:stdgo._internal.net.http.Http_Request.Request):stdgo.Tuple<stdgo._internal.net.http.Http_Response.Response, stdgo.Error> {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_ClientConn_static_extension.ClientConn_static_extension.do_(_cc, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_cc:ClientConn, _req:stdgo._internal.net.http.Http_Request.Request):stdgo.Tuple<stdgo._internal.net.http.Http_Response.Response, stdgo.Error> {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_ClientConn_static_extension.ClientConn_static_extension.read(_cc, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function pending(_cc:ClientConn):StdTypes.Int {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn>);
        return stdgo._internal.net.http.httputil.Httputil_ClientConn_static_extension.ClientConn_static_extension.pending(_cc);
    }
    static public function write(_cc:ClientConn, _req:stdgo._internal.net.http.Http_Request.Request):stdgo.Error {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return stdgo._internal.net.http.httputil.Httputil_ClientConn_static_extension.ClientConn_static_extension.write(_cc, _req);
    }
    static public function close(_cc:ClientConn):stdgo.Error {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn>);
        return stdgo._internal.net.http.httputil.Httputil_ClientConn_static_extension.ClientConn_static_extension.close(_cc);
    }
    static public function hijack(_cc:ClientConn):stdgo.Tuple<stdgo._internal.net.Net_Conn.Conn, stdgo._internal.bufio.Bufio_Reader.Reader> {
        final _cc = (_cc : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn>);
        return {
            final obj = stdgo._internal.net.http.httputil.Httputil_ClientConn_static_extension.ClientConn_static_extension.hijack(_cc);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
