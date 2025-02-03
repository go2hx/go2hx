package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_tokenStreamCase_static_extension) abstract T_tokenStreamCase(stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase) from stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase to stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase {
    public var _json(get, set) : String;
    function get__json():String return this._json;
    function set__json(v:String):String {
        this._json = (v : stdgo.GoString);
        return v;
    }
    public var _expTokens(get, set) : Array<stdgo.AnyInterface>;
    function get__expTokens():Array<stdgo.AnyInterface> return [for (i in this._expTokens) i];
    function set__expTokens(v:Array<stdgo.AnyInterface>):Array<stdgo.AnyInterface> {
        this._expTokens = ([for (i in v) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>);
        return v;
    }
    public function new(?_json:String, ?_expTokens:Array<stdgo.AnyInterface>) this = new stdgo._internal.encoding.json.Json_T_tokenStreamCase.T_tokenStreamCase((_json : stdgo.GoString), ([for (i in _expTokens) (i : stdgo.AnyInterface)] : stdgo.Slice<stdgo.AnyInterface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
