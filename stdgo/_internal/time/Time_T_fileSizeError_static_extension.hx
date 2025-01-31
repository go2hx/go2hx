package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(stdgo._internal.time.Time.T_fileSizeError_asInterface) class T_fileSizeError_static_extension {
    @:keep
    @:tdfield
    static public function error( _f:stdgo._internal.time.Time_T_fileSizeError.T_fileSizeError):stdgo.GoString {
        @:recv var _f:stdgo._internal.time.Time_T_fileSizeError.T_fileSizeError = _f;
        return ((("time: file " : stdgo.GoString) + (_f : stdgo.GoString)?.__copy__() : stdgo.GoString) + (" is too large" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
