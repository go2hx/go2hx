package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2clientconnstate_static_extension.T_http2ClientConnState_static_extension) class T_http2ClientConnState {
    public var closed : Bool = false;
    public var closing : Bool = false;
    public var streamsActive : stdgo.GoInt = 0;
    public var streamsReserved : stdgo.GoInt = 0;
    public var streamsPending : stdgo.GoInt = 0;
    public var maxConcurrentStreams : stdgo.GoUInt32 = 0;
    public var lastIdle : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public function new(?closed:Bool, ?closing:Bool, ?streamsActive:stdgo.GoInt, ?streamsReserved:stdgo.GoInt, ?streamsPending:stdgo.GoInt, ?maxConcurrentStreams:stdgo.GoUInt32, ?lastIdle:stdgo._internal.time.Time_time.Time) {
        if (closed != null) this.closed = closed;
        if (closing != null) this.closing = closing;
        if (streamsActive != null) this.streamsActive = streamsActive;
        if (streamsReserved != null) this.streamsReserved = streamsReserved;
        if (streamsPending != null) this.streamsPending = streamsPending;
        if (maxConcurrentStreams != null) this.maxConcurrentStreams = maxConcurrentStreams;
        if (lastIdle != null) this.lastIdle = lastIdle;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2ClientConnState(closed, closing, streamsActive, streamsReserved, streamsPending, maxConcurrentStreams, lastIdle);
    }
}
