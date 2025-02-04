package stdgo._internal.image.color;
@:structInit @:using(stdgo._internal.image.color.Color_gray16_static_extension.Gray16_static_extension) class Gray16 {
    public var y : stdgo.GoUInt16 = 0;
    public function new(?y:stdgo.GoUInt16) {
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Gray16(y);
    }
}
