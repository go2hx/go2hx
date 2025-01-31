package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.flate.Flate.CorruptInputError_asInterface) class CorruptInputError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError):stdgo.GoString {
        @:recv var _e:stdgo._internal.compress.flate.Flate_CorruptInputError.CorruptInputError = _e;
        return (("flate: corrupt input before offset " : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((_e : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
