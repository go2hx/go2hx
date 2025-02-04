package stdgo._internal.encoding.base64;
@:structInit @:using(stdgo._internal.encoding.base64.Base64_t_testpair_static_extension.T_testpair_static_extension) class T_testpair {
    public var _decoded : stdgo.GoString = "";
    public var _encoded : stdgo.GoString = "";
    public function new(?_decoded:stdgo.GoString, ?_encoded:stdgo.GoString) {
        if (_decoded != null) this._decoded = _decoded;
        if (_encoded != null) this._encoded = _encoded;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testpair(_decoded, _encoded);
    }
}
