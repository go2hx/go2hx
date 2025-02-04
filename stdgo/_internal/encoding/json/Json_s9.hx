package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_s9_static_extension.S9_static_extension) class S9 {
    public var x : stdgo.GoInt = 0;
    public var y : stdgo.GoInt = 0;
    public function new(?x:stdgo.GoInt, ?y:stdgo.GoInt) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S9(x, y);
    }
}
