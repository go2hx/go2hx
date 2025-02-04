package stdgo._internal.debug.gosym;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.UnknownFileError_asInterface) class UnknownFileError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.debug.gosym.Gosym_unknownfileerror.UnknownFileError):stdgo.GoString {
        @:recv var _e:stdgo._internal.debug.gosym.Gosym_unknownfileerror.UnknownFileError = _e;
        return (("unknown file: " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
