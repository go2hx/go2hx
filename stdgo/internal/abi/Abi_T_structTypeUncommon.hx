package stdgo.internal.abi;
@:structInit @:using(stdgo.internal.abi.Abi.T_structTypeUncommon_static_extension) abstract T_structTypeUncommon(stdgo._internal.internal.abi.Abi_T_structTypeUncommon.T_structTypeUncommon) from stdgo._internal.internal.abi.Abi_T_structTypeUncommon.T_structTypeUncommon to stdgo._internal.internal.abi.Abi_T_structTypeUncommon.T_structTypeUncommon {
    public var structType(get, set) : StructType;
    function get_structType():StructType return this.structType;
    function set_structType(v:StructType):StructType {
        this.structType = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?structType:StructType, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_T_structTypeUncommon.T_structTypeUncommon(structType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
