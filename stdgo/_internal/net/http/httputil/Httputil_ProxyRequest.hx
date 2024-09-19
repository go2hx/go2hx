package stdgo._internal.net.http.httputil;
@:structInit @:using(stdgo._internal.net.http.httputil.Httputil_ProxyRequest_static_extension.ProxyRequest_static_extension) class ProxyRequest {
    public var in_ : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
    public var out : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
    public function new(?in_:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, ?out:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>) {
        if (in_ != null) this.in_ = in_;
        if (out != null) this.out = out;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ProxyRequest(in_, out);
    }
}