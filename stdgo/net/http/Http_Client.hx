package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.Client_static_extension) abstract Client(stdgo._internal.net.http.Http_Client.Client) from stdgo._internal.net.http.Http_Client.Client to stdgo._internal.net.http.Http_Client.Client {
    public var transport(get, set) : RoundTripper;
    function get_transport():RoundTripper return this.transport;
    function set_transport(v:RoundTripper):RoundTripper {
        this.transport = v;
        return v;
    }
    public var checkRedirect(get, set) : (stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>) -> stdgo.Error;
    function get_checkRedirect():(stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>) -> stdgo.Error return (_0, _1) -> this.checkRedirect(_0, [for (i in _1) i]);
    function set_checkRedirect(v:(stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>) -> stdgo.Error):(stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>) -> stdgo.Error {
        this.checkRedirect = v;
        return v;
    }
    public var jar(get, set) : CookieJar;
    function get_jar():CookieJar return this.jar;
    function set_jar(v:CookieJar):CookieJar {
        this.jar = v;
        return v;
    }
    public var timeout(get, set) : stdgo._internal.time.Time_Duration.Duration;
    function get_timeout():stdgo._internal.time.Time_Duration.Duration return this.timeout;
    function set_timeout(v:stdgo._internal.time.Time_Duration.Duration):stdgo._internal.time.Time_Duration.Duration {
        this.timeout = v;
        return v;
    }
    public function new(?transport:RoundTripper, ?checkRedirect:(stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>>) -> stdgo.Error, ?jar:CookieJar, ?timeout:stdgo._internal.time.Time_Duration.Duration) this = new stdgo._internal.net.http.Http_Client.Client(transport, checkRedirect, jar, timeout);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
