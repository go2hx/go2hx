package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_bench_static_extension.Bench_static_extension) class Bench {
    public var a : stdgo.GoInt = 0;
    public var b : stdgo.GoFloat64 = 0;
    public var c : stdgo.GoString = "";
    public var d : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?a:stdgo.GoInt, ?b:stdgo.GoFloat64, ?c:stdgo.GoString, ?d:stdgo.Slice<stdgo.GoUInt8>) {
        if (a != null) this.a = a;
        if (b != null) this.b = b;
        if (c != null) this.c = c;
        if (d != null) this.d = d;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Bench(a, b, c, d);
    }
}
