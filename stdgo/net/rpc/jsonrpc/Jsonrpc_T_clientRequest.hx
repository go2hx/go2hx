package stdgo.net.rpc.jsonrpc;
@:structInit @:using(stdgo.net.rpc.jsonrpc.Jsonrpc.T_clientRequest_static_extension) abstract T_clientRequest(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientRequest.T_clientRequest) from stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientRequest.T_clientRequest to stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientRequest.T_clientRequest {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = (v : stdgo.GoString);
        return v;
    }
    public var params(get, set) : haxe.ds.Vector<stdgo.AnyInterface>;
    function get_params():haxe.ds.Vector<stdgo.AnyInterface> return haxe.ds.Vector.fromArrayCopy([for (i in this.params) i]);
    function set_params(v:haxe.ds.Vector<stdgo.AnyInterface>):haxe.ds.Vector<stdgo.AnyInterface> {
        this.params = ([for (i in v) (i : stdgo.AnyInterface)] : stdgo.GoArray<stdgo.AnyInterface>);
        return v;
    }
    public var id(get, set) : haxe.UInt64;
    function get_id():haxe.UInt64 return this.id;
    function set_id(v:haxe.UInt64):haxe.UInt64 {
        this.id = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?method:String, ?params:haxe.ds.Vector<stdgo.AnyInterface>, ?id:haxe.UInt64) this = new stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientRequest.T_clientRequest((method : stdgo.GoString), ([for (i in params) (i : stdgo.AnyInterface)] : stdgo.GoArray<stdgo.AnyInterface>), (id : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
