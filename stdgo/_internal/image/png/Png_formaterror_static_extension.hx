package stdgo._internal.image.png;
@:keep @:allow(stdgo._internal.image.png.Png.FormatError_asInterface) class FormatError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.image.png.Png_formaterror.FormatError):stdgo.GoString {
        @:recv var _e:stdgo._internal.image.png.Png_formaterror.FormatError = _e;
        return (("png: invalid format: " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
