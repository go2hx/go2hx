package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_encOpts_static_extension) abstract T_encOpts(stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts) from stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts to stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts {
    public var _quoted(get, set) : Bool;
    function get__quoted():Bool return this._quoted;
    function set__quoted(v:Bool):Bool {
        this._quoted = v;
        return v;
    }
    public var _escapeHTML(get, set) : Bool;
    function get__escapeHTML():Bool return this._escapeHTML;
    function set__escapeHTML(v:Bool):Bool {
        this._escapeHTML = v;
        return v;
    }
    public function new(?_quoted:Bool, ?_escapeHTML:Bool) this = new stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts(_quoted, _escapeHTML);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
