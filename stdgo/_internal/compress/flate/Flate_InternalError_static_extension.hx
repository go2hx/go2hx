package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.flate.Flate.InternalError_asInterface) class InternalError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.compress.flate.Flate_InternalError.InternalError):stdgo.GoString {
        @:recv var _e:stdgo._internal.compress.flate.Flate_InternalError.InternalError = _e;
        return (("flate: internal error: " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
