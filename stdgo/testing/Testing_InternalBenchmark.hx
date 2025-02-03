package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.InternalBenchmark_static_extension) abstract InternalBenchmark(stdgo._internal.testing.Testing_InternalBenchmark.InternalBenchmark) from stdgo._internal.testing.Testing_InternalBenchmark.InternalBenchmark to stdgo._internal.testing.Testing_InternalBenchmark.InternalBenchmark {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var f(get, set) : stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void;
    function get_f():stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void return _0 -> this.f(_0);
    function set_f(v:stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void):stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void {
        this.f = v;
        return v;
    }
    public function new(?name:String, ?f:stdgo.Ref<stdgo._internal.testing.Testing_B.B> -> Void) this = new stdgo._internal.testing.Testing_InternalBenchmark.InternalBenchmark((name : stdgo.GoString), f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
