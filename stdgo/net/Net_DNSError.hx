package stdgo.net;
@:structInit @:using(stdgo.net.Net.DNSError_static_extension) abstract DNSError(stdgo._internal.net.Net_DNSError.DNSError) from stdgo._internal.net.Net_DNSError.DNSError to stdgo._internal.net.Net_DNSError.DNSError {
    public var err(get, set) : String;
    function get_err():String return this.err;
    function set_err(v:String):String {
        this.err = (v : stdgo.GoString);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var server(get, set) : String;
    function get_server():String return this.server;
    function set_server(v:String):String {
        this.server = (v : stdgo.GoString);
        return v;
    }
    public var isTimeout(get, set) : Bool;
    function get_isTimeout():Bool return this.isTimeout;
    function set_isTimeout(v:Bool):Bool {
        this.isTimeout = v;
        return v;
    }
    public var isTemporary(get, set) : Bool;
    function get_isTemporary():Bool return this.isTemporary;
    function set_isTemporary(v:Bool):Bool {
        this.isTemporary = v;
        return v;
    }
    public var isNotFound(get, set) : Bool;
    function get_isNotFound():Bool return this.isNotFound;
    function set_isNotFound(v:Bool):Bool {
        this.isNotFound = v;
        return v;
    }
    public function new(?err:String, ?name:String, ?server:String, ?isTimeout:Bool, ?isTemporary:Bool, ?isNotFound:Bool) this = new stdgo._internal.net.Net_DNSError.DNSError((err : stdgo.GoString), (name : stdgo.GoString), (server : stdgo.GoString), isTimeout, isTemporary, isNotFound);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
