package stdgo.internal.abi;
@:structInit abstract T_uncommon___localname___u_8324(stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8324.T_uncommon___localname___u_8324) from stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8324.T_uncommon___localname___u_8324 to stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8324.T_uncommon___localname___u_8324 {
    public var ptrType(get, set) : PtrType;
    function get_ptrType():PtrType return this.ptrType;
    function set_ptrType(v:PtrType):PtrType {
        this.ptrType = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?ptrType:PtrType, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8324.T_uncommon___localname___u_8324(ptrType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
