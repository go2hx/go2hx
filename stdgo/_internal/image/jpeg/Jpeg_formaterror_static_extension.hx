package stdgo._internal.image.jpeg;
@:keep @:allow(stdgo._internal.image.jpeg.Jpeg.FormatError_asInterface) class FormatError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.image.jpeg.Jpeg_formaterror.FormatError):stdgo.GoString {
        @:recv var _e:stdgo._internal.image.jpeg.Jpeg_formaterror.FormatError = _e;
        //"file:///home/runner/.go/go1.21.3/src/image/jpeg/reader.go#L20"
        return (("invalid JPEG format: " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
