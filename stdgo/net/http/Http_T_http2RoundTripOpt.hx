package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2RoundTripOpt_static_extension) abstract T_http2RoundTripOpt(stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt) from stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt to stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt {
    public var onlyCachedConn(get, set) : Bool;
    function get_onlyCachedConn():Bool return this.onlyCachedConn;
    function set_onlyCachedConn(v:Bool):Bool {
        this.onlyCachedConn = v;
        return v;
    }
    public function new(?onlyCachedConn:Bool) this = new stdgo._internal.net.http.Http_T_http2RoundTripOpt.T_http2RoundTripOpt(onlyCachedConn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
