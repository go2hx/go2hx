package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function _leUint16(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 {
        var __blank__ = _b[(1 : stdgo.GoInt)];
        return ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt16) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt16);
    }
