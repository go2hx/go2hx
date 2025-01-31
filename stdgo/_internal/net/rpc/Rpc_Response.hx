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
@:structInit @:using(stdgo._internal.net.rpc.Rpc_Response_static_extension.Response_static_extension) class Response {
    public var serviceMethod : stdgo.GoString = "";
    public var seq : stdgo.GoUInt64 = 0;
    public var error : stdgo.GoString = "";
    public var _next : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response> = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>);
    public function new(?serviceMethod:stdgo.GoString, ?seq:stdgo.GoUInt64, ?error:stdgo.GoString, ?_next:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>) {
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
