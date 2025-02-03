package stdgo.net.http.httputil;
@:structInit @:using(stdgo.net.http.httputil.Httputil.T_maxLatencyWriter_static_extension) abstract T_maxLatencyWriter(stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter) from stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter to stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter {
    public var _dst(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__dst():stdgo._internal.io.Io_Writer.Writer return this._dst;
    function set__dst(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._dst = v;
        return v;
    }
    public var _flush(get, set) : () -> stdgo.Error;
    function get__flush():() -> stdgo.Error return () -> this._flush();
    function set__flush(v:() -> stdgo.Error):() -> stdgo.Error {
        this._flush = v;
        return v;
    }
    public var _latency(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get__latency():stdgo._internal.time.Time_Duration.Duration return this._latency;
    function set__latency(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this._latency = v;
        return v;
    }
    public var _mu(get, set) : stdgo._internal.sync.Sync_Mutex.Mutex;
    function get__mu():stdgo._internal.sync.Sync_Mutex.Mutex return this._mu;
    function set__mu(v:stdgo._internal.sync.Sync_Mutex.Mutex):stdgo._internal.sync.Sync_Mutex.Mutex {
        this._mu = v;
        return v;
    }
    public var _t(get, set) : stdgo._internal.time.Time_Timer.Timer;
    function get__t():stdgo._internal.time.Time_Timer.Timer return this._t;
    function set__t(v:stdgo._internal.time.Time_Timer.Timer):stdgo._internal.time.Time_Timer.Timer {
        this._t = (v : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
        return v;
    }
    public var _flushPending(get, set) : Bool;
    function get__flushPending():Bool return this._flushPending;
    function set__flushPending(v:Bool):Bool {
        this._flushPending = v;
        return v;
    }
    public function new(?_dst:stdgo._internal.io.Io_Writer.Writer, ?_flush:() -> stdgo.Error, ?_latency:stdgo._internal.time.Time_Duration.Duration, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_t:stdgo._internal.time.Time_Timer.Timer, ?_flushPending:Bool) this = new stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter.T_maxLatencyWriter(_dst, _flush, _latency, _mu, (_t : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>), _flushPending);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
