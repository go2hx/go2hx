package stdgo._internal.net.http.fcgi;
function _newConn(_rwc:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn> {
        return (stdgo.Go.setRef(({ _rwc : _rwc } : stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn)) : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>);
    }
