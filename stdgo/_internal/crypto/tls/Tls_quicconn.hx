package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_quicconn_static_extension.QUICConn_static_extension) class QUICConn {
    public var _conn : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>);
    public var _sessionTicketSent : Bool = false;
    public function new(?_conn:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, ?_sessionTicketSent:Bool) {
        if (_conn != null) this._conn = _conn;
        if (_sessionTicketSent != null) this._sessionTicketSent = _sessionTicketSent;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new QUICConn(_conn, _sessionTicketSent);
    }
}
