package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_mapEncoder_static_extension) abstract T_mapEncoder(stdgo._internal.encoding.json.Json_T_mapEncoder.T_mapEncoder) from stdgo._internal.encoding.json.Json_T_mapEncoder.T_mapEncoder to stdgo._internal.encoding.json.Json_T_mapEncoder.T_mapEncoder {
    public var _elemEnc(get, set) : T_encoderFunc;
    function get__elemEnc():T_encoderFunc return this._elemEnc;
    function set__elemEnc(v:T_encoderFunc):T_encoderFunc {
        this._elemEnc = v;
        return v;
    }
    public function new(?_elemEnc:T_encoderFunc) this = new stdgo._internal.encoding.json.Json_T_mapEncoder.T_mapEncoder(_elemEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
