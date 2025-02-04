package stdgo._internal.image.gif;
@:structInit @:using(stdgo._internal.image.gif.Gif_gif_static_extension.GIF_static_extension) class GIF {
    public var image : stdgo.Slice<stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>>);
    public var delay : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var loopCount : stdgo.GoInt = 0;
    public var disposal : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var config : stdgo._internal.image.Image_config.Config = ({} : stdgo._internal.image.Image_config.Config);
    public var backgroundIndex : stdgo.GoUInt8 = 0;
    public function new(?image:stdgo.Slice<stdgo.Ref<stdgo._internal.image.Image_paletted.Paletted>>, ?delay:stdgo.Slice<stdgo.GoInt>, ?loopCount:stdgo.GoInt, ?disposal:stdgo.Slice<stdgo.GoUInt8>, ?config:stdgo._internal.image.Image_config.Config, ?backgroundIndex:stdgo.GoUInt8) {
        if (image != null) this.image = image;
        if (delay != null) this.delay = delay;
        if (loopCount != null) this.loopCount = loopCount;
        if (disposal != null) this.disposal = disposal;
        if (config != null) this.config = config;
        if (backgroundIndex != null) this.backgroundIndex = backgroundIndex;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GIF(image, delay, loopCount, disposal, config, backgroundIndex);
    }
}
