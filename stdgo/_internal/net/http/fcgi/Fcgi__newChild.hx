package stdgo._internal.net.http.fcgi;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.os.Os;
import stdgo._internal.net.http.Http;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.http.cgi.Cgi;
import stdgo._internal.context.Context;
function _newChild(_rwc:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser, _handler:stdgo._internal.net.http.Http_Handler.Handler):stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child> {
        return (stdgo.Go.setRef(({ _conn : stdgo._internal.net.http.fcgi.Fcgi__newConn._newConn(_rwc), _handler : _handler, _requests : (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>>) : stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>>) } : stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child)) : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child>);
    }
