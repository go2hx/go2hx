package stdgo._internal.net.http.httptrace;
@:structInit class GotConnInfo {
    public var conn : stdgo._internal.net.Net_Conn.Conn = (null : stdgo._internal.net.Net_Conn.Conn);
    public var reused : Bool = false;
    public var wasIdle : Bool = false;
    public var idleTime : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public function new(?conn:stdgo._internal.net.Net_Conn.Conn, ?reused:Bool, ?wasIdle:Bool, ?idleTime:stdgo._internal.time.Time_Duration.Duration) {
        if (conn != null) this.conn = conn;
        if (reused != null) this.reused = reused;
        if (wasIdle != null) this.wasIdle = wasIdle;
        if (idleTime != null) this.idleTime = idleTime;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GotConnInfo(conn, reused, wasIdle, idleTime);
    }
}
