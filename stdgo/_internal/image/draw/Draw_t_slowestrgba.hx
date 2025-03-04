package stdgo._internal.image.draw;
@:structInit @:using(stdgo._internal.image.draw.Draw_t_slowestrgba_static_extension.T_slowestRGBA_static_extension) class T_slowestRGBA {
    public var pix : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var stride : stdgo.GoInt = 0;
    public var rect : stdgo._internal.image.Image_rectangle.Rectangle = ({} : stdgo._internal.image.Image_rectangle.Rectangle);
    public function new(?pix:stdgo.Slice<stdgo.GoUInt8>, ?stride:stdgo.GoInt, ?rect:stdgo._internal.image.Image_rectangle.Rectangle) {
        if (pix != null) this.pix = pix;
        if (stride != null) this.stride = stride;
        if (rect != null) this.rect = rect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_slowestRGBA(pix, stride, rect);
    }
}
