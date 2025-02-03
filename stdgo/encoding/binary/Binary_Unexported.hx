package stdgo.encoding.binary;
@:structInit @:using(stdgo.encoding.binary.Binary.Unexported_static_extension) abstract Unexported(stdgo._internal.encoding.binary.Binary_Unexported.Unexported) from stdgo._internal.encoding.binary.Binary_Unexported.Unexported to stdgo._internal.encoding.binary.Binary_Unexported.Unexported {
    public var _a(get, set) : StdTypes.Int;
    function get__a():StdTypes.Int return this._a;
    function set__a(v:StdTypes.Int):StdTypes.Int {
        this._a = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?_a:StdTypes.Int) this = new stdgo._internal.encoding.binary.Binary_Unexported.Unexported((_a : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
