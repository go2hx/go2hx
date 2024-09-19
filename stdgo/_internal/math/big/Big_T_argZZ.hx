package stdgo._internal.math.big;
@:structInit class T_argZZ {
    public var _z : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var _x : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var _y : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public function new(?_z:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?_x:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?_y:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) {
        if (_z != null) this._z = _z;
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_argZZ(_z, _x, _y);
    }
}
