package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_Config_static_extension.Config_static_extension) class Config {
    public var httpproxy : stdgo.GoString = "";
    public var httpsproxy : stdgo.GoString = "";
    public var noProxy : stdgo.GoString = "";
    public var cgi : Bool = false;
    public function new(?httpproxy:stdgo.GoString, ?httpsproxy:stdgo.GoString, ?noProxy:stdgo.GoString, ?cgi:Bool) {
        if (httpproxy != null) this.httpproxy = httpproxy;
        if (httpsproxy != null) this.httpsproxy = httpsproxy;
        if (noProxy != null) this.noProxy = noProxy;
        if (cgi != null) this.cgi = cgi;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Config(httpproxy, httpsproxy, noProxy, cgi);
    }
}
