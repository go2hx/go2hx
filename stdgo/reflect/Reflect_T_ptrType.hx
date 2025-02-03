package stdgo.reflect;
@:structInit @:using(stdgo.reflect.Reflect.T_ptrType_static_extension) abstract T_ptrType(stdgo._internal.reflect.Reflect_T_ptrType.T_ptrType) from stdgo._internal.reflect.Reflect_T_ptrType.T_ptrType to stdgo._internal.reflect.Reflect_T_ptrType.T_ptrType {
    public var ptrType(get, set) : stdgo._internal.internal.abi.Abi_PtrType.PtrType;
    function get_ptrType():stdgo._internal.internal.abi.Abi_PtrType.PtrType return this.ptrType;
    function set_ptrType(v:stdgo._internal.internal.abi.Abi_PtrType.PtrType):stdgo._internal.internal.abi.Abi_PtrType.PtrType {
        this.ptrType = v;
        return v;
    }
    public function new(?ptrType:stdgo._internal.internal.abi.Abi_PtrType.PtrType) this = new stdgo._internal.reflect.Reflect_T_ptrType.T_ptrType(ptrType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
