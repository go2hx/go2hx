package stdgo._internal.net.http.httputil;
@:structInit @:using(stdgo._internal.net.http.httputil.Httputil_reverseproxy_static_extension.ReverseProxy_static_extension) class ReverseProxy {
    public var rewrite : stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_proxyrequest.ProxyRequest> -> Void = null;
    public var director : stdgo.Ref<stdgo._internal.net.http.Http_request.Request> -> Void = null;
    public var transport : stdgo._internal.net.http.Http_roundtripper.RoundTripper = (null : stdgo._internal.net.http.Http_roundtripper.RoundTripper);
    public var flushInterval : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var errorLog : stdgo.Ref<stdgo._internal.log.Log_logger.Logger> = (null : stdgo.Ref<stdgo._internal.log.Log_logger.Logger>);
    public var bufferPool : stdgo._internal.net.http.httputil.Httputil_bufferpool.BufferPool = (null : stdgo._internal.net.http.httputil.Httputil_bufferpool.BufferPool);
    public var modifyResponse : stdgo.Ref<stdgo._internal.net.http.Http_response.Response> -> stdgo.Error = null;
    public var errorHandler : (stdgo._internal.net.http.Http_responsewriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.Error) -> Void = null;
    public function new(?rewrite:stdgo.Ref<stdgo._internal.net.http.httputil.Httputil_proxyrequest.ProxyRequest> -> Void, ?director:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> -> Void, ?transport:stdgo._internal.net.http.Http_roundtripper.RoundTripper, ?flushInterval:stdgo._internal.time.Time_duration.Duration, ?errorLog:stdgo.Ref<stdgo._internal.log.Log_logger.Logger>, ?bufferPool:stdgo._internal.net.http.httputil.Httputil_bufferpool.BufferPool, ?modifyResponse:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> -> stdgo.Error, ?errorHandler:(stdgo._internal.net.http.Http_responsewriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.Error) -> Void) {
        if (rewrite != null) this.rewrite = rewrite;
        if (director != null) this.director = director;
        if (transport != null) this.transport = transport;
        if (flushInterval != null) this.flushInterval = flushInterval;
        if (errorLog != null) this.errorLog = errorLog;
        if (bufferPool != null) this.bufferPool = bufferPool;
        if (modifyResponse != null) this.modifyResponse = modifyResponse;
        if (errorHandler != null) this.errorHandler = errorHandler;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ReverseProxy(rewrite, director, transport, flushInterval, errorLog, bufferPool, modifyResponse, errorHandler);
    }
}
