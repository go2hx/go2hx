package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_decodethis_static_extension.T_decodeThis_static_extension) class T_decodeThis {
    public var _v : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_v:stdgo.AnyInterface) {
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decodeThis(_v);
    }
}
