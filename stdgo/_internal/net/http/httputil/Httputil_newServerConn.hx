package stdgo._internal.net.http.httputil;
function newServerConn(_c:stdgo._internal.net.Net_Conn.Conn, _r:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn> {
        if (_r == null || (_r : Dynamic).__nil__) {
            _r = stdgo._internal.bufio.Bufio_newReader.newReader(_c);
        };
        return (stdgo.Go.setRef(({ _c : _c, _r : _r, _pipereq : ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.GoUInt>) } : stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn)) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ServerConn.ServerConn>);
    }
