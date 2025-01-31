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
@:structInit @:using(stdgo._internal.net.http.fcgi.Fcgi_T_child_static_extension.T_child_static_extension) class T_child {
    public var _conn : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn> = (null : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>);
    public var _handler : stdgo._internal.net.http.Http_Handler.Handler = (null : stdgo._internal.net.http.Http_Handler.Handler);
    public var _requests : stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>> = (null : stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>>);
    public function new(?_conn:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>, ?_handler:stdgo._internal.net.http.Http_Handler.Handler, ?_requests:stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>>) {
        if (_conn != null) this._conn = _conn;
        if (_handler != null) this._handler = _handler;
        if (_requests != null) this._requests = _requests;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_child(_conn, _handler, _requests);
    }
}
