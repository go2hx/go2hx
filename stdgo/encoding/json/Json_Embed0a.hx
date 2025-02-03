package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.Embed0a_static_extension) abstract Embed0a(stdgo._internal.encoding.json.Json_Embed0a.Embed0a) from stdgo._internal.encoding.json.Json_Embed0a.Embed0a to stdgo._internal.encoding.json.Json_Embed0a.Embed0a {
    public var level1a(get, set) : StdTypes.Int;
    function get_level1a():StdTypes.Int return this.level1a;
    function set_level1a(v:StdTypes.Int):StdTypes.Int {
        this.level1a = (v : stdgo.GoInt);
        return v;
    }
    public var level1b(get, set) : StdTypes.Int;
    function get_level1b():StdTypes.Int return this.level1b;
    function set_level1b(v:StdTypes.Int):StdTypes.Int {
        this.level1b = (v : stdgo.GoInt);
        return v;
    }
    public var level1c(get, set) : StdTypes.Int;
    function get_level1c():StdTypes.Int return this.level1c;
    function set_level1c(v:StdTypes.Int):StdTypes.Int {
        this.level1c = (v : stdgo.GoInt);
        return v;
    }
    public var level1d(get, set) : StdTypes.Int;
    function get_level1d():StdTypes.Int return this.level1d;
    function set_level1d(v:StdTypes.Int):StdTypes.Int {
        this.level1d = (v : stdgo.GoInt);
        return v;
    }
    public var level1f(get, set) : StdTypes.Int;
    function get_level1f():StdTypes.Int return this.level1f;
    function set_level1f(v:StdTypes.Int):StdTypes.Int {
        this.level1f = (v : stdgo.GoInt);
        return v;
    }
    public function new(?level1a:StdTypes.Int, ?level1b:StdTypes.Int, ?level1c:StdTypes.Int, ?level1d:StdTypes.Int, ?level1f:StdTypes.Int) this = new stdgo._internal.encoding.json.Json_Embed0a.Embed0a((level1a : stdgo.GoInt), (level1b : stdgo.GoInt), (level1c : stdgo.GoInt), (level1d : stdgo.GoInt), (level1f : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
