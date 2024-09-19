package stdgo._internal.debug.gosym;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.UnknownFileError_asInterface) class UnknownFileError_static_extension {
    @:keep
    static public function error( _e:stdgo._internal.debug.gosym.Gosym_UnknownFileError.UnknownFileError):stdgo.GoString {
        @:recv var _e:stdgo._internal.debug.gosym.Gosym_UnknownFileError.UnknownFileError = _e;
        return (("unknown file: " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
