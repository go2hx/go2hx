package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_client_static_extension.Client_static_extension) class Client {
    public var transport : stdgo._internal.net.http.Http_roundtripper.RoundTripper = (null : stdgo._internal.net.http.Http_roundtripper.RoundTripper);
    public var checkRedirect : (stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_request.Request>>) -> stdgo.Error = null;
    public var jar : stdgo._internal.net.http.Http_cookiejar.CookieJar = (null : stdgo._internal.net.http.Http_cookiejar.CookieJar);
    public var timeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public function new(?transport:stdgo._internal.net.http.Http_roundtripper.RoundTripper, ?checkRedirect:(stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_request.Request>>) -> stdgo.Error, ?jar:stdgo._internal.net.http.Http_cookiejar.CookieJar, ?timeout:stdgo._internal.time.Time_duration.Duration) {
        if (transport != null) this.transport = transport;
        if (checkRedirect != null) this.checkRedirect = checkRedirect;
        if (jar != null) this.jar = jar;
        if (timeout != null) this.timeout = timeout;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Client(transport, checkRedirect, jar, timeout);
    }
}
