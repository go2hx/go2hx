package stdgo._internal.net.rpc.jsonrpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.net.rpc.Rpc;
import stdgo._internal.net.Net;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.net.rpc.jsonrpc.Jsonrpc_T_clientRequest_static_extension.T_clientRequest_static_extension) class T_clientRequest {
    @:tag("`json:\"method\"`")
    public var method : stdgo.GoString = "";
    @:tag("`json:\"params\"`")
    public var params : stdgo.GoArray<stdgo.AnyInterface> = new stdgo.GoArray<stdgo.AnyInterface>(1, 1);
    @:tag("`json:\"id\"`")
    public var id : stdgo.GoUInt64 = 0;
    public function new(?method:stdgo.GoString, ?params:stdgo.GoArray<stdgo.AnyInterface>, ?id:stdgo.GoUInt64) {
        if (method != null) this.method = method;
        if (params != null) this.params = params;
        if (id != null) this.id = id;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_clientRequest(method, params, id);
    }
}
