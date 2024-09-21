package _internal.encoding.gob_test;
@:structInit @:using(_internal.encoding.gob_test.Gob_test_Vector_static_extension.Vector_static_extension) class Vector {
    public var _x : stdgo.GoInt = 0;
    public var _y : stdgo.GoInt = 0;
    public var _z : stdgo.GoInt = 0;
    public function new(?_x:stdgo.GoInt, ?_y:stdgo.GoInt, ?_z:stdgo.GoInt) {
        if (_x != null) this._x = _x;
        if (_y != null) this._y = _y;
        if (_z != null) this._z = _z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Vector(_x, _y, _z);
    }
}
