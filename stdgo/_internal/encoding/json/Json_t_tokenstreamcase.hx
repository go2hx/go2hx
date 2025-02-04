package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_tokenstreamcase_static_extension.T_tokenStreamCase_static_extension) class T_tokenStreamCase {
    public var _json : stdgo.GoString = "";
    public var _expTokens : stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
    public function new(?_json:stdgo.GoString, ?_expTokens:stdgo.Slice<stdgo.AnyInterface>) {
        if (_json != null) this._json = _json;
        if (_expTokens != null) this._expTokens = _expTokens;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_tokenStreamCase(_json, _expTokens);
    }
}
