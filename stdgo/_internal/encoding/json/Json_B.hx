package stdgo._internal.encoding.json;
@:structInit class B {
    @:tag("`json:\",string\"`")
    public var b : Bool = false;
    public function new(?b:Bool) {
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new B(b);
    }
}
