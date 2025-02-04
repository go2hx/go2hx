package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_arrayencoder_static_extension.T_arrayEncoder_static_extension) class T_arrayEncoder {
    public var _elemEnc : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc = (null : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc);
    public function new(?_elemEnc:stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc) {
        if (_elemEnc != null) this._elemEnc = _elemEnc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_arrayEncoder(_elemEnc);
    }
}
