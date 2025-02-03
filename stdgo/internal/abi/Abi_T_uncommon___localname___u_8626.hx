package stdgo.internal.abi;
@:structInit abstract T_uncommon___localname___u_8626(stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8626.T_uncommon___localname___u_8626) from stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8626.T_uncommon___localname___u_8626 to stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8626.T_uncommon___localname___u_8626 {
    public var arrayType(get, set) : ArrayType;
    function get_arrayType():ArrayType return this.arrayType;
    function set_arrayType(v:ArrayType):ArrayType {
        this.arrayType = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?arrayType:ArrayType, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8626.T_uncommon___localname___u_8626(arrayType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
