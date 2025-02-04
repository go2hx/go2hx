package stdgo._internal.image.png;
@:keep @:allow(stdgo._internal.image.png.Png.UnsupportedError_asInterface) class UnsupportedError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.image.png.Png_unsupportederror.UnsupportedError):stdgo.GoString {
        @:recv var _e:stdgo._internal.image.png.Png_unsupportederror.UnsupportedError = _e;
        return (("png: unsupported feature: " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
