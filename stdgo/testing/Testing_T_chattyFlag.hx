package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.T_chattyFlag_static_extension) abstract T_chattyFlag(stdgo._internal.testing.Testing_T_chattyFlag.T_chattyFlag) from stdgo._internal.testing.Testing_T_chattyFlag.T_chattyFlag to stdgo._internal.testing.Testing_T_chattyFlag.T_chattyFlag {
    public var _on(get, set) : Bool;
    function get__on():Bool return this._on;
    function set__on(v:Bool):Bool {
        this._on = v;
        return v;
    }
    public var _json(get, set) : Bool;
    function get__json():Bool return this._json;
    function set__json(v:Bool):Bool {
        this._json = v;
        return v;
    }
    public function new(?_on:Bool, ?_json:Bool) this = new stdgo._internal.testing.Testing_T_chattyFlag.T_chattyFlag(_on, _json);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
