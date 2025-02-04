package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_embed0a_static_extension.Embed0a_static_extension) class Embed0a {
    @:tag("`json:\"Level1a,omitempty\"`")
    public var level1a : stdgo.GoInt = 0;
    @:tag("`json:\"LEVEL1B,omitempty\"`")
    public var level1b : stdgo.GoInt = 0;
    @:tag("`json:\"-\"`")
    public var level1c : stdgo.GoInt = 0;
    public var level1d : stdgo.GoInt = 0;
    @:tag("`json:\"x\"`")
    public var level1f : stdgo.GoInt = 0;
    public function new(?level1a:stdgo.GoInt, ?level1b:stdgo.GoInt, ?level1c:stdgo.GoInt, ?level1d:stdgo.GoInt, ?level1f:stdgo.GoInt) {
        if (level1a != null) this.level1a = level1a;
        if (level1b != null) this.level1b = level1b;
        if (level1c != null) this.level1c = level1c;
        if (level1d != null) this.level1d = level1d;
        if (level1f != null) this.level1f = level1f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Embed0a(level1a, level1b, level1c, level1d, level1f);
    }
}
