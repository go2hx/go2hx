package stdgo._internal.net.http.httputil;
function newServerConn(_c:stdgo._internal.net.Net_conn.Conn, _r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn> {
        if ((_r == null || (_r : Dynamic).__nil__)) {
            _r = stdgo._internal.bufio.Bufio_newreader.newReader(_c);
        };
        return (stdgo.Go.setRef(({ _c : _c, _r : _r, _pipereq : ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.GoUInt>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.GoUInt>) } : stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn)) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_serverconn.ServerConn>);
    }
