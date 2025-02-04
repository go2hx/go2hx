package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_encopts_static_extension.T_encOpts_static_extension) class T_encOpts {
    public var _quoted : Bool = false;
    public var _escapeHTML : Bool = false;
    public function new(?_quoted:Bool, ?_escapeHTML:Bool) {
        if (_quoted != null) this._quoted = _quoted;
        if (_escapeHTML != null) this._escapeHTML = _escapeHTML;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encOpts(_quoted, _escapeHTML);
    }
}
