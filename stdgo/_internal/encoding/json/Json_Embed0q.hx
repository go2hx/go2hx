package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_Embed0q_static_extension.Embed0q_static_extension) class Embed0q {
    @:embedded
    public var point : stdgo._internal.encoding.json.Json_Point.Point = ({} : stdgo._internal.encoding.json.Json_Point.Point);
    public function new(?point:stdgo._internal.encoding.json.Json_Point.Point) {
        if (point != null) this.point = point;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Embed0q(point);
    }
}