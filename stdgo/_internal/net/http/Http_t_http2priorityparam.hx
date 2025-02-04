package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2priorityparam_static_extension.T_http2PriorityParam_static_extension) class T_http2PriorityParam {
    public var streamDep : stdgo.GoUInt32 = 0;
    public var exclusive : Bool = false;
    public var weight : stdgo.GoUInt8 = 0;
    public function new(?streamDep:stdgo.GoUInt32, ?exclusive:Bool, ?weight:stdgo.GoUInt8) {
        if (streamDep != null) this.streamDep = streamDep;
        if (exclusive != null) this.exclusive = exclusive;
        if (weight != null) this.weight = weight;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2PriorityParam(streamDep, exclusive, weight);
    }
}
