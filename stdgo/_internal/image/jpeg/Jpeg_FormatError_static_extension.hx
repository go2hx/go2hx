package stdgo._internal.image.jpeg;
@:keep @:allow(stdgo._internal.image.jpeg.Jpeg.FormatError_asInterface) class FormatError_static_extension {
    @:keep
    static public function error( _e:stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError):stdgo.GoString {
        @:recv var _e:stdgo._internal.image.jpeg.Jpeg_FormatError.FormatError = _e;
        return (("invalid JPEG format: " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
