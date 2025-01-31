package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _load32(_b:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoInt32):stdgo.GoUInt32 {
        _b = (_b.__slice__(_i, (_i + (4 : stdgo.GoInt32) : stdgo.GoInt32), (_b.length)) : stdgo.Slice<stdgo.GoUInt8>);
        return ((((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
