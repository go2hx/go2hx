package stdgo._internal.net.rpc;
@:structInit @:using(stdgo._internal.net.rpc.Rpc_t_debugservice_static_extension.T_debugService_static_extension) class T_debugService {
    public var service : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_service.T_service> = (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_service.T_service>);
    public var name : stdgo.GoString = "";
    public var method : stdgo._internal.net.rpc.Rpc_t_methodarray.T_methodArray = (new stdgo._internal.net.rpc.Rpc_t_methodarray.T_methodArray(0, 0) : stdgo._internal.net.rpc.Rpc_t_methodarray.T_methodArray);
    public function new(?service:stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_service.T_service>, ?name:stdgo.GoString, ?method:stdgo._internal.net.rpc.Rpc_t_methodarray.T_methodArray) {
        if (service != null) this.service = service;
        if (name != null) this.name = name;
        if (method != null) this.method = method;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_debugService(service, name, method);
    }
}
