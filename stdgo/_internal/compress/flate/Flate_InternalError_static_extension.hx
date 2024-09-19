package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.InternalError_asInterface) class InternalError_static_extension {
    @:keep
    static public function error( _e:stdgo._internal.compress.flate.Flate_InternalError.InternalError):stdgo.GoString {
        @:recv var _e:stdgo._internal.compress.flate.Flate_InternalError.InternalError = _e;
        return (("flate: internal error: " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
