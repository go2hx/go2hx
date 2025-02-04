package stdgo._internal.image.jpeg;
@:keep @:allow(stdgo._internal.image.jpeg.Jpeg.UnsupportedError_asInterface) class UnsupportedError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.image.jpeg.Jpeg_unsupportederror.UnsupportedError):stdgo.GoString {
        @:recv var _e:stdgo._internal.image.jpeg.Jpeg_unsupportederror.UnsupportedError = _e;
        return (("unsupported JPEG feature: " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
