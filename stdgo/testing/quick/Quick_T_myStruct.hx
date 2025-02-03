package stdgo.testing.quick;
@:structInit @:using(stdgo.testing.quick.Quick.T_myStruct_static_extension) abstract T_myStruct(stdgo._internal.testing.quick.Quick_T_myStruct.T_myStruct) from stdgo._internal.testing.quick.Quick_T_myStruct.T_myStruct to stdgo._internal.testing.quick.Quick_T_myStruct.T_myStruct {
    public var _x(get, set) : StdTypes.Int;
    function get__x():StdTypes.Int return this._x;
    function set__x(v:StdTypes.Int):StdTypes.Int {
        this._x = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_x:StdTypes.Int) this = new stdgo._internal.testing.quick.Quick_T_myStruct.T_myStruct((_x : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
