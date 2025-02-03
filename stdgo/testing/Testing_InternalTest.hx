package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.InternalTest_static_extension) abstract InternalTest(stdgo._internal.testing.Testing_InternalTest.InternalTest) from stdgo._internal.testing.Testing_InternalTest.InternalTest to stdgo._internal.testing.Testing_InternalTest.InternalTest {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var f(get, set) : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void;
    function get_f():stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void return _0 -> this.f(_0);
    function set_f(v:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void):stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void {
        this.f = v;
        return v;
    }
    public function new(?name:String, ?f:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void) this = new stdgo._internal.testing.Testing_InternalTest.InternalTest((name : stdgo.GoString), f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
