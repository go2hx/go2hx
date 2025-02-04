package stdgo._internal.testing.quick;
@:structInit @:using(stdgo._internal.testing.quick.Quick_t_mystruct_static_extension.T_myStruct_static_extension) class T_myStruct {
    public var _x : stdgo.GoInt = 0;
    public function new(?_x:stdgo.GoInt) {
        if (_x != null) this._x = _x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_myStruct(_x);
    }
}
