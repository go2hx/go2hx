package stdgo._internal.encoding.gob;
@:structInit class GobTest2 {
    public var x : stdgo.GoInt = 0;
    public var g : stdgo.GoString = "";
    public function new(?x:stdgo.GoInt, ?g:stdgo.GoString) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest2(x, g);
    }
}