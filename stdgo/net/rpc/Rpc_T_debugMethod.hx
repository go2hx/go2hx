package stdgo.net.rpc;
@:structInit @:using(stdgo.net.rpc.Rpc.T_debugMethod_static_extension) abstract T_debugMethod(stdgo._internal.net.rpc.Rpc_T_debugMethod.T_debugMethod) from stdgo._internal.net.rpc.Rpc_T_debugMethod.T_debugMethod to stdgo._internal.net.rpc.Rpc_T_debugMethod.T_debugMethod {
    public var type(get, set) : T_methodType;
    function get_type():T_methodType return this.type;
    function set_type(v:T_methodType):T_methodType {
        this.type = (v : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public function new(?type:T_methodType, ?name:String) this = new stdgo._internal.net.rpc.Rpc_T_debugMethod.T_debugMethod((type : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>), (name : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
