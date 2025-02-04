package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_b_static_extension.B_static_extension) class B {
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
