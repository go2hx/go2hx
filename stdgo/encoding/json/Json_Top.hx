package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.Top_static_extension) abstract Top(stdgo._internal.encoding.json.Json_Top.Top) from stdgo._internal.encoding.json.Json_Top.Top to stdgo._internal.encoding.json.Json_Top.Top {
    public var level0(get, set) : StdTypes.Int;
    function get_level0():StdTypes.Int return this.level0;
    function set_level0(v:StdTypes.Int):StdTypes.Int {
        this.level0 = (v : stdgo.GoInt);
        return v;
    }
    public var embed0(get, set) : Embed0;
    function get_embed0():Embed0 return this.embed0;
    function set_embed0(v:Embed0):Embed0 {
        this.embed0 = v;
        return v;
    }
    public var embed0a(get, set) : Embed0a;
    function get_embed0a():Embed0a return this.embed0a;
    function set_embed0a(v:Embed0a):Embed0a {
        this.embed0a = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_Embed0a.Embed0a>);
        return v;
    }
    public var embed0b(get, set) : Embed0b;
    function get_embed0b():Embed0b return this.embed0b;
    function set_embed0b(v:Embed0b):Embed0b {
        this.embed0b = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_Embed0b.Embed0b>);
        return v;
    }
    public var embed0c(get, set) : Embed0c;
    function get_embed0c():Embed0c return this.embed0c;
    function set_embed0c(v:Embed0c):Embed0c {
        this.embed0c = v;
        return v;
    }
    public var loop(get, set) : Loop;
    function get_loop():Loop return this.loop;
    function set_loop(v:Loop):Loop {
        this.loop = v;
        return v;
    }
    public var embed0p(get, set) : Embed0p;
    function get_embed0p():Embed0p return this.embed0p;
    function set_embed0p(v:Embed0p):Embed0p {
        this.embed0p = v;
        return v;
    }
    public var embed0q(get, set) : Embed0q;
    function get_embed0q():Embed0q return this.embed0q;
    function set_embed0q(v:Embed0q):Embed0q {
        this.embed0q = v;
        return v;
    }
    public var _embed(get, set) : T_embed;
    function get__embed():T_embed return this._embed;
    function set__embed(v:T_embed):T_embed {
        this._embed = v;
        return v;
    }
    public function new(?level0:StdTypes.Int, ?embed0:Embed0, ?embed0a:Embed0a, ?embed0b:Embed0b, ?embed0c:Embed0c, ?loop:Loop, ?embed0p:Embed0p, ?embed0q:Embed0q, ?_embed:T_embed) this = new stdgo._internal.encoding.json.Json_Top.Top((level0 : stdgo.GoInt), embed0, (embed0a : stdgo.Ref<stdgo._internal.encoding.json.Json_Embed0a.Embed0a>), (embed0b : stdgo.Ref<stdgo._internal.encoding.json.Json_Embed0b.Embed0b>), embed0c, loop, embed0p, embed0q, _embed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
