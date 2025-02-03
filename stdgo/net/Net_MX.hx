package stdgo.net;
@:structInit @:using(stdgo.net.Net.MX_static_extension) abstract MX(stdgo._internal.net.Net_MX.MX) from stdgo._internal.net.Net_MX.MX to stdgo._internal.net.Net_MX.MX {
    public var host(get, set) : String;
    function get_host():String return this.host;
    function set_host(v:String):String {
        this.host = (v : stdgo.GoString);
        return v;
    }
    public var pref(get, set) : std.UInt;
    function get_pref():std.UInt return this.pref;
    function set_pref(v:std.UInt):std.UInt {
        this.pref = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?host:String, ?pref:std.UInt) this = new stdgo._internal.net.Net_MX.MX((host : stdgo.GoString), (pref : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
