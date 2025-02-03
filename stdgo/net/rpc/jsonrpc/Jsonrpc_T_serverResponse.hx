package stdgo.net.rpc.jsonrpc;
@:structInit @:using(stdgo.net.rpc.jsonrpc.Jsonrpc.T_serverResponse_static_extension) abstract T_serverResponse(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverResponse.T_serverResponse) from stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverResponse.T_serverResponse to stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverResponse.T_serverResponse {
    public var id(get, set) : stdgo._internal.encoding.json.Json_RawMessage.RawMessage;
    function get_id():stdgo._internal.encoding.json.Json_RawMessage.RawMessage return this.id;
    function set_id(v:stdgo._internal.encoding.json.Json_RawMessage.RawMessage):stdgo._internal.encoding.json.Json_RawMessage.RawMessage {
        this.id = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);
        return v;
    }
    public var result(get, set) : stdgo.AnyInterface;
    function get_result():stdgo.AnyInterface return this.result;
    function set_result(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.result = (v : stdgo.AnyInterface);
        return v;
    }
    public var error(get, set) : stdgo.AnyInterface;
    function get_error():stdgo.AnyInterface return this.error;
    function set_error(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.error = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?id:stdgo._internal.encoding.json.Json_RawMessage.RawMessage, ?result:stdgo.AnyInterface, ?error:stdgo.AnyInterface) this = new stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverResponse.T_serverResponse((id : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>), (result : stdgo.AnyInterface), (error : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
