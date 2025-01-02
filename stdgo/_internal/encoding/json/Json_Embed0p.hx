package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_Embed0p_static_extension.Embed0p_static_extension) class Embed0p {
    @:embedded
    public var point : stdgo._internal.image.Image_Point.Point = ({} : stdgo._internal.image.Image_Point.Point);
    public function new(?point:stdgo._internal.image.Image_Point.Point) {
        if (point != null) this.point = point;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var add(get, never) : stdgo._internal.image.Image_Point.Point -> stdgo._internal.image.Image_Point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_add():stdgo._internal.image.Image_Point.Point -> stdgo._internal.image.Image_Point.Point return @:check3 (this.point ?? throw "null pointer derefrence").add;
    public var div(get, never) : stdgo.GoInt -> stdgo._internal.image.Image_Point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_div():stdgo.GoInt -> stdgo._internal.image.Image_Point.Point return @:check3 (this.point ?? throw "null pointer derefrence").div;
    public var eq(get, never) : stdgo._internal.image.Image_Point.Point -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_eq():stdgo._internal.image.Image_Point.Point -> Bool return @:check3 (this.point ?? throw "null pointer derefrence").eq;
    public var in_(get, never) : stdgo._internal.image.Image_Rectangle.Rectangle -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_in_():stdgo._internal.image.Image_Rectangle.Rectangle -> Bool return @:check3 (this.point ?? throw "null pointer derefrence").in_;
    public var mod(get, never) : stdgo._internal.image.Image_Rectangle.Rectangle -> stdgo._internal.image.Image_Point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_mod():stdgo._internal.image.Image_Rectangle.Rectangle -> stdgo._internal.image.Image_Point.Point return @:check3 (this.point ?? throw "null pointer derefrence").mod;
    public var mul(get, never) : stdgo.GoInt -> stdgo._internal.image.Image_Point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_mul():stdgo.GoInt -> stdgo._internal.image.Image_Point.Point return @:check3 (this.point ?? throw "null pointer derefrence").mul;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check3 (this.point ?? throw "null pointer derefrence").string;
    public var sub(get, never) : stdgo._internal.image.Image_Point.Point -> stdgo._internal.image.Image_Point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_sub():stdgo._internal.image.Image_Point.Point -> stdgo._internal.image.Image_Point.Point return @:check3 (this.point ?? throw "null pointer derefrence").sub;
    public function __copy__() {
        return new Embed0p(point);
    }
}
