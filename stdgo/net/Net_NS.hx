package stdgo.net;
@:structInit @:using(stdgo.net.Net.NS_static_extension) abstract NS(stdgo._internal.net.Net_NS.NS) from stdgo._internal.net.Net_NS.NS to stdgo._internal.net.Net_NS.NS {
    public var host(get, set) : String;
    function get_host():String return this.host;
    function set_host(v:String):String {
        this.host = (v : stdgo.GoString);
        return v;
    }
    public function new(?host:String) this = new stdgo._internal.net.Net_NS.NS((host : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
