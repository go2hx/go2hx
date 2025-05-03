package stdgo._internal.net.http.httputil;
function newClientConn(_c:stdgo._internal.net.Net_conn.Conn, _r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn> {
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L249"
        if (({
            final value = _r;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _r = stdgo._internal.bufio.Bufio_newreader.newReader(_c);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/httputil/persist.go#L252"
        return (stdgo.Go.setRef(({ _c : _c, _r : _r, _pipereq : ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.GoUInt>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.GoUInt>), _writeReq : stdgo._internal.net.http.Http_request_static_extension.Request_static_extension.write } : stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn)) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_clientconn.ClientConn>);
    }
