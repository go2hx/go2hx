package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_arrayType_static_extension) abstract T_arrayType(stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType) from stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType to stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType {
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
    public var len(get, set) : StdTypes.Int;
    function get_len():StdTypes.Int return this.len;
    function set_len(v:StdTypes.Int):StdTypes.Int {
        this.len = (v : stdgo.GoInt);
        return v;
    }
    public function new(?commonType:CommonType, ?elem:T_typeId, ?len:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_T_arrayType.T_arrayType(commonType, elem, (len : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
