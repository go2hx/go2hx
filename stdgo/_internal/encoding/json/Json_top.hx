package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_top_static_extension.Top_static_extension) class Top {
    public var level0 : stdgo.GoInt = 0;
    @:embedded
    public var embed0 : stdgo._internal.encoding.json.Json_embed0.Embed0 = ({} : stdgo._internal.encoding.json.Json_embed0.Embed0);
    @:embedded
    public var embed0a : stdgo.Ref<stdgo._internal.encoding.json.Json_embed0a.Embed0a> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_embed0a.Embed0a>);
    @:embedded
    @:tag("`json:\"e,omitempty\"`")
    public var embed0b : stdgo.Ref<stdgo._internal.encoding.json.Json_embed0b.Embed0b> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_embed0b.Embed0b>);
    @:embedded
    @:tag("`json:\"-\"`")
    public var embed0c : stdgo._internal.encoding.json.Json_embed0c.Embed0c = ({} : stdgo._internal.encoding.json.Json_embed0c.Embed0c);
    @:embedded
    public var loop : stdgo._internal.encoding.json.Json_loop.Loop = ({} : stdgo._internal.encoding.json.Json_loop.Loop);
    @:embedded
    public var embed0p : stdgo._internal.encoding.json.Json_embed0p.Embed0p = ({} : stdgo._internal.encoding.json.Json_embed0p.Embed0p);
    @:embedded
    public var embed0q : stdgo._internal.encoding.json.Json_embed0q.Embed0q = ({} : stdgo._internal.encoding.json.Json_embed0q.Embed0q);
    @:embedded
    public var _embed : stdgo._internal.encoding.json.Json_t_embed.T_embed = ({} : stdgo._internal.encoding.json.Json_t_embed.T_embed);
    public function new(?level0:stdgo.GoInt, ?embed0:stdgo._internal.encoding.json.Json_embed0.Embed0, ?embed0a:stdgo.Ref<stdgo._internal.encoding.json.Json_embed0a.Embed0a>, ?embed0b:stdgo.Ref<stdgo._internal.encoding.json.Json_embed0b.Embed0b>, ?embed0c:stdgo._internal.encoding.json.Json_embed0c.Embed0c, ?loop:stdgo._internal.encoding.json.Json_loop.Loop, ?embed0p:stdgo._internal.encoding.json.Json_embed0p.Embed0p, ?embed0q:stdgo._internal.encoding.json.Json_embed0q.Embed0q, ?_embed:stdgo._internal.encoding.json.Json_t_embed.T_embed) {
        if (level0 != null) this.level0 = level0;
        if (embed0 != null) this.embed0 = embed0;
        if (embed0a != null) this.embed0a = embed0a;
        if (embed0b != null) this.embed0b = embed0b;
        if (embed0c != null) this.embed0c = embed0c;
        if (loop != null) this.loop = loop;
        if (embed0p != null) this.embed0p = embed0p;
        if (embed0q != null) this.embed0q = embed0q;
        if (_embed != null) this._embed = _embed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var add(get, never) : stdgo._internal.image.Image_point.Point -> stdgo._internal.image.Image_point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_add():stdgo._internal.image.Image_point.Point -> stdgo._internal.image.Image_point.Point return @:check31 (this.embed0p ?? throw "null pointer dereference").add;
    public var div(get, never) : stdgo.GoInt -> stdgo._internal.image.Image_point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_div():stdgo.GoInt -> stdgo._internal.image.Image_point.Point return @:check31 (this.embed0p ?? throw "null pointer dereference").div;
    public var eq(get, never) : stdgo._internal.image.Image_point.Point -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_eq():stdgo._internal.image.Image_point.Point -> Bool return @:check31 (this.embed0p ?? throw "null pointer dereference").eq;
    public var in_(get, never) : stdgo._internal.image.Image_rectangle.Rectangle -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_in_():stdgo._internal.image.Image_rectangle.Rectangle -> Bool return @:check31 (this.embed0p ?? throw "null pointer dereference").in_;
    public var mod(get, never) : stdgo._internal.image.Image_rectangle.Rectangle -> stdgo._internal.image.Image_point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_mod():stdgo._internal.image.Image_rectangle.Rectangle -> stdgo._internal.image.Image_point.Point return @:check31 (this.embed0p ?? throw "null pointer dereference").mod;
    public var mul(get, never) : stdgo.GoInt -> stdgo._internal.image.Image_point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_mul():stdgo.GoInt -> stdgo._internal.image.Image_point.Point return @:check31 (this.embed0p ?? throw "null pointer dereference").mul;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check31 (this.embed0p ?? throw "null pointer dereference").string;
    public var sub(get, never) : stdgo._internal.image.Image_point.Point -> stdgo._internal.image.Image_point.Point;
    @:embedded
    @:embeddededffieldsffun
    public function get_sub():stdgo._internal.image.Image_point.Point -> stdgo._internal.image.Image_point.Point return @:check31 (this.embed0p ?? throw "null pointer dereference").sub;
    public function __copy__() {
        return new Top(level0, embed0, embed0a, embed0b, embed0c, loop, embed0p, embed0q, _embed);
    }
}
