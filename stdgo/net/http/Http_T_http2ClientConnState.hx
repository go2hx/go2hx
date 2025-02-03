package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2ClientConnState_static_extension) abstract T_http2ClientConnState(stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState) from stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState to stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState {
    public var closed(get, set) : Bool;
    function get_closed():Bool return this.closed;
    function set_closed(v:Bool):Bool {
        this.closed = v;
        return v;
    }
    public var closing(get, set) : Bool;
    function get_closing():Bool return this.closing;
    function set_closing(v:Bool):Bool {
        this.closing = v;
        return v;
    }
    public var streamsActive(get, set) : StdTypes.Int;
    function get_streamsActive():StdTypes.Int return this.streamsActive;
    function set_streamsActive(v:StdTypes.Int):StdTypes.Int {
        this.streamsActive = (v : stdgo.GoInt);
        return v;
    }
    public var streamsReserved(get, set) : StdTypes.Int;
    function get_streamsReserved():StdTypes.Int return this.streamsReserved;
    function set_streamsReserved(v:StdTypes.Int):StdTypes.Int {
        this.streamsReserved = (v : stdgo.GoInt);
        return v;
    }
    public var streamsPending(get, set) : StdTypes.Int;
    function get_streamsPending():StdTypes.Int return this.streamsPending;
    function set_streamsPending(v:StdTypes.Int):StdTypes.Int {
        this.streamsPending = (v : stdgo.GoInt);
        return v;
    }
    public var maxConcurrentStreams(get, set) : std.UInt;
    function get_maxConcurrentStreams():std.UInt return this.maxConcurrentStreams;
    function set_maxConcurrentStreams(v:std.UInt):std.UInt {
        this.maxConcurrentStreams = (v : stdgo.GoUInt32);
        return v;
    }
    public var lastIdle(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_lastIdle():stdgo._internal.time.Time_Time.Time return this.lastIdle;
    function set_lastIdle(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.lastIdle = v;
        return v;
    }
    public function new(?closed:Bool, ?closing:Bool, ?streamsActive:StdTypes.Int, ?streamsReserved:StdTypes.Int, ?streamsPending:StdTypes.Int, ?maxConcurrentStreams:std.UInt, ?lastIdle:stdgo._internal.time.Time_Time.Time) this = new stdgo._internal.net.http.Http_T_http2ClientConnState.T_http2ClientConnState(closed, closing, (streamsActive : stdgo.GoInt), (streamsReserved : stdgo.GoInt), (streamsPending : stdgo.GoInt), (maxConcurrentStreams : stdgo.GoUInt32), lastIdle);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
