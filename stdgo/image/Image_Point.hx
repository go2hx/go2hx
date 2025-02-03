package stdgo.image;
@:structInit @:using(stdgo.image.Image.Point_static_extension) abstract Point(stdgo._internal.image.Image_Point.Point) from stdgo._internal.image.Image_Point.Point to stdgo._internal.image.Image_Point.Point {
    public var x(get, set) : StdTypes.Int;
    function get_x():StdTypes.Int return this.x;
    function set_x(v:StdTypes.Int):StdTypes.Int {
        this.x = (v : stdgo.GoInt);
        return v;
    }
    public var y(get, set) : StdTypes.Int;
    function get_y():StdTypes.Int return this.y;
    function set_y(v:StdTypes.Int):StdTypes.Int {
        this.y = (v : stdgo.GoInt);
        return v;
    }
    public function new(?x:StdTypes.Int, ?y:StdTypes.Int) this = new stdgo._internal.image.Image_Point.Point((x : stdgo.GoInt), (y : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
