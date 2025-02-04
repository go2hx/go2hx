package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_rt0_static_extension.RT0_static_extension) class RT0 {
    public var a : stdgo.GoInt = 0;
    public var b : stdgo.GoString = "";
    public var c : stdgo.GoFloat64 = 0;
    public function new(?a:stdgo.GoInt, ?b:stdgo.GoString, ?c:stdgo.GoFloat64) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RT0(a, b, c);
    }
}
