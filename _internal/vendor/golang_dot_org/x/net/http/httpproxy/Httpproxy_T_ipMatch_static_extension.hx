package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy.T_ipMatch_asInterface) class T_ipMatch_static_extension {
    @:keep
    static public function _match( _m:_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_ipMatch.T_ipMatch, _host:stdgo.GoString, _port:stdgo.GoString, _ip:stdgo._internal.net.Net_IP.IP):Bool {
        @:recv var _m:_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_ipMatch.T_ipMatch = _m?.__copy__();
        if (_m._ip.equal(_ip)) {
            return ((_m._port == stdgo.Go.str()) || (_m._port == _port) : Bool);
        };
        return false;
    }
}
