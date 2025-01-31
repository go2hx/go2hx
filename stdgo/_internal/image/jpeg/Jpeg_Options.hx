package stdgo._internal.image.jpeg;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.image.internal.imageutil.Imageutil;
@:structInit @:using(stdgo._internal.image.jpeg.Jpeg_Options_static_extension.Options_static_extension) class Options {
    public var quality : stdgo.GoInt = 0;
    public function new(?quality:stdgo.GoInt) {
        if (quality != null) this.quality = quality;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Options(quality);
    }
}
