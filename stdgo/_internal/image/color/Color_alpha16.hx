package stdgo._internal.image.color;
@:structInit @:using(stdgo._internal.image.color.Color_alpha16_static_extension.Alpha16_static_extension) class Alpha16 {
    public var a : stdgo.GoUInt16 = 0;
    public function new(?a:stdgo.GoUInt16) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Alpha16(a);
    }
}
