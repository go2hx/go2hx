package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_tx_static_extension) abstract T_tx(stdgo._internal.encoding.json.Json_T_tx.T_tx) from stdgo._internal.encoding.json.Json_T_tx.T_tx to stdgo._internal.encoding.json.Json_T_tx.T_tx {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_x:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_tx.T_tx((_x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
