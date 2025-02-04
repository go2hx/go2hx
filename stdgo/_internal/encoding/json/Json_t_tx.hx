package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_tx_static_extension.T_tx_static_extension) class T_tx {
    public var _x : stdgo.GoInt = 0;
    public function new(?_x:stdgo.GoInt) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_tx(_x);
    }
}
