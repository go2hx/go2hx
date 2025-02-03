package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T__static_extension) abstract T_(stdgo._internal.encoding.json.Json_T_.T_) from stdgo._internal.encoding.json.Json_T_.T_ to stdgo._internal.encoding.json.Json_T_.T_ {
    public var x(get, set) : String;
    function get_x():String return this.x;
    function set_x(v:String):String {
        this.x = (v : stdgo.GoString);
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = (v : stdgo.GoInt);
        return v;
    }
    public var z(get, set) : StdTypes.Int;
    function get_z():StdTypes.Int return this.z;
    function set_z(v:StdTypes.Int):StdTypes.Int {
        this.z = (v : stdgo.GoInt);
        return v;
    }
    public function new(?x:String, ?y:StdTypes.Int, ?z:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_T_.T_((x : stdgo.GoString), (y : stdgo.GoInt), (z : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
