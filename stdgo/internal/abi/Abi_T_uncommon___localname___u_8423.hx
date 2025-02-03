package stdgo.internal.abi;
@:structInit abstract T_uncommon___localname___u_8423(stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8423.T_uncommon___localname___u_8423) from stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8423.T_uncommon___localname___u_8423 to stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8423.T_uncommon___localname___u_8423 {
    public var funcType(get, set) : FuncType;
    function get_funcType():FuncType return this.funcType;
    function set_funcType(v:FuncType):FuncType {
        this.funcType = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?funcType:FuncType, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8423.T_uncommon___localname___u_8423(funcType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
