package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.Embed0q_static_extension) abstract Embed0q(stdgo._internal.encoding.json.Json_Embed0q.Embed0q) from stdgo._internal.encoding.json.Json_Embed0q.Embed0q to stdgo._internal.encoding.json.Json_Embed0q.Embed0q {
    public var point(get, set) : Point;
    function get_point():Point return this.point;
    function set_point(v:Point):Point {
        this.point = v;
        return v;
    }
    public function new(?point:Point) this = new stdgo._internal.encoding.json.Json_Embed0q.Embed0q(point);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
