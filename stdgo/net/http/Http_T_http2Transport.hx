package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2Transport_static_extension) abstract T_http2Transport(stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport) from stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport to stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport {
    public var dialTLSContext(get, set) : (stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    function get_dialTLSContext():(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return (_0, _1, _2, _3) -> this.dialTLSContext(_0, _1, _2, _3);
    function set_dialTLSContext(v:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }):(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        this.dialTLSContext = v;
        return v;
    }
    public var dialTLS(get, set) : (stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; };
    function get_dialTLS():(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } return (_0, _1, _2) -> this.dialTLS(_0, _1, _2);
    function set_dialTLS(v:(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }):(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; } {
        this.dialTLS = v;
        return v;
    }
    public var tLSClientConfig(get, set) : stdgo._internal.crypto.tls.Tls_Config.Config;
    function get_tLSClientConfig():stdgo._internal.crypto.tls.Tls_Config.Config return this.tLSClientConfig;
    function set_tLSClientConfig(v:stdgo._internal.crypto.tls.Tls_Config.Config):stdgo._internal.crypto.tls.Tls_Config.Config {
        this.tLSClientConfig = (v : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>);
        return v;
    }
    public var connPool(get, set) : T_http2ClientConnPool;
    function get_connPool():T_http2ClientConnPool return this.connPool;
    function set_connPool(v:T_http2ClientConnPool):T_http2ClientConnPool {
        this.connPool = v;
        return v;
    }
    public var disableCompression(get, set) : Bool;
    function get_disableCompression():Bool return this.disableCompression;
    function set_disableCompression(v:Bool):Bool {
        this.disableCompression = v;
        return v;
    }
    public var allowHTTP(get, set) : Bool;
    function get_allowHTTP():Bool return this.allowHTTP;
    function set_allowHTTP(v:Bool):Bool {
        this.allowHTTP = v;
        return v;
    }
    public var maxHeaderListSize(get, set) : std.UInt;
    function get_maxHeaderListSize():std.UInt return this.maxHeaderListSize;
    function set_maxHeaderListSize(v:std.UInt):std.UInt {
        this.maxHeaderListSize = (v : stdgo.GoUInt32);
        return v;
    }
    public var maxReadFrameSize(get, set) : std.UInt;
    function get_maxReadFrameSize():std.UInt return this.maxReadFrameSize;
    function set_maxReadFrameSize(v:std.UInt):std.UInt {
        this.maxReadFrameSize = (v : stdgo.GoUInt32);
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
    public var strictMaxConcurrentStreams(get, set) : Bool;
    function get_strictMaxConcurrentStreams():Bool return this.strictMaxConcurrentStreams;
    function set_strictMaxConcurrentStreams(v:Bool):Bool {
        this.strictMaxConcurrentStreams = v;
        return v;
    }
    public var readIdleTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_readIdleTimeout():stdgo._internal.time.Time_Duration.Duration return this.readIdleTimeout;
    function set_readIdleTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.readIdleTimeout = v;
        return v;
    }
    public var pingTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_pingTimeout():stdgo._internal.time.Time_Duration.Duration return this.pingTimeout;
    function set_pingTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.pingTimeout = v;
        return v;
    }
    public var writeByteTimeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_writeByteTimeout():stdgo._internal.time.Time_Duration.Duration return this.writeByteTimeout;
    function set_writeByteTimeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.writeByteTimeout = v;
        return v;
    }
    public var countError(get, set) : stdgo.GoString -> Void;
    function get_countError():stdgo.GoString -> Void return _0 -> this.countError(_0);
    function set_countError(v:stdgo.GoString -> Void):stdgo.GoString -> Void {
        this.countError = v;
        return v;
    }
    public function new(?dialTLSContext:(stdgo._internal.context.Context_Context.Context, stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?dialTLS:(stdgo.GoString, stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>) -> { var _0 : stdgo._internal.net.Net_Conn.Conn; var _1 : stdgo.Error; }, ?tLSClientConfig:stdgo._internal.crypto.tls.Tls_Config.Config, ?connPool:T_http2ClientConnPool, ?disableCompression:Bool, ?allowHTTP:Bool, ?maxHeaderListSize:std.UInt, ?maxReadFrameSize:std.UInt, ?maxDecoderHeaderTableSize:std.UInt, ?maxEncoderHeaderTableSize:std.UInt, ?strictMaxConcurrentStreams:Bool, ?readIdleTimeout:stdgo._internal.time.Time_Duration.Duration, ?pingTimeout:stdgo._internal.time.Time_Duration.Duration, ?writeByteTimeout:stdgo._internal.time.Time_Duration.Duration, ?countError:stdgo.GoString -> Void) this = new stdgo._internal.net.http.Http_T_http2Transport.T_http2Transport(
dialTLSContext,
dialTLS,
(tLSClientConfig : stdgo.Ref<stdgo._internal.crypto.tls.Tls_Config.Config>),
connPool,
disableCompression,
allowHTTP,
(maxHeaderListSize : stdgo.GoUInt32),
(maxReadFrameSize : stdgo.GoUInt32),
(maxDecoderHeaderTableSize : stdgo.GoUInt32),
(maxEncoderHeaderTableSize : stdgo.GoUInt32),
strictMaxConcurrentStreams,
readIdleTimeout,
pingTimeout,
writeByteTimeout,
countError);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
