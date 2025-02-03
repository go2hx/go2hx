package stdgo.net.http.httputil;
@:structInit @:using(stdgo.net.http.httputil.Httputil.ProxyRequest_static_extension) abstract ProxyRequest(stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest) from stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest to stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest {
    public var in_(get, set) : stdgo._internal.net.http.Http_Request.Request;
    function get_in_():stdgo._internal.net.http.Http_Request.Request return this.in_;
    function set_in_(v:stdgo._internal.net.http.Http_Request.Request):stdgo._internal.net.http.Http_Request.Request {
        this.in_ = (v : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return v;
    }
    public var out(get, set) : stdgo._internal.net.http.Http_Request.Request;
    function get_out():stdgo._internal.net.http.Http_Request.Request return this.out;
    function set_out(v:stdgo._internal.net.http.Http_Request.Request):stdgo._internal.net.http.Http_Request.Request {
        this.out = (v : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return v;
    }
    public function new(?in_:stdgo._internal.net.http.Http_Request.Request, ?out:stdgo._internal.net.http.Http_Request.Request) this = new stdgo._internal.net.http.httputil.Httputil_ProxyRequest.ProxyRequest((in_ : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>), (out : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
