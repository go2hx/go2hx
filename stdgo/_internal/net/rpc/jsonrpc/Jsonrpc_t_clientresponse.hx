package stdgo._internal.net.rpc.jsonrpc;
@:structInit @:using(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_t_clientresponse_static_extension.T_clientResponse_static_extension) class T_clientResponse {
    @:tag("`json:\"id\"`")
    public var id : stdgo.GoUInt64 = 0;
    @:tag("`json:\"result\"`")
    public var result : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>);
    @:tag("`json:\"error\"`")
    public var error : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?id:stdgo.GoUInt64, ?result:stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>, ?error:stdgo.AnyInterface) {
        if (id != null) this.id = id;
        if (result != null) this.result = result;
        if (error != null) this.error = error;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_clientResponse(id, result, error);
    }
}
