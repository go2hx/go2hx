package stdgo.net;
@:structInit @:using(stdgo.net.Net.UnixAddr_static_extension) abstract UnixAddr(stdgo._internal.net.Net_UnixAddr.UnixAddr) from stdgo._internal.net.Net_UnixAddr.UnixAddr to stdgo._internal.net.Net_UnixAddr.UnixAddr {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var net(get, set) : String;
    function get_net():String return this.net;
    function set_net(v:String):String {
        this.net = (v : stdgo.GoString);
        return v;
    }
    public function new(?name:String, ?net:String) this = new stdgo._internal.net.Net_UnixAddr.UnixAddr((name : stdgo.GoString), (net : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
