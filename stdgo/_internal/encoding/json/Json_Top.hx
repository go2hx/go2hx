package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_Top_static_extension.Top_static_extension) class Top {
    public var level0 : stdgo.GoInt = 0;
    @:embedded
    public var embed0 : stdgo._internal.encoding.json.Json_Embed0.Embed0 = ({} : stdgo._internal.encoding.json.Json_Embed0.Embed0);
    @:embedded
    public var embed0a : stdgo.Ref<stdgo._internal.encoding.json.Json_Embed0a.Embed0a> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_Embed0a.Embed0a>);
    @:embedded
    @:tag("`json:\"e,omitempty\"`")
    public var embed0b : stdgo.Ref<stdgo._internal.encoding.json.Json_Embed0b.Embed0b> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_Embed0b.Embed0b>);
    @:embedded
    @:tag("`json:\"-\"`")
    public var embed0c : stdgo._internal.encoding.json.Json_Embed0c.Embed0c = ({} : stdgo._internal.encoding.json.Json_Embed0c.Embed0c);
    @:embedded
    public var loop : stdgo._internal.encoding.json.Json_Loop.Loop = ({} : stdgo._internal.encoding.json.Json_Loop.Loop);
    @:embedded
    public var embed0p : stdgo._internal.encoding.json.Json_Embed0p.Embed0p = ({} : stdgo._internal.encoding.json.Json_Embed0p.Embed0p);
    @:embedded
    public var embed0q : stdgo._internal.encoding.json.Json_Embed0q.Embed0q = ({} : stdgo._internal.encoding.json.Json_Embed0q.Embed0q);
    @:embedded
    public var _embed : stdgo._internal.encoding.json.Json_T_embed.T_embed = ({} : stdgo._internal.encoding.json.Json_T_embed.T_embed);
    public function new(?level0:stdgo.GoInt, ?embed0:stdgo._internal.encoding.json.Json_Embed0.Embed0, ?embed0a:stdgo.Ref<stdgo._internal.encoding.json.Json_Embed0a.Embed0a>, ?embed0b:stdgo.Ref<stdgo._internal.encoding.json.Json_Embed0b.Embed0b>, ?embed0c:stdgo._internal.encoding.json.Json_Embed0c.Embed0c, ?loop:stdgo._internal.encoding.json.Json_Loop.Loop, ?embed0p:stdgo._internal.encoding.json.Json_Embed0p.Embed0p, ?embed0q:stdgo._internal.encoding.json.Json_Embed0q.Embed0q, ?_embed:stdgo._internal.encoding.json.Json_T_embed.T_embed) {
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
    @:embedded
    public function add(_q:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Point.Point return this.embed0p.add(_q);
    @:embedded
    public function div(_n:stdgo.GoInt):stdgo._internal.image.Image_Point.Point return this.embed0p.div(_n);
    @:embedded
    public function eq(_q:stdgo._internal.image.Image_Point.Point):Bool return this.embed0p.eq(_q);
    @:embedded
    public function in_(_r:stdgo._internal.image.Image_Rectangle.Rectangle):Bool return this.embed0p.in_(_r);
    @:embedded
    public function mod(_r:stdgo._internal.image.Image_Rectangle.Rectangle):stdgo._internal.image.Image_Point.Point return this.embed0p.mod(_r);
    @:embedded
    public function mul(_n:stdgo.GoInt):stdgo._internal.image.Image_Point.Point return this.embed0p.mul(_n);
    @:embedded
    public function string():stdgo.GoString return this.embed0p.string();
    @:embedded
    public function sub(_q:stdgo._internal.image.Image_Point.Point):stdgo._internal.image.Image_Point.Point return this.embed0p.sub(_q);
    public function __copy__() {
        return new Top(level0, embed0, embed0a, embed0b, embed0c, loop, embed0p, embed0q, _embed);
    }
}
