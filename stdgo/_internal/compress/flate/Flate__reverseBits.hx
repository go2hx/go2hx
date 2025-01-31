package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _reverseBits(_number:stdgo.GoUInt16, _bitLength:stdgo.GoUInt8):stdgo.GoUInt16 {
        return stdgo._internal.math.bits.Bits_reverse16.reverse16((_number << (((16 : stdgo.GoUInt8) - _bitLength : stdgo.GoUInt8)) : stdgo.GoUInt16));
    }
