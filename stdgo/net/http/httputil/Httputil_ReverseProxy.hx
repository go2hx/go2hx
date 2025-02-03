package stdgo.net.http.httputil;
@:structInit @:using(stdgo.net.http.httputil.Httputil.ReverseProxy_static_extension) abstract ReverseProxy(stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy) from stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy to stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy {
    public var rewrite(get, set) : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest> -> Void;
    function get_rewrite():stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest> -> Void return _0 -> this.rewrite(_0);
    function set_rewrite(v:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest> -> Void):stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest> -> Void {
        this.rewrite = v;
        return v;
    }
    public var director(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> Void;
    function get_director():stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> Void return _0 -> this.director(_0);
    function set_director(v:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> Void):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> Void {
        this.director = v;
        return v;
    }
    public var transport(get, set) : stdgo._internal.net.http.Http_RoundTripper.RoundTripper;
    function get_transport():stdgo._internal.net.http.Http_RoundTripper.RoundTripper return this.transport;
    function set_transport(v:stdgo._internal.net.http.Http_RoundTripper.RoundTripper):stdgo._internal.net.http.Http_RoundTripper.RoundTripper {
        this.transport = v;
        return v;
    }
    public var flushInterval(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_flushInterval():stdgo._internal.time.Time_Duration.Duration return this.flushInterval;
    function set_flushInterval(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.flushInterval = v;
        return v;
    }
    public var errorLog(get, set) : stdgo._internal.log.Log_Logger.Logger;
    function get_errorLog():stdgo._internal.log.Log_Logger.Logger return this.errorLog;
    function set_errorLog(v:stdgo._internal.log.Log_Logger.Logger):stdgo._internal.log.Log_Logger.Logger {
        this.errorLog = (v : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>);
        return v;
    }
    public var bufferPool(get, set) : BufferPool;
    function get_bufferPool():BufferPool return this.bufferPool;
    function set_bufferPool(v:BufferPool):BufferPool {
        this.bufferPool = v;
        return v;
    }
    public var modifyResponse(get, set) : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> -> stdgo.Error;
    function get_modifyResponse():stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> -> stdgo.Error return _0 -> this.modifyResponse(_0);
    function set_modifyResponse(v:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> -> stdgo.Error):stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> -> stdgo.Error {
        this.modifyResponse = v;
        return v;
    }
    public var errorHandler(get, set) : (stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Error) -> Void;
    function get_errorHandler():(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Error) -> Void return (_0, _1, _2) -> this.errorHandler(_0, _1, _2);
    function set_errorHandler(v:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Error) -> Void):(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Error) -> Void {
        this.errorHandler = v;
        return v;
    }
    public function new(?rewrite:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest> -> Void, ?director:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> -> Void, ?transport:stdgo._internal.net.http.Http_RoundTripper.RoundTripper, ?flushInterval:stdgo._internal.time.Time_Duration.Duration, ?errorLog:stdgo._internal.log.Log_Logger.Logger, ?bufferPool:BufferPool, ?modifyResponse:stdgo.Ref<stdgo._internal.net.http.Http_Response.Response> -> stdgo.Error, ?errorHandler:(stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Error) -> Void) this = new stdgo._internal.net.http.httputil.Httputil_ReverseProxy.ReverseProxy(rewrite, director, transport, flushInterval, (errorLog : stdgo.Ref<stdgo._internal.log.Log_Logger.Logger>), bufferPool, modifyResponse, errorHandler);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
