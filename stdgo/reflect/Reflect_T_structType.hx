package stdgo.reflect;
@:structInit @:using(stdgo.reflect.Reflect.T_structType_static_extension) abstract T_structType(stdgo._internal.reflect.Reflect_T_structType.T_structType) from stdgo._internal.reflect.Reflect_T_structType.T_structType to stdgo._internal.reflect.Reflect_T_structType.T_structType {
    public var structType(get, set) : stdgo._internal.internal.abi.Abi_StructType.StructType;
    function get_structType():stdgo._internal.internal.abi.Abi_StructType.StructType return this.structType;
    function set_structType(v:stdgo._internal.internal.abi.Abi_StructType.StructType):stdgo._internal.internal.abi.Abi_StructType.StructType {
        this.structType = v;
        return v;
    }
    public function new(?structType:stdgo._internal.internal.abi.Abi_StructType.StructType) this = new stdgo._internal.reflect.Reflect_T_structType.T_structType(structType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
