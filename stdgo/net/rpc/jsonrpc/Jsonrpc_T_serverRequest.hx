package stdgo.net.rpc.jsonrpc;
@:structInit @:using(stdgo.net.rpc.jsonrpc.Jsonrpc.T_serverRequest_static_extension) abstract T_serverRequest(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest.T_serverRequest) from stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest.T_serverRequest to stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest.T_serverRequest {
    public var method(get, set) : String;
    function get_method():String return this.method;
    function set_method(v:String):String {
        this.method = (v : stdgo.GoString);
        return v;
    }
    public var params(get, set) : stdgo._internal.encoding.json.Json_RawMessage.RawMessage;
    function get_params():stdgo._internal.encoding.json.Json_RawMessage.RawMessage return this.params;
    function set_params(v:stdgo._internal.encoding.json.Json_RawMessage.RawMessage):stdgo._internal.encoding.json.Json_RawMessage.RawMessage {
        this.params = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);
        return v;
    }
    public var id(get, set) : stdgo._internal.encoding.json.Json_RawMessage.RawMessage;
    function get_id():stdgo._internal.encoding.json.Json_RawMessage.RawMessage return this.id;
    function set_id(v:stdgo._internal.encoding.json.Json_RawMessage.RawMessage):stdgo._internal.encoding.json.Json_RawMessage.RawMessage {
        this.id = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>);
        return v;
    }
    public function new(?method:String, ?params:stdgo._internal.encoding.json.Json_RawMessage.RawMessage, ?id:stdgo._internal.encoding.json.Json_RawMessage.RawMessage) this = new stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_serverRequest.T_serverRequest((method : stdgo.GoString), (params : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>), (id : stdgo.Ref<stdgo._internal.encoding.json.Json_RawMessage.RawMessage>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
