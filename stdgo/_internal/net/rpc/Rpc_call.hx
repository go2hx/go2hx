package stdgo._internal.net.rpc;
@:structInit @:using(stdgo._internal.net.rpc.Rpc_call_static_extension.Call_static_extension) class Call {
    public var serviceMethod : stdgo.GoString = "";
    public var args : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var reply : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var error : stdgo.Error = (null : stdgo.Error);
    public var done : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>> = (null : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>);
    public function new(?serviceMethod:stdgo.GoString, ?args:stdgo.AnyInterface, ?reply:stdgo.AnyInterface, ?error:stdgo.Error, ?done:stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_call.Call>>) {
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
