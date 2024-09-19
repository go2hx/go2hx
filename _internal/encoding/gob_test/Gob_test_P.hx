package _internal.encoding.gob_test;
@:structInit class P {
    public var x : stdgo.GoInt = 0;
    public var y : stdgo.GoInt = 0;
    public var z : stdgo.GoInt = 0;
    public var name : stdgo.GoString = "";
    public function new(?x:stdgo.GoInt, ?y:stdgo.GoInt, ?z:stdgo.GoInt, ?name:stdgo.GoString) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (z != null) this.z = z;
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new P(x, y, z, name);
    }
}
