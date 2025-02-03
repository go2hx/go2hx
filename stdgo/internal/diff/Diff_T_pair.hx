package stdgo.internal.diff;
@:structInit @:using(stdgo.internal.diff.Diff.T_pair_static_extension) abstract T_pair(stdgo._internal.internal.diff.Diff_T_pair.T_pair) from stdgo._internal.internal.diff.Diff_T_pair.T_pair to stdgo._internal.internal.diff.Diff_T_pair.T_pair {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = (v : stdgo.GoInt);
        return v;
    }
    public var _y(get, set) : StdTypes.Int;
    function get__y():StdTypes.Int return this._y;
    function set__y(v:StdTypes.Int):StdTypes.Int {
        this._y = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_x:StdTypes.Int, ?_y:StdTypes.Int) this = new stdgo._internal.internal.diff.Diff_T_pair.T_pair((_x : stdgo.GoInt), (_y : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
