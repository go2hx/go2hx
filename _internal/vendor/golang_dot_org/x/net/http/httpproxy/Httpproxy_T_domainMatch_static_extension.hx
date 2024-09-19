package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy.T_domainMatch_asInterface) class T_domainMatch_static_extension {
    @:keep
    static public function _match( _m:_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_domainMatch.T_domainMatch, _host:stdgo.GoString, _port:stdgo.GoString, _ip:stdgo._internal.net.Net_IP.IP):Bool {
        @:recv var _m:_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_domainMatch.T_domainMatch = _m?.__copy__();
        if ((stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_host?.__copy__(), _m._host?.__copy__()) || ((_m._matchHost && (_host == (_m._host.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)) : Bool)) : Bool)) {
            return ((_m._port == stdgo.Go.str()) || (_m._port == _port) : Bool);
        };
        return false;
    }
}
