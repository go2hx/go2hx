package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_condaddrencoder_static_extension.T_condAddrEncoder_static_extension) class T_condAddrEncoder {
    public var _canAddrEnc : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc = (null : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc);
    public var _elseEnc : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc = (null : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc);
    public function new(?_canAddrEnc:stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc, ?_elseEnc:stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc) {
        if (_canAddrEnc != null) this._canAddrEnc = _canAddrEnc;
        if (_elseEnc != null) this._elseEnc = _elseEnc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_condAddrEncoder(_canAddrEnc, _elseEnc);
    }
}
