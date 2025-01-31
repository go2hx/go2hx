package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.flate.Flate.WriteError_asInterface) class WriteError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_WriteError.WriteError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_WriteError.WriteError> = _e;
        return (((("flate: write error at offset " : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((@:checkr _e ?? throw "null pointer dereference").offset, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw "null pointer dereference").err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
