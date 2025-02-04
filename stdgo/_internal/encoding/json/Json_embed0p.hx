package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_embed0p_static_extension.Embed0p_static_extension) class Embed0p {
    @:embedded
    public var point : stdgo._internal.image.Image_point.Point = ({} : stdgo._internal.image.Image_point.Point);
    public function new(?point:stdgo._internal.image.Image_point.Point) {
        if (point != null) this.point = point;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var add(get, never) : stdgo._internal.image.Image_point.Point -> stdgo._internal.image.Image_point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_add():stdgo._internal.image.Image_point.Point -> stdgo._internal.image.Image_point.Point return @:check31 (this.point ?? throw "null pointer dereference").add;
    public var div(get, never) : stdgo.GoInt -> stdgo._internal.image.Image_point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_div():stdgo.GoInt -> stdgo._internal.image.Image_point.Point return @:check31 (this.point ?? throw "null pointer dereference").div;
    public var eq(get, never) : stdgo._internal.image.Image_point.Point -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_eq():stdgo._internal.image.Image_point.Point -> Bool return @:check31 (this.point ?? throw "null pointer dereference").eq;
    public var in_(get, never) : stdgo._internal.image.Image_rectangle.Rectangle -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_in_():stdgo._internal.image.Image_rectangle.Rectangle -> Bool return @:check31 (this.point ?? throw "null pointer dereference").in_;
    public var mod(get, never) : stdgo._internal.image.Image_rectangle.Rectangle -> stdgo._internal.image.Image_point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_mod():stdgo._internal.image.Image_rectangle.Rectangle -> stdgo._internal.image.Image_point.Point return @:check31 (this.point ?? throw "null pointer dereference").mod;
    public var mul(get, never) : stdgo.GoInt -> stdgo._internal.image.Image_point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_mul():stdgo.GoInt -> stdgo._internal.image.Image_point.Point return @:check31 (this.point ?? throw "null pointer dereference").mul;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check31 (this.point ?? throw "null pointer dereference").string;
    public var sub(get, never) : stdgo._internal.image.Image_point.Point -> stdgo._internal.image.Image_point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_sub():stdgo._internal.image.Image_point.Point -> stdgo._internal.image.Image_point.Point return @:check31 (this.point ?? throw "null pointer dereference").sub;
    public function __copy__() {
        return new Embed0p(point);
    }
}
