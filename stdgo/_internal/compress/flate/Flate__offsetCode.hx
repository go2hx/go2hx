package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _offsetCode(_off:stdgo.GoUInt32):stdgo.GoUInt32 {
        if ((_off < (stdgo._internal.compress.flate.Flate__offsetCodes._offsetCodes.length : stdgo.GoUInt32) : Bool)) {
            return stdgo._internal.compress.flate.Flate__offsetCodes._offsetCodes[(_off : stdgo.GoInt)];
        };
        if (((_off >> (7i64 : stdgo.GoUInt64) : stdgo.GoUInt32) < (stdgo._internal.compress.flate.Flate__offsetCodes._offsetCodes.length : stdgo.GoUInt32) : Bool)) {
            return (stdgo._internal.compress.flate.Flate__offsetCodes._offsetCodes[((_off >> (7i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] + (14u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        };
        return (stdgo._internal.compress.flate.Flate__offsetCodes._offsetCodes[((_off >> (14i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] + (28u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
