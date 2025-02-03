package stdgo.net.http.fcgi;
@:structInit @:using(stdgo.net.http.fcgi.Fcgi.T_child_static_extension) abstract T_child(stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child) from stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child to stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child {
    public var _conn(get, set) : T_conn;
    function get__conn():T_conn return this._conn;
    function set__conn(v:T_conn):T_conn {
        this._conn = (v : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>);
        return v;
    }
    public var _handler(get, set) : stdgo._internal.net.http.Http_Handler.Handler;
    function get__handler():stdgo._internal.net.http.Http_Handler.Handler return this._handler;
    function set__handler(v:stdgo._internal.net.http.Http_Handler.Handler):stdgo._internal.net.http.Http_Handler.Handler {
        this._handler = v;
        return v;
    }
    public var _requests(get, set) : stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>>;
    function get__requests():stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>> return this._requests;
    function set__requests(v:stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>>):stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>> {
        this._requests = (v : stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>>);
        return v;
    }
    public function new(?_conn:T_conn, ?_handler:stdgo._internal.net.http.Http_Handler.Handler, ?_requests:stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>>) this = new stdgo._internal.net.http.fcgi.Fcgi_T_child.T_child((_conn : stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_conn.T_conn>), _handler, (_requests : stdgo.GoMap<stdgo.GoUInt16, stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_request.T_request>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
