package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2HeadersFrame_static_extension) abstract T_http2HeadersFrame(stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame) from stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame to stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame {
    public var priority(get, set) : T_http2PriorityParam;
    function get_priority():T_http2PriorityParam return this.priority;
    function set_priority(v:T_http2PriorityParam):T_http2PriorityParam {
        this.priority = v;
        return v;
    }
    public function new(?priority:T_http2PriorityParam) this = new stdgo._internal.net.http.Http_T_http2HeadersFrame.T_http2HeadersFrame(priority);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
