package stdgo.testing;
@:structInit @:using(stdgo.testing.Testing.InternalExample_static_extension) abstract InternalExample(stdgo._internal.testing.Testing_InternalExample.InternalExample) from stdgo._internal.testing.Testing_InternalExample.InternalExample to stdgo._internal.testing.Testing_InternalExample.InternalExample {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var f(get, set) : () -> Void;
    function get_f():() -> Void return () -> this.f();
    function set_f(v:() -> Void):() -> Void {
        this.f = v;
        return v;
    }
    public var output(get, set) : String;
    function get_output():String return this.output;
    function set_output(v:String):String {
        this.output = (v : stdgo.GoString);
        return v;
    }
    public var unordered(get, set) : Bool;
    function get_unordered():Bool return this.unordered;
    function set_unordered(v:Bool):Bool {
        this.unordered = v;
        return v;
    }
    public function new(?name:String, ?f:() -> Void, ?output:String, ?unordered:Bool) this = new stdgo._internal.testing.Testing_InternalExample.InternalExample((name : stdgo.GoString), f, (output : stdgo.GoString), unordered);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
