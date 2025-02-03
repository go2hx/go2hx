package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.QUICConn_static_extension) abstract QUICConn(stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn) from stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn to stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn {
    public var _conn(get, set) : Conn;
    function get__conn():Conn return this._conn;
    function set__conn(v:Conn):Conn {
        this._conn = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>);
        return v;
    }
    public var _sessionTicketSent(get, set) : Bool;
    function get__sessionTicketSent():Bool return this._sessionTicketSent;
    function set__sessionTicketSent(v:Bool):Bool {
        this._sessionTicketSent = v;
        return v;
    }
    public function new(?_conn:Conn, ?_sessionTicketSent:Bool) this = new stdgo._internal.crypto.tls.Tls_QUICConn.QUICConn((_conn : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Conn.Conn>), _sessionTicketSent);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
