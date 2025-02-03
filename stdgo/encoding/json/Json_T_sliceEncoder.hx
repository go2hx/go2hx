package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_sliceEncoder_static_extension) abstract T_sliceEncoder(stdgo._internal.encoding.json.Json_T_sliceEncoder.T_sliceEncoder) from stdgo._internal.encoding.json.Json_T_sliceEncoder.T_sliceEncoder to stdgo._internal.encoding.json.Json_T_sliceEncoder.T_sliceEncoder {
    public var _arrayEnc(get, set) : T_encoderFunc;
    function get__arrayEnc():T_encoderFunc return this._arrayEnc;
    function set__arrayEnc(v:T_encoderFunc):T_encoderFunc {
        this._arrayEnc = v;
        return v;
    }
    public function new(?_arrayEnc:T_encoderFunc) this = new stdgo._internal.encoding.json.Json_T_sliceEncoder.T_sliceEncoder(_arrayEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
