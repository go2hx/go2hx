package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_et0_static_extension.ET0_static_extension) class ET0 {
    public var a : stdgo.GoInt = 0;
    public var b : stdgo.GoString = "";
    public function new(?a:stdgo.GoInt, ?b:stdgo.GoString) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ET0(a, b);
    }
}
