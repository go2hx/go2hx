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
@:structInit @:using(stdgo._internal.net.rpc.Rpc_Call_static_extension.Call_static_extension) class Call {
    public var serviceMethod : stdgo.GoString = "";
    public var args : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var reply : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var error : stdgo.Error = (null : stdgo.Error);
    public var done : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>> = (null : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>);
    public function new(?serviceMethod:stdgo.GoString, ?args:stdgo.AnyInterface, ?reply:stdgo.AnyInterface, ?error:stdgo.Error, ?done:stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>) {
        if (serviceMethod != null) this.serviceMethod = serviceMethod;
        if (args != null) this.args = args;
        if (reply != null) this.reply = reply;
        if (error != null) this.error = error;
        if (done != null) this.done = done;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Call(serviceMethod, args, reply, error, done);
    }
}
