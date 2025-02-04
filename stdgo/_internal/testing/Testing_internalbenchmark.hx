package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_internalbenchmark_static_extension.InternalBenchmark_static_extension) class InternalBenchmark {
    public var name : stdgo.GoString = "";
    public var f : stdgo.Ref<stdgo._internal.testing.Testing_b.B> -> Void = null;
    public function new(?name:stdgo.GoString, ?f:stdgo.Ref<stdgo._internal.testing.Testing_b.B> -> Void) {
        if (name != null) this.name = name;
        if (f != null) this.f = f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new InternalBenchmark(name, f);
    }
}
