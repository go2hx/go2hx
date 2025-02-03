package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.T_ratBinArg_static_extension) abstract T_ratBinArg(stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg) from stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg to stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg {
    public var _x(get, set) : String;
    function get__x():String return this._x;
    function set__x(v:String):String {
        this._x = (v : stdgo.GoString);
        return v;
    }
    public var _y(get, set) : String;
    function get__y():String return this._y;
    function set__y(v:String):String {
        this._y = (v : stdgo.GoString);
        return v;
    }
    public var _z(get, set) : String;
    function get__z():String return this._z;
    function set__z(v:String):String {
        this._z = (v : stdgo.GoString);
        return v;
    }
    public function new(?_x:String, ?_y:String, ?_z:String) this = new stdgo._internal.math.big.Big_T_ratBinArg.T_ratBinArg((_x : stdgo.GoString), (_y : stdgo.GoString), (_z : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
