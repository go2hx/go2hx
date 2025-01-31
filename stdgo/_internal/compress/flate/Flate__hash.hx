package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _hash(_u:stdgo.GoUInt32):stdgo.GoUInt32 {
        return (((_u * (506832829u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (18i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
    }
