package stdgo.net;
@:structInit @:using(stdgo.net.Net.SRV_static_extension) abstract SRV(stdgo._internal.net.Net_SRV.SRV) from stdgo._internal.net.Net_SRV.SRV to stdgo._internal.net.Net_SRV.SRV {
    public var target(get, set) : String;
    function get_target():String return this.target;
    function set_target(v:String):String {
        this.target = (v : stdgo.GoString);
        return v;
    }
    public var port(get, set) : std.UInt;
    function get_port():std.UInt return this.port;
    function set_port(v:std.UInt):std.UInt {
        this.port = (v : stdgo.GoUInt16);
        return v;
    }
    public var priority(get, set) : std.UInt;
    function get_priority():std.UInt return this.priority;
    function set_priority(v:std.UInt):std.UInt {
        this.priority = (v : stdgo.GoUInt16);
        return v;
    }
    public var weight(get, set) : std.UInt;
    function get_weight():std.UInt return this.weight;
    function set_weight(v:std.UInt):std.UInt {
        this.weight = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?target:String, ?port:std.UInt, ?priority:std.UInt, ?weight:std.UInt) this = new stdgo._internal.net.Net_SRV.SRV((target : stdgo.GoString), (port : stdgo.GoUInt16), (priority : stdgo.GoUInt16), (weight : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
