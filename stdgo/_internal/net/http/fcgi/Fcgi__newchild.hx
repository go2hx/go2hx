package stdgo._internal.net.http.fcgi;
function _newChild(_rwc:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser, _handler:stdgo._internal.net.http.Http_handler.Handler):stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child> {
        return (stdgo.Go.setRef(({ _conn : stdgo._internal.net.http.fcgi.Fcgi__newconn._newConn(_rwc), _handler : _handler, _requests : (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>>) : stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>>) } : stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child)) : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_child.T_child>);
    }
