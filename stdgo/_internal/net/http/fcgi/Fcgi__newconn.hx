package stdgo._internal.net.http.fcgi;
function _newConn(_rwc:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn> {
        //"file:///home/runner/.go/go1.21.3/src/net/http/fcgi/fcgi.go#L113"
        return (stdgo.Go.setRef(({ _rwc : _rwc } : stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn)) : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_conn.T_conn>);
    }
