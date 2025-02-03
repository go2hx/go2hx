package stdgo.net.rpc;
@:structInit @:using(stdgo.net.rpc.Rpc.T_debugService_static_extension) abstract T_debugService(stdgo._internal.net.rpc.Rpc_T_debugService.T_debugService) from stdgo._internal.net.rpc.Rpc_T_debugService.T_debugService to stdgo._internal.net.rpc.Rpc_T_debugService.T_debugService {
    public var service(get, set) : T_service;
    function get_service():T_service return this.service;
    function set_service(v:T_service):T_service {
        this.service = (v : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var method(get, set) : T_methodArray;
    function get_method():T_methodArray return this.method;
    function set_method(v:T_methodArray):T_methodArray {
        this.method = v;
        return v;
    }
    public function new(?service:T_service, ?name:String, ?method:T_methodArray) this = new stdgo._internal.net.rpc.Rpc_T_debugService.T_debugService((service : stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_service.T_service>), (name : stdgo.GoString), method);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
