package stdgo.net.rpc;
@:structInit @:using(stdgo.net.rpc.Rpc.Response_static_extension) abstract Response(stdgo._internal.net.rpc.Rpc_Response.Response) from stdgo._internal.net.rpc.Rpc_Response.Response to stdgo._internal.net.rpc.Rpc_Response.Response {
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
    public var error(get, set) : String;
    function get_error():String return this.error;
    function set_error(v:String):String {
        this.error = (v : stdgo.GoString);
        return v;
    }
    public var _next(get, set) : Response;
    function get__next():Response return this._next;
    function set__next(v:Response):Response {
        this._next = (v : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>);
        return v;
    }
    public function new(?serviceMethod:String, ?seq:haxe.UInt64, ?error:String, ?_next:Response) this = new stdgo._internal.net.rpc.Rpc_Response.Response((serviceMethod : stdgo.GoString), (seq : stdgo.GoUInt64), (error : stdgo.GoString), (_next : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
