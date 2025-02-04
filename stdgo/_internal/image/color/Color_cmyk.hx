package stdgo._internal.image.color;
@:structInit @:using(stdgo._internal.image.color.Color_cmyk_static_extension.CMYK_static_extension) class CMYK {
    public var c : stdgo.GoUInt8 = 0;
    public var m : stdgo.GoUInt8 = 0;
    public var y : stdgo.GoUInt8 = 0;
    public var k : stdgo.GoUInt8 = 0;
    public function new(?c:stdgo.GoUInt8, ?m:stdgo.GoUInt8, ?y:stdgo.GoUInt8, ?k:stdgo.GoUInt8) {
        if (c != null) this.c = c;
        if (m != null) this.m = m;
        if (y != null) this.y = y;
        if (k != null) this.k = k;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CMYK(c, m, y, k);
    }
}
