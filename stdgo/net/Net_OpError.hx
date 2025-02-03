package stdgo.net;
@:structInit @:using(stdgo.net.Net.OpError_static_extension) abstract OpError(stdgo._internal.net.Net_OpError.OpError) from stdgo._internal.net.Net_OpError.OpError to stdgo._internal.net.Net_OpError.OpError {
    public var op(get, set) : String;
    function get_op():String return this.op;
    function set_op(v:String):String {
        this.op = (v : stdgo.GoString);
        return v;
    }
    public var net(get, set) : String;
    function get_net():String return this.net;
    function set_net(v:String):String {
        this.net = (v : stdgo.GoString);
        return v;
    }
    public var source(get, set) : Addr;
    function get_source():Addr return this.source;
    function set_source(v:Addr):Addr {
        this.source = v;
        return v;
    }
    public var addr(get, set) : Addr;
    function get_addr():Addr return this.addr;
    function set_addr(v:Addr):Addr {
        this.addr = v;
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?op:String, ?net:String, ?source:Addr, ?addr:Addr, ?err:stdgo.Error) this = new stdgo._internal.net.Net_OpError.OpError((op : stdgo.GoString), (net : stdgo.GoString), source, addr, (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
