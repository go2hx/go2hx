package stdgo.net.rpc;
@:structInit @:using(stdgo.net.rpc.Rpc.Call_static_extension) abstract Call(stdgo._internal.net.rpc.Rpc_Call.Call) from stdgo._internal.net.rpc.Rpc_Call.Call to stdgo._internal.net.rpc.Rpc_Call.Call {
    public var serviceMethod(get, set) : String;
    function get_serviceMethod():String return this.serviceMethod;
    function set_serviceMethod(v:String):String {
        this.serviceMethod = (v : stdgo.GoString);
        return v;
    }
    public var args(get, set) : stdgo.AnyInterface;
    function get_args():stdgo.AnyInterface return this.args;
    function set_args(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.args = (v : stdgo.AnyInterface);
        return v;
    }
    public var reply(get, set) : stdgo.AnyInterface;
    function get_reply():stdgo.AnyInterface return this.reply;
    function set_reply(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.reply = (v : stdgo.AnyInterface);
        return v;
    }
    public var error(get, set) : stdgo.Error;
    function get_error():stdgo.Error return this.error;
    function set_error(v:stdgo.Error):stdgo.Error {
        this.error = (v : stdgo.Error);
        return v;
    }
    public var done(get, set) : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>;
    function get_done():stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>> return this.done;
    function set_done(v:stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>):stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>> {
        this.done = (v : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>);
        return v;
    }
    public function new(?serviceMethod:String, ?args:stdgo.AnyInterface, ?reply:stdgo.AnyInterface, ?error:stdgo.Error, ?done:stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>) this = new stdgo._internal.net.rpc.Rpc_Call.Call((serviceMethod : stdgo.GoString), (args : stdgo.AnyInterface), (reply : stdgo.AnyInterface), (error : stdgo.Error), (done : stdgo.Chan<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
