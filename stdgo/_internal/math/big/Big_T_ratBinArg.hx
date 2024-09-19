package stdgo._internal.math.big;
@:structInit class T_ratBinArg {
    public var _x : stdgo.GoString = "";
    public var _y : stdgo.GoString = "";
    public var _z : stdgo.GoString = "";
    public function new(?_x:stdgo.GoString, ?_y:stdgo.GoString, ?_z:stdgo.GoString) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_z != null) this._z = _z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ratBinArg(_x, _y, _z);
    }
}
