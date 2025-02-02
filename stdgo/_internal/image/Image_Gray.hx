package stdgo._internal.image;
@:structInit @:using(stdgo._internal.image.Image_Gray_static_extension.Gray_static_extension) class Gray {
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var stride : stdgo.GoInt = 0;
    public var rect : stdgo._internal.image.Image_Rectangle.Rectangle = ({} : stdgo._internal.image.Image_Rectangle.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo._internal.image.Image_Rectangle.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Gray(pix, stride, rect);
    }
}
