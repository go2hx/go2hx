package stdgo._internal.image.color;
@:structInit @:using(stdgo._internal.image.color.Color_ycbcr_static_extension.YCbCr_static_extension) class YCbCr {
    public var y : stdgo.GoUInt8 = 0;
    public var cb : stdgo.GoUInt8 = 0;
    public var cr : stdgo.GoUInt8 = 0;
    public function new(?y:stdgo.GoUInt8, ?cb:stdgo.GoUInt8, ?cr:stdgo.GoUInt8) {
        if (y != null) this.y = y;
        if (cb != null) this.cb = cb;
        if (cr != null) this.cr = cr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new YCbCr(y, cb, cr);
    }
}
