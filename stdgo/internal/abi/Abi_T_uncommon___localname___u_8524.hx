package stdgo.internal.abi;
@:structInit abstract T_uncommon___localname___u_8524(stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8524.T_uncommon___localname___u_8524) from stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8524.T_uncommon___localname___u_8524 to stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8524.T_uncommon___localname___u_8524 {
    public var sliceType(get, set) : SliceType;
    function get_sliceType():SliceType return this.sliceType;
    function set_sliceType(v:SliceType):SliceType {
        this.sliceType = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?sliceType:SliceType, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8524.T_uncommon___localname___u_8524(sliceType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
