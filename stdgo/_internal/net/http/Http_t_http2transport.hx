package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2transport_static_extension.T_http2Transport_static_extension) class T_http2Transport {
    public var dialTLSContext : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = null;
    public var dialTLS : (stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } = null;
    public var tLSClientConfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
    public var connPool : stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool = (null : stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool);
    public var disableCompression : Bool = false;
    public var allowHTTP : Bool = false;
    public var maxHeaderListSize : stdgo.GoUInt32 = 0;
    public var maxReadFrameSize : stdgo.GoUInt32 = 0;
    public var maxDecoderHeaderTableSize : stdgo.GoUInt32 = 0;
    public var maxEncoderHeaderTableSize : stdgo.GoUInt32 = 0;
    public var strictMaxConcurrentStreams : Bool = false;
    public var readIdleTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var pingTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var writeByteTimeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var countError : stdgo.GoString -> Void = null;
    public function new(?dialTLSContext:(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; }, ?dialTLS:(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>) -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; }, ?tLSClientConfig:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>, ?connPool:stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool, ?disableCompression:Bool, ?allowHTTP:Bool, ?maxHeaderListSize:stdgo.GoUInt32, ?maxReadFrameSize:stdgo.GoUInt32, ?maxDecoderHeaderTableSize:stdgo.GoUInt32, ?maxEncoderHeaderTableSize:stdgo.GoUInt32, ?strictMaxConcurrentStreams:Bool, ?readIdleTimeout:stdgo._internal.time.Time_duration.Duration, ?pingTimeout:stdgo._internal.time.Time_duration.Duration, ?writeByteTimeout:stdgo._internal.time.Time_duration.Duration, ?countError:stdgo.GoString -> Void) {
        if (dialTLSContext != null) this.dialTLSContext = dialTLSContext;
        if (dialTLS != null) this.dialTLS = dialTLS;
        if (tLSClientConfig != null) this.tLSClientConfig = tLSClientConfig;
        if (connPool != null) this.connPool = connPool;
        if (disableCompression != null) this.disableCompression = disableCompression;
        if (allowHTTP != null) this.allowHTTP = allowHTTP;
        if (maxHeaderListSize != null) this.maxHeaderListSize = maxHeaderListSize;
        if (maxReadFrameSize != null) this.maxReadFrameSize = maxReadFrameSize;
        if (maxDecoderHeaderTableSize != null) this.maxDecoderHeaderTableSize = maxDecoderHeaderTableSize;
        if (maxEncoderHeaderTableSize != null) this.maxEncoderHeaderTableSize = maxEncoderHeaderTableSize;
        if (strictMaxConcurrentStreams != null) this.strictMaxConcurrentStreams = strictMaxConcurrentStreams;
        if (readIdleTimeout != null) this.readIdleTimeout = readIdleTimeout;
        if (pingTimeout != null) this.pingTimeout = pingTimeout;
        if (writeByteTimeout != null) this.writeByteTimeout = writeByteTimeout;
        if (countError != null) this.countError = countError;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2Transport(
dialTLSContext,
dialTLS,
tLSClientConfig,
connPool,
disableCompression,
allowHTTP,
maxHeaderListSize,
maxReadFrameSize,
maxDecoderHeaderTableSize,
maxEncoderHeaderTableSize,
strictMaxConcurrentStreams,
readIdleTimeout,
pingTimeout,
writeByteTimeout,
countError);
    }
}
