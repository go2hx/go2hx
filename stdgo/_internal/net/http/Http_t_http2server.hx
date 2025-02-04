package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2server_static_extension.T_http2Server_static_extension) class T_http2Server {
    public var maxHandlers : stdgo.GoInt = 0;
    public var maxConcurrentStreams : stdgo.GoUInt32 = 0;
    public var maxDecoderHeaderTableSize : stdgo.GoUInt32 = 0;
    public var maxEncoderHeaderTableSize : stdgo.GoUInt32 = 0;
    public var maxReadFrameSize : stdgo.GoUInt32 = 0;
    public var permitProhibitedCipherSuites : Bool = false;
    public var idleTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var maxUploadBufferPerConnection : stdgo.GoInt32 = 0;
    public var maxUploadBufferPerStream : stdgo.GoInt32 = 0;
    public var newWriteScheduler : () -> stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler = null;
    public var countError : stdgo.GoString -> Void = null;
    public function new(?maxHandlers:stdgo.GoInt, ?maxConcurrentStreams:stdgo.GoUInt32, ?maxDecoderHeaderTableSize:stdgo.GoUInt32, ?maxEncoderHeaderTableSize:stdgo.GoUInt32, ?maxReadFrameSize:stdgo.GoUInt32, ?permitProhibitedCipherSuites:Bool, ?idleTimeout:stdgo._internal.time.Time_duration.Duration, ?maxUploadBufferPerConnection:stdgo.GoInt32, ?maxUploadBufferPerStream:stdgo.GoInt32, ?newWriteScheduler:() -> stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler, ?countError:stdgo.GoString -> Void) {
        if (maxHandlers != null) this.maxHandlers = maxHandlers;
        if (maxConcurrentStreams != null) this.maxConcurrentStreams = maxConcurrentStreams;
        if (maxDecoderHeaderTableSize != null) this.maxDecoderHeaderTableSize = maxDecoderHeaderTableSize;
        if (maxEncoderHeaderTableSize != null) this.maxEncoderHeaderTableSize = maxEncoderHeaderTableSize;
        if (maxReadFrameSize != null) this.maxReadFrameSize = maxReadFrameSize;
        if (permitProhibitedCipherSuites != null) this.permitProhibitedCipherSuites = permitProhibitedCipherSuites;
        if (idleTimeout != null) this.idleTimeout = idleTimeout;
        if (maxUploadBufferPerConnection != null) this.maxUploadBufferPerConnection = maxUploadBufferPerConnection;
        if (maxUploadBufferPerStream != null) this.maxUploadBufferPerStream = maxUploadBufferPerStream;
        if (newWriteScheduler != null) this.newWriteScheduler = newWriteScheduler;
        if (countError != null) this.countError = countError;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2Server(
maxHandlers,
maxConcurrentStreams,
maxDecoderHeaderTableSize,
maxEncoderHeaderTableSize,
maxReadFrameSize,
permitProhibitedCipherSuites,
idleTimeout,
maxUploadBufferPerConnection,
maxUploadBufferPerStream,
newWriteScheduler,
countError);
    }
}
