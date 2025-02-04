package stdgo._internal.net.http.httputil;
@:structInit @:using(stdgo._internal.net.http.httputil.Httputil_t_maxlatencywriter_static_extension.T_maxLatencyWriter_static_extension) class T_maxLatencyWriter {
    public var _dst : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _flush : () -> stdgo.Error = null;
    public var _latency : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _t : stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
    public var _flushPending : Bool = false;
    public function new(?_dst:stdgo._internal.io.Io_writer.Writer, ?_flush:() -> stdgo.Error, ?_latency:stdgo._internal.time.Time_duration.Duration, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_t:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>, ?_flushPending:Bool) {
        if (_dst != null) this._dst = _dst;
        if (_flush != null) this._flush = _flush;
        if (_latency != null) this._latency = _latency;
        if (_mu != null) this._mu = _mu;
        if (_t != null) this._t = _t;
        if (_flushPending != null) this._flushPending = _flushPending;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_maxLatencyWriter(_dst, _flush, _latency, _mu, _t, _flushPending);
    }
}
