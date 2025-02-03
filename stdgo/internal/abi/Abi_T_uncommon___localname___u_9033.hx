package stdgo.internal.abi;
@:structInit abstract T_uncommon___localname___u_9033(stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_9033.T_uncommon___localname___u_9033) from stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_9033.T_uncommon___localname___u_9033 to stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_9033.T_uncommon___localname___u_9033 {
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?type:Type_, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_9033.T_uncommon___localname___u_9033(type, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
