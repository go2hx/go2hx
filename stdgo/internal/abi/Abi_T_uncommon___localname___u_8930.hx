package stdgo.internal.abi;
@:structInit abstract T_uncommon___localname___u_8930(stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8930.T_uncommon___localname___u_8930) from stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8930.T_uncommon___localname___u_8930 to stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8930.T_uncommon___localname___u_8930 {
    public var interfaceType(get, set) : InterfaceType;
    function get_interfaceType():InterfaceType return this.interfaceType;
    function set_interfaceType(v:InterfaceType):InterfaceType {
        this.interfaceType = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?interfaceType:InterfaceType, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8930.T_uncommon___localname___u_8930(interfaceType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
