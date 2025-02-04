package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_rt1_static_extension.RT1_static_extension) class RT1 {
    public var c : stdgo.GoFloat64 = 0;
    public var b : stdgo.GoString = "";
    public var a : stdgo.GoInt = 0;
    public var notSet : stdgo.GoString = "";
    public function new(?c:stdgo.GoFloat64, ?b:stdgo.GoString, ?a:stdgo.GoInt, ?notSet:stdgo.GoString) {
        if (c != null) this.c = c;
        if (b != null) this.b = b;
        if (a != null) this.a = a;
        if (notSet != null) this.notSet = notSet;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RT1(c, b, a, notSet);
    }
}
