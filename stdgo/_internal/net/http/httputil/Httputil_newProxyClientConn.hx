package stdgo._internal.net.http.httputil;
function newProxyClientConn(_c:stdgo._internal.net.Net_Conn.Conn, _r:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ClientConn.ClientConn> {
        var _cc = stdgo._internal.net.http.httputil.Httputil_newClientConn.newClientConn(_c, _r);
        _cc._writeReq = stdgo._internal.net.http.Http_Request.stdgo._internal.net.http.httputil.Httputil_Request_static_extension.Request_static_extension.writeProxy;
        return _cc;
    }
