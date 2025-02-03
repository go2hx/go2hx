package stdgo.net.http;
@:structInit @:using(stdgo.net.http.Http.T_socksAddr_static_extension) abstract T_socksAddr(stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr) from stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr to stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var iP(get, set) : stdgo._internal.net.Net_IP.IP;
    function get_iP():stdgo._internal.net.Net_IP.IP return this.iP;
    function set_iP(v:stdgo._internal.net.Net_IP.IP):stdgo._internal.net.Net_IP.IP {
        this.iP = v;
        return v;
    }
    public var port(get, set) : StdTypes.Int;
    function get_port():StdTypes.Int return this.port;
    function set_port(v:StdTypes.Int):StdTypes.Int {
        this.port = (v : stdgo.GoInt);
        return v;
    }
    public function new(?name:String, ?iP:stdgo._internal.net.Net_IP.IP, ?port:StdTypes.Int) this = new stdgo._internal.net.http.Http_T_socksAddr.T_socksAddr((name : stdgo.GoString), iP, (port : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
