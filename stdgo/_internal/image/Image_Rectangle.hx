package stdgo._internal.image;
@:structInit @:using(stdgo._internal.image.Image_Rectangle_static_extension.Rectangle_static_extension) class Rectangle {
    public var min : stdgo._internal.image.Image_Point.Point = ({} : stdgo._internal.image.Image_Point.Point);
    public var max : stdgo._internal.image.Image_Point.Point = ({} : stdgo._internal.image.Image_Point.Point);
    public function new(?min:stdgo._internal.image.Image_Point.Point, ?max:stdgo._internal.image.Image_Point.Point) {
        if (min != null) this.min = min;
        if (max != null) this.max = max;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Rectangle(min, max);
    }
}
