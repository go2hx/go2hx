package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_s6_static_extension.S6_static_extension) class S6 {
    public var x : stdgo.GoInt = 0;
    public function new(?x:stdgo.GoInt) {
        if (x != null) this.x = x;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new S6(x);
    }
}
