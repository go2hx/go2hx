package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.InternalFuzzTarget_static_extension) abstract InternalFuzzTarget(stdgo._internal.testing.Testing_InternalFuzzTarget.InternalFuzzTarget) from stdgo._internal.testing.Testing_InternalFuzzTarget.InternalFuzzTarget to stdgo._internal.testing.Testing_InternalFuzzTarget.InternalFuzzTarget {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var fn(get, set) : stdgo.Ref<stdgo._internal.testing.Testing_F.F> -> Void;
    function get_fn():stdgo.Ref<stdgo._internal.testing.Testing_F.F> -> Void return _0 -> this.fn(_0);
    function set_fn(v:stdgo.Ref<stdgo._internal.testing.Testing_F.F> -> Void):stdgo.Ref<stdgo._internal.testing.Testing_F.F> -> Void {
        this.fn = v;
        return v;
    }
    public function new(?name:String, ?fn:stdgo.Ref<stdgo._internal.testing.Testing_F.F> -> Void) this = new stdgo._internal.testing.Testing_InternalFuzzTarget.InternalFuzzTarget((name : stdgo.GoString), fn);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
