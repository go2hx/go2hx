package stdgo._internal.net.rpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.html.template.Template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.net.Net;
import stdgo._internal.io.Io;
import stdgo._internal.net.http.Http;
import stdgo._internal.go.token.Token;
import stdgo._internal.log.Log;
import stdgo._internal.sort.Sort;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
@:structInit @:using(stdgo._internal.net.rpc.Rpc_Request_static_extension.Request_static_extension) class Request {
    public var serviceMethod : stdgo.GoString = "";
    public var seq : stdgo.GoUInt64 = 0;
    public var _next : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request> = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>);
    public function new(?serviceMethod:stdgo.GoString, ?seq:stdgo.GoUInt64, ?_next:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>) {
        if (serviceMethod != null) this.serviceMethod = serviceMethod;
        if (seq != null) this.seq = seq;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Request(serviceMethod, seq, _next);
    }
}
