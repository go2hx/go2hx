package stdgo._internal.net.rpc;
@:structInit class T_debugMethod {
    public var type : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType> = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>);
    public var name : stdgo.GoString = "";
    public function new(?type:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>, ?name:stdgo.GoString) {
        if (type != null) this.type = type;
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_debugMethod(type, name);
    }
}
