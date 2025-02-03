package stdgo.reflect;
@:structInit @:using(stdgo.reflect.Reflect.T_sliceType_static_extension) abstract T_sliceType(stdgo._internal.reflect.Reflect_T_sliceType.T_sliceType) from stdgo._internal.reflect.Reflect_T_sliceType.T_sliceType to stdgo._internal.reflect.Reflect_T_sliceType.T_sliceType {
    public var sliceType(get, set) : stdgo._internal.internal.abi.Abi_SliceType.SliceType;
    function get_sliceType():stdgo._internal.internal.abi.Abi_SliceType.SliceType return this.sliceType;
    function set_sliceType(v:stdgo._internal.internal.abi.Abi_SliceType.SliceType):stdgo._internal.internal.abi.Abi_SliceType.SliceType {
        this.sliceType = v;
        return v;
    }
    public function new(?sliceType:stdgo._internal.internal.abi.Abi_SliceType.SliceType) this = new stdgo._internal.reflect.Reflect_T_sliceType.T_sliceType(sliceType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
