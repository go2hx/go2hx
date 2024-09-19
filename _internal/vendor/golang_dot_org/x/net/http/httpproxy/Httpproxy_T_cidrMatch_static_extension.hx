package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy.T_cidrMatch_asInterface) class T_cidrMatch_static_extension {
    @:keep
    static public function _match( _m:_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_cidrMatch.T_cidrMatch, _host:stdgo.GoString, _port:stdgo.GoString, _ip:stdgo._internal.net.Net_IP.IP):Bool {
        @:recv var _m:_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_cidrMatch.T_cidrMatch = _m?.__copy__();
        return _m._cidr.contains(_ip);
    }
}
