package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.XYZ_static_extension) abstract XYZ(stdgo._internal.encoding.json.Json_XYZ.XYZ) from stdgo._internal.encoding.json.Json_XYZ.XYZ to stdgo._internal.encoding.json.Json_XYZ.XYZ {
    public var x(get, set) : stdgo.AnyInterface;
    function get_x():stdgo.AnyInterface return this.x;
    function set_x(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.x = (v : stdgo.AnyInterface);
        return v;
    }
    public var y(get, set) : stdgo.AnyInterface;
    function get_y():stdgo.AnyInterface return this.y;
    function set_y(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.y = (v : stdgo.AnyInterface);
        return v;
    }
    public var z(get, set) : stdgo.AnyInterface;
    function get_z():stdgo.AnyInterface return this.z;
    function set_z(v:stdgo.AnyInterface):stdgo.AnyInterface {
        this.z = (v : stdgo.AnyInterface);
        return v;
    }
    public function new(?x:stdgo.AnyInterface, ?y:stdgo.AnyInterface, ?z:stdgo.AnyInterface) this = new stdgo._internal.encoding.json.Json_XYZ.XYZ((x : stdgo.AnyInterface), (y : stdgo.AnyInterface), (z : stdgo.AnyInterface));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
