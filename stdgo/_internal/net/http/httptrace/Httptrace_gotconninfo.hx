package stdgo._internal.net.http.httptrace;
@:structInit @:using(stdgo._internal.net.http.httptrace.Httptrace_gotconninfo_static_extension.GotConnInfo_static_extension) class GotConnInfo {
    public var conn : stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
    public var reused : Bool = false;
    public var wasIdle : Bool = false;
    public var idleTime : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public function new(?conn:stdgo._internal.net.Net_conn.Conn, ?reused:Bool, ?wasIdle:Bool, ?idleTime:stdgo._internal.time.Time_duration.Duration) {
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
