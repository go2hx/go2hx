package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.Loop_static_extension) abstract Loop(stdgo._internal.encoding.json.Json_Loop.Loop) from stdgo._internal.encoding.json.Json_Loop.Loop to stdgo._internal.encoding.json.Json_Loop.Loop {
    public var loop1(get, set) : StdTypes.Int;
    function get_loop1():StdTypes.Int return this.loop1;
    function set_loop1(v:StdTypes.Int):StdTypes.Int {
        this.loop1 = (v : stdgo.GoInt);
        return v;
    }
    public var loop2(get, set) : StdTypes.Int;
    function get_loop2():StdTypes.Int return this.loop2;
    function set_loop2(v:StdTypes.Int):StdTypes.Int {
        this.loop2 = (v : stdgo.GoInt);
        return v;
    }
    public var loop(get, set) : Loop;
    function get_loop():Loop return this.loop;
    function set_loop(v:Loop):Loop {
        this.loop = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_Loop.Loop>);
        return v;
    }
    public function new(?loop1:StdTypes.Int, ?loop2:StdTypes.Int, ?loop:Loop) this = new stdgo._internal.encoding.json.Json_Loop.Loop((loop1 : stdgo.GoInt), (loop2 : stdgo.GoInt), (loop : stdgo.Ref<stdgo._internal.encoding.json.Json_Loop.Loop>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
