package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.Embed0p_static_extension) abstract Embed0p(stdgo._internal.encoding.json.Json_Embed0p.Embed0p) from stdgo._internal.encoding.json.Json_Embed0p.Embed0p to stdgo._internal.encoding.json.Json_Embed0p.Embed0p {
    public var point(get, set) : stdgo._internal.image.Image_Point.Point;
    function get_point():stdgo._internal.image.Image_Point.Point return this.point;
    function set_point(v:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Point.Point {
        this.point = v;
        return v;
    }
    public function new(?point:stdgo._internal.image.Image_Point.Point) this = new stdgo._internal.encoding.json.Json_Embed0p.Embed0p(point);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
