package stdgo._internal.net.http.httputil;
function newProxyClientConn(_c:stdgo._internal.net.Net_conn.Conn, _r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn> {
        var _cc = stdgo._internal.net.http.httputil.Httputil_newclientconn.newClientConn(_c, _r);
        (@:checkr _cc ?? throw "null pointer dereference")._writeReq = stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.writeProxy;
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L268"
        return _cc;
    }
