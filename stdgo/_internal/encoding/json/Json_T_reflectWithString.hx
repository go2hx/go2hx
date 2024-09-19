package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_T_reflectWithString_static_extension.T_reflectWithString_static_extension) class T_reflectWithString {
    public var _k : stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
    public var _v : stdgo._internal.reflect.Reflect_Value.Value = ({} : stdgo._internal.reflect.Reflect_Value.Value);
    public var _ks : stdgo.GoString = "";
    public function new(?_k:stdgo._internal.reflect.Reflect_Value.Value, ?_v:stdgo._internal.reflect.Reflect_Value.Value, ?_ks:stdgo.GoString) {
        if (_k != null) this._k = _k;
        if (_v != null) this._v = _v;
        if (_ks != null) this._ks = _ks;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_reflectWithString(_k, _v, _ks);
    }
}
