package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_condAddrEncoder_static_extension) abstract T_condAddrEncoder(stdgo._internal.encoding.json.Json_T_condAddrEncoder.T_condAddrEncoder) from stdgo._internal.encoding.json.Json_T_condAddrEncoder.T_condAddrEncoder to stdgo._internal.encoding.json.Json_T_condAddrEncoder.T_condAddrEncoder {
    public var _canAddrEnc(get, set) : T_encoderFunc;
    function get__canAddrEnc():T_encoderFunc return this._canAddrEnc;
    function set__canAddrEnc(v:T_encoderFunc):T_encoderFunc {
        this._canAddrEnc = v;
        return v;
    }
    public var _elseEnc(get, set) : T_encoderFunc;
    function get__elseEnc():T_encoderFunc return this._elseEnc;
    function set__elseEnc(v:T_encoderFunc):T_encoderFunc {
        this._elseEnc = v;
        return v;
    }
    public function new(?_canAddrEnc:T_encoderFunc, ?_elseEnc:T_encoderFunc) this = new stdgo._internal.encoding.json.Json_T_condAddrEncoder.T_condAddrEncoder(_canAddrEnc, _elseEnc);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
