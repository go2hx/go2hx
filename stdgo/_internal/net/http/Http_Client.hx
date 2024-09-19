package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension) class Client {
    public var transport : stdgo._internal.net.http.Http_RoundTripper.RoundTripper = (null : stdgo._internal.net.http.Http_RoundTripper.RoundTripper);
    public var checkRedirect : (stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>) -> stdgo.Error = null;
    public var jar : stdgo._internal.net.http.Http_CookieJar.CookieJar = (null : stdgo._internal.net.http.Http_CookieJar.CookieJar);
    public var timeout : stdgo._internal.time.Time_Duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration);
    public function new(?transport:stdgo._internal.net.http.Http_RoundTripper.RoundTripper, ?checkRedirect:(stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>) -> stdgo.Error, ?jar:stdgo._internal.net.http.Http_CookieJar.CookieJar, ?timeout:stdgo._internal.time.Time_Duration.Duration) {
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
