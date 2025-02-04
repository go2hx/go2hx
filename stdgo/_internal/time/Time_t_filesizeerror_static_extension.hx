package stdgo._internal.time;
@:keep @:allow(stdgo._internal.time.Time.T_fileSizeError_asInterface) class T_fileSizeError_static_extension {
    @:keep
    @:tdfield
    static public function error( _f:stdgo._internal.time.Time_t_filesizeerror.T_fileSizeError):stdgo.GoString {
        @:recv var _f:stdgo._internal.time.Time_t_filesizeerror.T_fileSizeError = _f;
        return ((("time: file " : stdgo.GoString) + (_f : stdgo.GoString)?.__copy__() : stdgo.GoString) + (" is too large" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
