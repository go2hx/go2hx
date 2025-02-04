package stdgo._internal.net.rpc;
@:structInit @:using(stdgo._internal.net.rpc.Rpc_request_static_extension.Request_static_extension) class Request {
    public var serviceMethod : stdgo.GoString = "";
    public var seq : stdgo.GoUInt64 = 0;
    public var _next : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request> = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>);
    public function new(?serviceMethod:stdgo.GoString, ?seq:stdgo.GoUInt64, ?_next:stdgo.Ref<stdgo._internal.net.rpc.Rpc_request.Request>) {
        if (serviceMethod != null) this.serviceMethod = serviceMethod;
        if (seq != null) this.seq = seq;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Request(serviceMethod, seq, _next);
    }
}
