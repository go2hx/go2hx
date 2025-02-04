package stdgo._internal.image.color;
@:structInit @:using(stdgo._internal.image.color.Color_nrgba64_static_extension.NRGBA64_static_extension) class NRGBA64 {
    public var r : stdgo.GoUInt16 = 0;
    public var g : stdgo.GoUInt16 = 0;
    public var b : stdgo.GoUInt16 = 0;
    public var a : stdgo.GoUInt16 = 0;
    public function new(?r:stdgo.GoUInt16, ?g:stdgo.GoUInt16, ?b:stdgo.GoUInt16, ?a:stdgo.GoUInt16) {
        if (r != null) this.r = r;
        if (g != null) this.g = g;
        if (b != null) this.b = b;
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new NRGBA64(r, g, b, a);
    }
}
