package stdgo.net;
@:structInit @:using(stdgo.net.Net.UDPAddr_static_extension) abstract UDPAddr(stdgo._internal.net.Net_UDPAddr.UDPAddr) from stdgo._internal.net.Net_UDPAddr.UDPAddr to stdgo._internal.net.Net_UDPAddr.UDPAddr {
    public var iP(get, set) : IP;
    function get_iP():IP return this.iP;
    function set_iP(v:IP):IP {
        this.iP = v;
        return v;
    }
    public var port(get, set) : StdTypes.Int;
    function get_port():StdTypes.Int return this.port;
    function set_port(v:StdTypes.Int):StdTypes.Int {
        this.port = (v : stdgo.GoInt);
        return v;
    }
    public var zone(get, set) : String;
    function get_zone():String return this.zone;
    function set_zone(v:String):String {
        this.zone = (v : stdgo.GoString);
        return v;
    }
    public function new(?iP:IP, ?port:StdTypes.Int, ?zone:String) this = new stdgo._internal.net.Net_UDPAddr.UDPAddr(iP, (port : stdgo.GoInt), (zone : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
