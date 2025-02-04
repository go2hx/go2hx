package stdgo._internal.image.color;
@:structInit @:using(stdgo._internal.image.color.Color_gray_static_extension.Gray_static_extension) class Gray {
    public var y : stdgo.GoUInt8 = 0;
    public function new(?y:stdgo.GoUInt8) {
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Gray(y);
    }
}
