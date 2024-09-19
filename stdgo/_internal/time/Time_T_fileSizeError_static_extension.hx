package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.time.Time.T_fileSizeError_asInterface) class T_fileSizeError_static_extension {
    @:keep
    static public function error( _f:stdgo._internal.time.Time_T_fileSizeError.T_fileSizeError):stdgo.GoString {
        @:recv var _f:stdgo._internal.time.Time_T_fileSizeError.T_fileSizeError = _f;
        return ((("time: file " : stdgo.GoString) + (_f : stdgo.GoString)?.__copy__() : stdgo.GoString) + (" is too large" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
