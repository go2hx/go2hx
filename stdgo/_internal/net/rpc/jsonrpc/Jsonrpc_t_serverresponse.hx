package stdgo._internal.net.rpc.jsonrpc;
@:structInit @:using(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_serverresponse_static_extension.T_serverResponse_static_extension) class T_serverResponse {
    @:tag("`json:\"id\"`")
    public var id : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
    @:tag("`json:\"result\"`")
    public var result : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    @:tag("`json:\"error\"`")
    public var error : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?id:stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>, ?result:stdgo.AnyInterface, ?error:stdgo.AnyInterface) {
        if (id != null) this.id = id;
        if (result != null) this.result = result;
        if (error != null) this.error = error;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_serverResponse(id, result, error);
    }
}
