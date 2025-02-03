package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_gobEncoderType_static_extension) abstract T_gobEncoderType(stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType) from stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType to stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType {
    public var commonType(get, set) : CommonType;
    function get_commonType():CommonType return this.commonType;
    function set_commonType(v:CommonType):CommonType {
        this.commonType = v;
        return v;
    }
    public function new(?commonType:CommonType) this = new stdgo._internal.encoding.gob.Gob_T_gobEncoderType.T_gobEncoderType(commonType);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
