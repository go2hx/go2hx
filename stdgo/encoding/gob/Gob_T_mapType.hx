package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_mapType_static_extension) abstract T_mapType(stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType) from stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType to stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public var key(get, set) : T_typeId;
    function get_key():T_typeId return this.key;
    function set_key(v:T_typeId):T_typeId {
        this.key = v;
        return v;
    }
    public var elem(get, set) : T_typeId;
    function get_elem():T_typeId return this.elem;
    function set_elem(v:T_typeId):T_typeId {
        this.elem = v;
        return v;
    }
    public function new(?commonType:CommonType, ?key:T_typeId, ?elem:T_typeId) this = new stdgo._internal.encoding.gob.Gob_T_mapType.T_mapType(commonType, key, elem);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
