package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_sliceType_static_extension) abstract T_sliceType(stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType) from stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType to stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public var elem(get, set) : T_typeId;
    function get_elem():T_typeId return this.elem;
    function set_elem(v:T_typeId):T_typeId {
        this.elem = v;
        return v;
    }
    public function new(?commonType:CommonType, ?elem:T_typeId) this = new stdgo._internal.encoding.gob.Gob_T_sliceType.T_sliceType(commonType, elem);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
