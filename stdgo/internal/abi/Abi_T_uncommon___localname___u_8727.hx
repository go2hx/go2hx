package stdgo.internal.abi;
@:structInit abstract T_uncommon___localname___u_8727(stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8727.T_uncommon___localname___u_8727) from stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8727.T_uncommon___localname___u_8727 to stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8727.T_uncommon___localname___u_8727 {
    public var chanType(get, set) : ChanType;
    function get_chanType():ChanType return this.chanType;
    function set_chanType(v:ChanType):ChanType {
        this.chanType = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?chanType:ChanType, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8727.T_uncommon___localname___u_8727(chanType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
