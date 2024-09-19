package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_Embed0p_static_extension.Embed0p_static_extension) class Embed0p {
    @:embedded
    public var point : stdgo._internal.image.Image_Point.Point = ({} : stdgo._internal.image.Image_Point.Point);
    public function new(?point:stdgo._internal.image.Image_Point.Point) {
        if (point != null) this.point = point;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function add(_q:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Point.Point return this.point.add(_q);
    @:embedded
    public function div(_n:stdgo.GoInt):stdgo._internal.image.Image_Point.Point return this.point.div(_n);
    @:embedded
    public function eq(_q:stdgo._internal.image.Image_Point.Point):Bool return this.point.eq(_q);
    @:embedded
    public function in_(_r:stdgo._internal.image.Image_Rectangle.Rectangle):Bool return this.point.in_(_r);
    @:embedded
    public function mod(_r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Point.Point return this.point.mod(_r);
    @:embedded
    public function mul(_n:stdgo.GoInt):stdgo._internal.image.Image_Point.Point return this.point.mul(_n);
    @:embedded
    public function string():stdgo.GoString return this.point.string();
    @:embedded
    public function sub(_q:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Point.Point return this.point.sub(_q);
    public function __copy__() {
        return new Embed0p(point);
    }
}
