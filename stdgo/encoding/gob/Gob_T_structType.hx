package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_structType_static_extension) abstract T_structType(stdgo._internal.encoding.gob.Gob_T_structType.T_structType) from stdgo._internal.encoding.gob.Gob_T_structType.T_structType to stdgo._internal.encoding.gob.Gob_T_structType.T_structType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public var field(get, set) : Array<T_fieldType>;
    function get_field():Array<T_fieldType> return [for (i in this.field) i];
    function set_field(v:Array<T_fieldType>):Array<T_fieldType> {
        this.field = ([for (i in v) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_fieldType.T_fieldType>);
        return v;
    }
    public function new(?commonType:CommonType, ?field:Array<T_fieldType>) this = new stdgo._internal.encoding.gob.Gob_T_structType.T_structType(commonType, ([for (i in field) i] : stdgo.Slice<stdgo._internal.encoding.gob.Gob_T_fieldType.T_fieldType>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
