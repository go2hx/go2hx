package stdgo._internal.net.rpc.jsonrpc;
@:structInit @:using(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverrequest_static_extension.T_serverRequest_static_extension) class T_serverRequest {
    @:tag("`json:\"method\"`")
    public var method : stdgo.GoString = "";
    @:tag("`json:\"params\"`")
    public var params : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
    @:tag("`json:\"id\"`")
    public var id : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
    public function new(?method:stdgo.GoString, ?params:stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>, ?id:stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>) {
        if (method != null) this.method = method;
        if (params != null) this.params = params;
        if (id != null) this.id = id;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_serverRequest(method, params, id);
    }
}
