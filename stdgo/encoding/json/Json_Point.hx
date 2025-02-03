package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.Point_static_extension) abstract Point(stdgo._internal.encoding.json.Json_Point.Point) from stdgo._internal.encoding.json.Json_Point.Point to stdgo._internal.encoding.json.Json_Point.Point {
    public var z(get, set) : StdTypes.Int;
    function get_z():StdTypes.Int return this.z;
    function set_z(v:StdTypes.Int):StdTypes.Int {
        this.z = (v : stdgo.GoInt);
        return v;
    }
    public function new(?z:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_Point.Point((z : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
