package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function _lePutUint16(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt16):Void {
        var __blank__ = _b[(1 : stdgo.GoInt)];
        _b[(0 : stdgo.GoInt)] = (_v : stdgo.GoUInt8);
        _b[(1 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8);
    }
