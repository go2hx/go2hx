package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_point_static_extension.Point_static_extension) class Point {
    public var z : stdgo.GoInt = 0;
    public function new(?z:stdgo.GoInt) {
        if (z != null) this.z = z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Point(z);
    }
}
