package stdgo.net.rpc;
@:structInit @:using(stdgo.net.rpc.Rpc.T_service_static_extension) abstract T_service(stdgo._internal.net.rpc.Rpc_T_service.T_service) from stdgo._internal.net.rpc.Rpc_T_service.T_service to stdgo._internal.net.rpc.Rpc_T_service.T_service {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _rcvr(get, set) : stdgo._internal.reflect.Reflect_Value.Value;
    function get__rcvr():stdgo._internal.reflect.Reflect_Value.Value return this._rcvr;
    function set__rcvr(v:stdgo._internal.reflect.Reflect_Value.Value):stdgo._internal.reflect.Reflect_Value.Value {
        this._rcvr = v;
        return v;
    }
    public var _typ(get, set) : stdgo._internal.reflect.Reflect_Type_.Type_;
    function get__typ():stdgo._internal.reflect.Reflect_Type_.Type_ return this._typ;
    function set__typ(v:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo._internal.reflect.Reflect_Type_.Type_ {
        this._typ = v;
        return v;
    }
    public var _method(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>>;
    function get__method():stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>> return this._method;
    function set__method(v:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>>):stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>> {
        this._method = (v : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>>);
        return v;
    }
    public function new(?_name:String, ?_rcvr:stdgo._internal.reflect.Reflect_Value.Value, ?_typ:stdgo._internal.reflect.Reflect_Type_.Type_, ?_method:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>>) this = new stdgo._internal.net.rpc.Rpc_T_service.T_service((_name : stdgo.GoString), _rcvr, _typ, (_method : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_methodType.T_methodType>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
