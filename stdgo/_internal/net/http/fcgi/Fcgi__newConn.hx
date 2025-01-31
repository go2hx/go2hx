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
function _newConn(_rwc:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn> {
        return (stdgo.Go.setRef(({ _rwc : _rwc } : stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn)) : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>);
    }
