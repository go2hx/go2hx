package stdgo.net.http.httptrace;
@:structInit @:using(stdgo.net.http.httptrace.Httptrace.GotConnInfo_static_extension) abstract GotConnInfo(stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo) from stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo to stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo {
    public var conn(get, set) : stdgo._internal.net.Net_Conn.Conn;
    function get_conn():stdgo._internal.net.Net_Conn.Conn return this.conn;
    function set_conn(v:stdgo._internal.net.Net_Conn.Conn):stdgo._internal.net.Net_Conn.Conn {
        this.conn = v;
        return v;
    }
    public var reused(get, set) : Bool;
    function get_reused():Bool return this.reused;
    function set_reused(v:Bool):Bool {
        this.reused = v;
        return v;
    }
    public var wasIdle(get, set) : Bool;
    function get_wasIdle():Bool return this.wasIdle;
    function set_wasIdle(v:Bool):Bool {
        this.wasIdle = v;
        return v;
    }
    public var idleTime(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_idleTime():stdgo._internal.time.Time_Duration.Duration return this.idleTime;
    function set_idleTime(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.idleTime = v;
        return v;
    }
    public function new(?conn:stdgo._internal.net.Net_Conn.Conn, ?reused:Bool, ?wasIdle:Bool, ?idleTime:stdgo._internal.time.Time_Duration.Duration) this = new stdgo._internal.net.http.httptrace.Httptrace_GotConnInfo.GotConnInfo(conn, reused, wasIdle, idleTime);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
