package stdgo._internal.net.rpc;
@:structInit @:using(stdgo._internal.net.rpc.Rpc_t_service_static_extension.T_service_static_extension) class T_service {
    public var _name : stdgo.GoString = "";
    public var _rcvr : stdgo._internal.reflect.Reflect_value.Value = ({} : stdgo._internal.reflect.Reflect_value.Value);
    public var _typ : stdgo._internal.reflect.Reflect_type_.Type_ = (null : stdgo._internal.reflect.Reflect_type_.Type_);
    public var _method : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>>);
    public function new(?_name:stdgo.GoString, ?_rcvr:stdgo._internal.reflect.Reflect_value.Value, ?_typ:stdgo._internal.reflect.Reflect_type_.Type_, ?_method:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.rpc.Rpc_t_methodtype.T_methodType>>) {
        if (_name != null) this._name = _name;
        if (_rcvr != null) this._rcvr = _rcvr;
        if (_typ != null) this._typ = _typ;
        if (_method != null) this._method = _method;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_service(_name, _rcvr, _typ, _method);
    }
}
