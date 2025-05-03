package stdgo._internal.image.jpeg;
@:keep @:allow(stdgo._internal.image.jpeg.Jpeg.UnsupportedError_asInterface) class UnsupportedError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.image.jpeg.Jpeg_unsupportederror.UnsupportedError):stdgo.GoString {
        @:recv var _e:stdgo._internal.image.jpeg.Jpeg_unsupportederror.UnsupportedError = _e;
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/reader.go#L25"
        return (("unsupported JPEG feature: " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
