package stdgo._internal.image.color;
@:structInit @:using(stdgo._internal.image.color.Color_alpha_static_extension.Alpha_static_extension) class Alpha {
    public var a : stdgo.GoUInt8 = 0;
    public function new(?a:stdgo.GoUInt8) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Alpha(a);
    }
}
