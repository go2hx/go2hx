package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _lengthCode(_len:stdgo.GoUInt32):stdgo.GoUInt32 {
        return stdgo._internal.compress.flate.Flate__lengthCodes._lengthCodes[(_len : stdgo.GoInt)];
    }
