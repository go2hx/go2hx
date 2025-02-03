package stdgo.slices;
@:structInit @:using(stdgo.slices.Slices.S_static_extension) abstract S(stdgo._internal.slices.Slices_S.S) from stdgo._internal.slices.Slices_S.S to stdgo._internal.slices.Slices_S.S {
    public var _a(get, set) : StdTypes.Int;
    function get__a():StdTypes.Int return this._a;
    function set__a(v:StdTypes.Int):StdTypes.Int {
        this._a = (v : stdgo.GoInt);
        return v;
    }
    public var _b(get, set) : String;
    function get__b():String return this._b;
    function set__b(v:String):String {
        this._b = (v : stdgo.GoString);
        return v;
    }
    public function new(?_a:StdTypes.Int, ?_b:String) this = new stdgo._internal.slices.Slices_S.S((_a : stdgo.GoInt), (_b : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
