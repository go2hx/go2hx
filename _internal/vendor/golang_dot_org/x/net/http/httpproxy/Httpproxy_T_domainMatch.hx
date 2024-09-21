package _internal.vendor.golang_dot_org.x.net.http.httpproxy;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.http.httpproxy.Httpproxy_T_domainMatch_static_extension.T_domainMatch_static_extension) class T_domainMatch {
    public var _host : stdgo.GoString = "";
    public var _port : stdgo.GoString = "";
    public var _matchHost : Bool = false;
    public function new(?_host:stdgo.GoString, ?_port:stdgo.GoString, ?_matchHost:Bool) {
        if (_host != null) this._host = _host;
        if (_port != null) this._port = _port;
        if (_matchHost != null) this._matchHost = _matchHost;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_domainMatch(_host, _port, _matchHost);
    }
}
