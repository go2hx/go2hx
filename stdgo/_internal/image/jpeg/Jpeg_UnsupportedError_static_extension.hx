package stdgo._internal.image.jpeg;
import stdgo._internal.image.color.Color;
import stdgo._internal.image.Image;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.image.internal.imageutil.Imageutil;
@:keep @:allow(stdgo._internal.image.jpeg.Jpeg.UnsupportedError_asInterface) class UnsupportedError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.image.jpeg.Jpeg_UnsupportedError.UnsupportedError):stdgo.GoString {
        @:recv var _e:stdgo._internal.image.jpeg.Jpeg_UnsupportedError.UnsupportedError = _e;
        return (("unsupported JPEG feature: " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
