package stdgo.net.rpc;
@:structInit @:using(stdgo.net.rpc.Rpc.Request_static_extension) abstract Request(stdgo._internal.net.rpc.Rpc_Request.Request) from stdgo._internal.net.rpc.Rpc_Request.Request to stdgo._internal.net.rpc.Rpc_Request.Request {
    public var serviceMethod(get, set) : String;
    function get_serviceMethod():String return this.serviceMethod;
    function set_serviceMethod(v:String):String {
        this.serviceMethod = (v : stdgo.GoString);
        return v;
    }
    public var seq(get, set) : haxe.UInt64;
    function get_seq():haxe.UInt64 return this.seq;
    function set_seq(v:haxe.UInt64):haxe.UInt64 {
        this.seq = (v : stdgo.GoUInt64);
        return v;
    }
    public var _next(get, set) : Request;
    function get__next():Request return this._next;
    function set__next(v:Request):Request {
        this._next = (v : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
        return v;
    }
    public function new(?serviceMethod:String, ?seq:haxe.UInt64, ?_next:Request) this = new stdgo._internal.net.rpc.Rpc_Request.Request((serviceMethod : stdgo.GoString), (seq : stdgo.GoUInt64), (_next : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
