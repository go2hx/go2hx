package stdgo._internal.image.jpeg;
@:structInit @:using(stdgo._internal.image.jpeg.Jpeg_options_static_extension.Options_static_extension) class Options {
    public var quality : stdgo.GoInt = 0;
    public function new(?quality:stdgo.GoInt) {
        if (quality != null) this.quality = quality;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Options(quality);
    }
}
