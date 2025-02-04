package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_t_chattyflag_static_extension.T_chattyFlag_static_extension) class T_chattyFlag {
    public var _on : Bool = false;
    public var _json : Bool = false;
    public function new(?_on:Bool, ?_json:Bool) {
        if (_on != null) this._on = _on;
        if (_json != null) this._json = _json;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_chattyFlag(_on, _json);
    }
}
