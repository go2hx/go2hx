package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_srv_static_extension.SRV_static_extension) class SRV {
    public var target : stdgo.GoString = "";
    public var port : stdgo.GoUInt16 = 0;
    public var priority : stdgo.GoUInt16 = 0;
    public var weight : stdgo.GoUInt16 = 0;
    public function new(?target:stdgo.GoString, ?port:stdgo.GoUInt16, ?priority:stdgo.GoUInt16, ?weight:stdgo.GoUInt16) {
        if (target != null) this.target = target;
        if (port != null) this.port = port;
        if (priority != null) this.priority = priority;
        if (weight != null) this.weight = weight;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SRV(target, port, priority, weight);
    }
}
