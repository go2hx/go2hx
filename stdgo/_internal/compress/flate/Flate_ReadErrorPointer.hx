package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:follow @:using(stdgo._internal.compress.flate.Flate_ReadError_static_extension.ReadError_static_extension) typedef ReadErrorPointer = stdgo.Pointer<stdgo._internal.compress.flate.Flate_ReadError.ReadError>;
