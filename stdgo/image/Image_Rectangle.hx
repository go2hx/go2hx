package stdgo.image;
@:structInit @:using(stdgo.image.Image.Rectangle_static_extension) abstract Rectangle(stdgo._internal.image.Image_Rectangle.Rectangle) from stdgo._internal.image.Image_Rectangle.Rectangle to stdgo._internal.image.Image_Rectangle.Rectangle {
    public var min(get, set) : Point;
    function get_min():Point return this.min;
    function set_min(v:Point):Point {
        this.min = v;
        return v;
    }
    public var max(get, set) : Point;
    function get_max():Point return this.max;
    function set_max(v:Point):Point {
        this.max = v;
        return v;
    }
    public function new(?min:Point, ?max:Point) this = new stdgo._internal.image.Image_Rectangle.Rectangle(min, max);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
