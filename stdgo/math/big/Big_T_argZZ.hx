package stdgo.math.big;
@:structInit @:using(stdgo.math.big.Big.T_argZZ_static_extension) abstract T_argZZ(stdgo._internal.math.big.Big_T_argZZ.T_argZZ) from stdgo._internal.math.big.Big_T_argZZ.T_argZZ to stdgo._internal.math.big.Big_T_argZZ.T_argZZ {
    public var _z(get, set) : Int_;
    function get__z():Int_ return this._z;
    function set__z(v:Int_):Int_ {
        this._z = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var _x(get, set) : Int_;
    function get__x():Int_ return this._x;
    function set__x(v:Int_):Int_ {
        this._x = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var _y(get, set) : Int_;
    function get__y():Int_ return this._y;
    function set__y(v:Int_):Int_ {
        this._y = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public function new(?_z:Int_, ?_x:Int_, ?_y:Int_) this = new stdgo._internal.math.big.Big_T_argZZ.T_argZZ((_z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (_x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (_y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
