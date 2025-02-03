package stdgo.net.rpc.jsonrpc;
@:structInit @:using(stdgo.net.rpc.jsonrpc.Jsonrpc.T_clientResponse_static_extension) abstract T_clientResponse(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientResponse.T_clientResponse) from stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientResponse.T_clientResponse to stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientResponse.T_clientResponse {
    public var id(get, set) : haxe.UInt64;
    function get_id():haxe.UInt64 return this.id;
    function set_id(v:haxe.UInt64):haxe.UInt64 {
        this.id = (v : stdgo.GoUInt64);
        return v;
    }
    public var result(get, set) : stdgo._internal.encoding.json.Json_RawMessage.RawMessage;
    function get_result():stdgo._internal.encoding.json.Json_RawMessage.RawMessage return this.result;
    function set_result(v:stdgo._internal.encoding.json.Json_RawMessage.RawMessage):stdgo._internal.encoding.json.Json_RawMessage.RawMessage {
        this.result = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);
        return v;
    }
    public var error(get, set) : stdgo.AnyInterface;
    function get_error():stdgo.AnyInterface return this.error;
    function set_error(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.error = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?id:haxe.UInt64, ?result:stdgo._internal.encoding.json.Json_RawMessage.RawMessage, ?error:stdgo.AnyInterface) this = new stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientResponse.T_clientResponse((id : stdgo.GoUInt64), (result : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>), (error : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
