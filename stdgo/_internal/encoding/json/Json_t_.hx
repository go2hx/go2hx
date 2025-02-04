package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t__static_extension.T__static_extension) class T_ {
    public var x : stdgo.GoString = "";
    public var y : stdgo.GoInt = 0;
    @:tag("`json:\"-\"`")
    public var z : stdgo.GoInt = 0;
    public function new(?x:stdgo.GoString, ?y:stdgo.GoInt, ?z:stdgo.GoInt) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (z != null) this.z = z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_(x, y, z);
    }
}
