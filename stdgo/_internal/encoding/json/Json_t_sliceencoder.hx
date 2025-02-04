package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_sliceencoder_static_extension.T_sliceEncoder_static_extension) class T_sliceEncoder {
    public var _arrayEnc : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc = (null : stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc);
    public function new(?_arrayEnc:stdgo._internal.encoding.json.Json_t_encoderfunc.T_encoderFunc) {
        if (_arrayEnc != null) this._arrayEnc = _arrayEnc;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_sliceEncoder(_arrayEnc);
    }
}
