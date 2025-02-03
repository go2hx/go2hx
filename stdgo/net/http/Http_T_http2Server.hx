package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2Server_static_extension) abstract T_http2Server(stdgo._internal.net.http.Http_T_http2Server.T_http2Server) from stdgo._internal.net.http.Http_T_http2Server.T_http2Server to stdgo._internal.net.http.Http_T_http2Server.T_http2Server {
    public var maxHandlers(get, set) : StdTypes.Int;
    function get_maxHandlers():StdTypes.Int return this.maxHandlers;
    function set_maxHandlers(v:StdTypes.Int):StdTypes.Int {
        this.maxHandlers = (v : stdgo.GoInt);
        return v;
    }
    public var maxConcurrentStreams(get, set) : std.UInt;
    function get_maxConcurrentStreams():std.UInt return this.maxConcurrentStreams;
    function set_maxConcurrentStreams(v:std.UInt):std.UInt {
        this.maxConcurrentStreams = (v : stdgo.GoUInt32);
        return v;
    }
    public var maxDecoderHeaderTableSize(get, set) : std.UInt;
    function get_maxDecoderHeaderTableSize():std.UInt return this.maxDecoderHeaderTableSize;
    function set_maxDecoderHeaderTableSize(v:std.UInt):std.UInt {
        this.maxDecoderHeaderTableSize = (v : stdgo.GoUInt32);
        return v;
    }
    public var maxEncoderHeaderTableSize(get, set) : std.UInt;
    function get_maxEncoderHeaderTableSize():std.UInt return this.maxEncoderHeaderTableSize;
    function set_maxEncoderHeaderTableSize(v:std.UInt):std.UInt {
        this.maxEncoderHeaderTableSize = (v : stdgo.GoUInt32);
        return v;
    }
    public var maxReadFrameSize(get, set) : std.UInt;
    function get_maxReadFrameSize():std.UInt return this.maxReadFrameSize;
    function set_maxReadFrameSize(v:std.UInt):std.UInt {
        this.maxReadFrameSize = (v : stdgo.GoUInt32);
        return v;
    }
    public var permitProhibitedCipherSuites(get, set) : Bool;
    function get_permitProhibitedCipherSuites():Bool return this.permitProhibitedCipherSuites;
    function set_permitProhibitedCipherSuites(v:Bool):Bool {
        this.permitProhibitedCipherSuites = v;
        return v;
    }
    public var idleTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_idleTimeout():stdgo._internal.time.Time_Duration.Duration return this.idleTimeout;
    function set_idleTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.idleTimeout = v;
        return v;
    }
    public var maxUploadBufferPerConnection(get, set) : StdTypes.Int;
    function get_maxUploadBufferPerConnection():StdTypes.Int return this.maxUploadBufferPerConnection;
    function set_maxUploadBufferPerConnection(v:StdTypes.Int):StdTypes.Int {
        this.maxUploadBufferPerConnection = (v : stdgo.GoInt32);
        return v;
    }
    public var maxUploadBufferPerStream(get, set) : StdTypes.Int;
    function get_maxUploadBufferPerStream():StdTypes.Int return this.maxUploadBufferPerStream;
    function set_maxUploadBufferPerStream(v:StdTypes.Int):StdTypes.Int {
        this.maxUploadBufferPerStream = (v : stdgo.GoInt32);
        return v;
    }
    public var newWriteScheduler(get, set) : () -> stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler;
    function get_newWriteScheduler():() -> stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler return () -> this.newWriteScheduler();
    function set_newWriteScheduler(v:() -> stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler):() -> stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler {
        this.newWriteScheduler = v;
        return v;
    }
    public var countError(get, set) : stdgo.GoString -> Void;
    function get_countError():stdgo.GoString -> Void return _0 -> this.countError(_0);
    function set_countError(v:stdgo.GoString -> Void):stdgo.GoString -> Void {
        this.countError = v;
        return v;
    }
    public function new(?maxHandlers:StdTypes.Int, ?maxConcurrentStreams:std.UInt, ?maxDecoderHeaderTableSize:std.UInt, ?maxEncoderHeaderTableSize:std.UInt, ?maxReadFrameSize:std.UInt, ?permitProhibitedCipherSuites:Bool, ?idleTimeout:stdgo._internal.time.Time_Duration.Duration, ?maxUploadBufferPerConnection:StdTypes.Int, ?maxUploadBufferPerStream:StdTypes.Int, ?newWriteScheduler:() -> stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler, ?countError:stdgo.GoString -> Void) this = new stdgo._internal.net.http.Http_T_http2Server.T_http2Server(
(maxHandlers : stdgo.GoInt),
(maxConcurrentStreams : stdgo.GoUInt32),
(maxDecoderHeaderTableSize : stdgo.GoUInt32),
(maxEncoderHeaderTableSize : stdgo.GoUInt32),
(maxReadFrameSize : stdgo.GoUInt32),
permitProhibitedCipherSuites,
idleTimeout,
(maxUploadBufferPerConnection : stdgo.GoInt32),
(maxUploadBufferPerStream : stdgo.GoInt32),
newWriteScheduler,
countError);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
