package stdgo.reflect;
@:structInit @:using(stdgo.reflect.Reflect.T_interfaceType_static_extension) abstract T_interfaceType(stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType) from stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType to stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType {
    public var interfaceType(get, set) : stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType;
    function get_interfaceType():stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType return this.interfaceType;
    function set_interfaceType(v:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType):stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType {
        this.interfaceType = v;
        return v;
    }
    public function new(?interfaceType:stdgo._internal.internal.abi.Abi_InterfaceType.InterfaceType) this = new stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType(interfaceType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
