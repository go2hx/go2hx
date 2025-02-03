package stdgo.net;
@:structInit @:using(stdgo.net.Net.IPAddr_static_extension) abstract IPAddr(stdgo._internal.net.Net_IPAddr.IPAddr) from stdgo._internal.net.Net_IPAddr.IPAddr to stdgo._internal.net.Net_IPAddr.IPAddr {
    public var iP(get, set) : IP;
    function get_iP():IP return this.iP;
    function set_iP(v:IP):IP {
        this.iP = v;
        return v;
    }
    public var zone(get, set) : String;
    function get_zone():String return this.zone;
    function set_zone(v:String):String {
        this.zone = (v : stdgo.GoString);
        return v;
    }
    public function new(?iP:IP, ?zone:String) this = new stdgo._internal.net.Net_IPAddr.IPAddr(iP, (zone : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
