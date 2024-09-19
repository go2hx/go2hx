package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_cidrMatch_static_extension.T_cidrMatch_static_extension) class T_cidrMatch {
    public var _cidr : stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet> = (null : stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>);
    public function new(?_cidr:stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>) {
        if (_cidr != null) this._cidr = _cidr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cidrMatch(_cidr);
    }
}
