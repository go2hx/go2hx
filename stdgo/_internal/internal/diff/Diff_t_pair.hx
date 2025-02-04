package stdgo._internal.internal.diff;
@:structInit @:using(stdgo._internal.internal.diff.Diff_t_pair_static_extension.T_pair_static_extension) class T_pair {
    public var _x : stdgo.GoInt = 0;
    public var _y : stdgo.GoInt = 0;
    public function new(?_x:stdgo.GoInt, ?_y:stdgo.GoInt) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pair(_x, _y);
    }
}
