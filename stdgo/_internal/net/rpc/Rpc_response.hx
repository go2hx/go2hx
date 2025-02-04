package stdgo._internal.net.rpc;
@:structInit @:using(stdgo._internal.net.rpc.Rpc_response_static_extension.Response_static_extension) class Response {
    public var serviceMethod : stdgo.GoString = "";
    public var seq : stdgo.GoUInt64 = 0;
    public var error : stdgo.GoString = "";
    public var _next : stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response> = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>);
    public function new(?serviceMethod:stdgo.GoString, ?seq:stdgo.GoUInt64, ?error:stdgo.GoString, ?_next:stdgo.Ref<stdgo._internal.net.rpc.Rpc_response.Response>) {
        if (serviceMethod != null) this.serviceMethod = serviceMethod;
        if (seq != null) this.seq = seq;
        if (error != null) this.error = error;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Response(serviceMethod, seq, error, _next);
    }
}
