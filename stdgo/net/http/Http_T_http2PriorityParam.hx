package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_http2PriorityParam_static_extension) abstract T_http2PriorityParam(stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam) from stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam to stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam {
    public var streamDep(get, set) : std.UInt;
    function get_streamDep():std.UInt return this.streamDep;
    function set_streamDep(v:std.UInt):std.UInt {
        this.streamDep = (v : stdgo.GoUInt32);
        return v;
    }
    public var exclusive(get, set) : Bool;
    function get_exclusive():Bool return this.exclusive;
    function set_exclusive(v:Bool):Bool {
        this.exclusive = v;
        return v;
    }
    public var weight(get, set) : std.UInt;
    function get_weight():std.UInt return this.weight;
    function set_weight(v:std.UInt):std.UInt {
        this.weight = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?streamDep:std.UInt, ?exclusive:Bool, ?weight:std.UInt) this = new stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam((streamDep : stdgo.GoUInt32), exclusive, (weight : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
