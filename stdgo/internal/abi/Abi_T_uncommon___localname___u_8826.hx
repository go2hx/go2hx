package stdgo.internal.abi;
@:structInit abstract T_uncommon___localname___u_8826(stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8826.T_uncommon___localname___u_8826) from stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8826.T_uncommon___localname___u_8826 to stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8826.T_uncommon___localname___u_8826 {
    public var mapType(get, set) : MapType;
    function get_mapType():MapType return this.mapType;
    function set_mapType(v:MapType):MapType {
        this.mapType = v;
        return v;
    }
    public var _u(get, set) : UncommonType;
    function get__u():UncommonType return this._u;
    function set__u(v:UncommonType):UncommonType {
        this._u = v;
        return v;
    }
    public function new(?mapType:MapType, ?_u:UncommonType) this = new stdgo._internal.internal.abi.Abi_T_uncommon___localname___u_8826.T_uncommon___localname___u_8826(mapType, _u);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
