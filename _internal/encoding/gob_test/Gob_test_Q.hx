package _internal.encoding.gob_test;
@:structInit class Q {
    public var x : stdgo.Pointer<stdgo.GoInt32> = (null : stdgo.Pointer<stdgo.GoInt32>);
    public var y : stdgo.Pointer<stdgo.GoInt32> = (null : stdgo.Pointer<stdgo.GoInt32>);
    public var name : stdgo.GoString = "";
    public function new(?x:stdgo.Pointer<stdgo.GoInt32>, ?y:stdgo.Pointer<stdgo.GoInt32>, ?name:stdgo.GoString) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Q(x, y, name);
    }
}
