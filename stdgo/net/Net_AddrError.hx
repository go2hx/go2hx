package stdgo.net;
@:structInit @:using(stdgo.net.Net.AddrError_static_extension) abstract AddrError(stdgo._internal.net.Net_AddrError.AddrError) from stdgo._internal.net.Net_AddrError.AddrError to stdgo._internal.net.Net_AddrError.AddrError {
    public var err(get, set) : String;
    function get_err():String return this.err;
    function set_err(v:String):String {
        this.err = (v : stdgo.GoString);
        return v;
    }
    public var addr(get, set) : String;
    function get_addr():String return this.addr;
    function set_addr(v:String):String {
        this.addr = (v : stdgo.GoString);
        return v;
    }
    public function new(?err:String, ?addr:String) this = new stdgo._internal.net.Net_AddrError.AddrError((err : stdgo.GoString), (addr : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
