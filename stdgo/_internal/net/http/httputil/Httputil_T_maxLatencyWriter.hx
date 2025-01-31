package stdgo._internal.net.http.httputil;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.http.internal.Internal;
import stdgo._internal.net.http.Http;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.textproto.Textproto;
import _internal.golang_dot_org.x.net.http.httpguts.Httpguts;
import stdgo._internal.net.url.Url;
import stdgo._internal.net.Net;
import stdgo._internal.context.Context;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.net.http.httptrace.Httptrace;
import stdgo._internal.mime.Mime;
import stdgo._internal.time.Time;
import stdgo._internal.log.Log;
@:structInit @:using(stdgo._internal.net.http.httputil.Httputil_T_maxLatencyWriter_static_extension.T_maxLatencyWriter_static_extension) class T_maxLatencyWriter {
    public var _dst : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public var _flush : () -> stdgo.Error = null;
    public var _latency : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _t : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
    public var _flushPending : Bool = false;
    public function new(?_dst:stdgo._internal.io.Io_Writer.Writer, ?_flush:() -> stdgo.Error, ?_latency:stdgo._internal.time.Time_Duration.Duration, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_t:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>, ?_flushPending:Bool) {
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
